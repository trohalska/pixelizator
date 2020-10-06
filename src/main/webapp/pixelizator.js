let img0 = null;
let img1 = null;
let img2 = null;
let img3 = null;
let img4 = null;
let img5 = null;
let img6 = null;

let canvas = document.getElementById("can");

function upload() {
    let fileInput = document.getElementById("finput");
    img0 = new SimpleImage(fileInput);
    img0.drawTo(canvas);
    img1 = new SimpleImage(fileInput);
    img2 = new SimpleImage(fileInput);
    img3 = new SimpleImage(fileInput);
    img4 = new SimpleImage(fileInput);
    img5 = new SimpleImage(fileInput);
    img6 = new SimpleImage(fileInput);
}
function filter_gray() {
    if (check(img0)) {
        makeGray(img2);
        img2.drawTo(canvas);
    }
}
function filter_red() {
    if (check(img0)) {
        makeRed(img3);
        img3.drawTo(canvas);
    }
}
function filter_window() {
    if (check(img0)) {
        makeWindow(img4);
        img4.drawTo(canvas);
    }
}
function filter_rainbow() {
    if (check(img0)) {
        makeRainbow(img5);
        img5.drawTo(canvas);
    }
}
function filter_blur() {
    if (check(img0)) {
        makeBlur(img6);
        img6.drawTo(canvas);
    }
}
function resetCanvas() {
    if (check(img0)) {
        img1.drawTo(canvas);
    }
}
function clearCanvas() {
    let context = canvas.getContext("2d");
    context.clearRect(0, 0, canvas.width, canvas.height);
    img0 = null;
    img1 = null;
    img2 = null;
    img3 = null;
    img4 = null;
    img5 = null;
    img6 = null;
}
function check(image) {
    if (image == null || !image.complete()) {
        alert("image not loaded");
        return false;
    }
    return true;
}
function makeGray(img) {
    for (let p of img.values()) {
        let avr = (p.getRed() + p.getBlue() + p.getGreen()) / 3;
        p.setRed(avr);
        p.setBlue(avr);
        p.setGreen(avr);
    }
}
function makeRed(img) {
    for (let p of img.values()) {
        p.setRed(255);
    }
}
function makeWindow(img) {
    let w = img.getWidth();
    let h = img.getHeight();
    for (let p of img.values()) {
        let x = p.getX();
        let y = p.getY();
        if (x <= 10 || x >= w - 10 || y <= 10 || y >= h - 10) {
            setBlack(p);
        }
        if (w >= h) {
            setWin(p, x, y, w, h);
        }
        if (w < h) {
            setWin(p, y, x, h, w);
        }
    }
}
function setBlack(p) {
    p.setRed(102);
    p.setGreen(51);
    p.setBlue(0);
    return p;
}
function setWin(p, x, y, w, h) {
    if (
        (x >= w / 4 - 3 && x <= w / 4 + 3) ||
        (x >= w / 2 - 3 && x <= w / 2 + 3) ||
        (x >= (3 * w) / 4 - 3 && x <= (3 * w) / 4 + 3) ||
        (y >= h / 2 - 3 && y <= h / 2 + 3)
    ) {
        setBlack(p);
    }
}
function makeBlur(img) {
    for (let p of img.values()) {
        let x = p.getX();
        let y = p.getY();
        let random = Math.random();
        if (random < 0.5) {
            img.setPixel(x, y, p);
        } else {
            chooseNearByPixel(x, y, img);
        }
    }
}
function chooseNearByPixel(x, y, img) {
    let w = img.getWidth();
    let h = img.getHeight();
    let tmp_x = x + Math.floor(5 * Math.random());
    let tmp_y = y + Math.floor(5 * Math.random());
    if (tmp_x >= w) {
        tmp_x = w - Math.floor(5 * Math.random()) - 1;
    }
    if (tmp_y >= h) {
        tmp_y = h - Math.floor(5 * Math.random()) - 1;
    }
    img.setPixel(x, y, img.getPixel(tmp_x, tmp_y));
}
function makeRainbow(img) {
    let h = img.getHeight();
    for (let p of img.values()) {
        let y = p.getY();
        let avr = (p.getRed() + p.getBlue() + p.getGreen()) / 3;
        if (avr >= 128) {
            setRainbowMax(p, y, h, avr);
        } else {
            setRainbowMin(p, y, h, avr);
        }
    }
}
function setRainbowMax(p, y, h, avr) {
    if (y <= h / 7) {
        p.setRed(255);
        p.setGreen(2 * avr - 255);
        p.setBlue(2 * avr - 255);
    } else if (y <= (2 * h) / 7) {
        p.setRed(255);
        p.setGreen(1.2 * avr - 51);
        p.setBlue(2 * avr - 255);
    } else if (y <= (3 * h) / 7) {
        p.setRed(255);
        p.setGreen(255);
        p.setBlue(2 * avr - 255);
    } else if (y <= (4 * h) / 7) {
        p.setRed(2 * avr - 255);
        p.setGreen(255);
        p.setBlue(2 * avr - 255);
    } else if (y <= (5 * h) / 7) {
        p.setRed(2 * avr - 255);
        p.setGreen(2 * avr - 255);
        p.setBlue(255);
    } else if (y <= (6 * h) / 7) {
        p.setRed(1.2 * avr - 51);
        p.setGreen(2 * avr - 255);
        p.setBlue(255);
    } else {
        p.setRed(0.4 * avr + 153);
        p.setGreen(2 * avr - 255);
        p.setBlue(0.4 * avr + 153);
    }
}
function setRainbowMin(p, y, h, avr) {
    if (y <= h / 7) {
        p.setRed(2 * avr);
        p.setGreen(0);
        p.setBlue(0);
    } else if (y <= (2 * h) / 7) {
        p.setRed(2 * avr);
        p.setGreen(0.8 * avr);
        p.setBlue(0);
    } else if (y <= (3 * h) / 7) {
        p.setRed(2 * avr);
        p.setGreen(2 * avr);
        p.setBlue(0);
    } else if (y <= (4 * h) / 7) {
        p.setRed(0);
        p.setGreen(2 * avr);
        p.setBlue(0);
    } else if (y <= (5 * h) / 7) {
        p.setRed(0);
        p.setGreen(0);
        p.setBlue(2 * avr);
    } else if (y <= (6 * h) / 7) {
        p.setRed(0.8 * avr);
        p.setGreen(0);
        p.setBlue(2 * avr);
    } else {
        p.setRed(1.6 * avr);
        p.setGreen(0);
        p.setBlue(1.6 * avr);
    }
}
