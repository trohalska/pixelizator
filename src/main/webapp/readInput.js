let name = document.getElementById("name");
let size = document.getElementById("size");
let format = document.getElementById("format");
let inputImg = document.getElementById("inputImg");
let resultImg = document.getElementById("resultImg");

function upload(input) {
    clear();
    let img = input.files[0];

    if (input.files && img) {

        let reader = new FileReader();
        reader.onloadend = function (e) {
            let image = document.getElementById("inputImg");
            image.src = reader.result;
            image.style.display = 'block'
        };
        reader.readAsDataURL(img);

        name.textContent = `name: ${img.name}`;
        format.textContent = `format: ${img.type}`
        size.textContent = `size: ${(img.size / 1000 / 1000).toString()
            .slice(0, (img.size / 1000 / 1000).toString().indexOf('.') + 3)}MB`;
    }
}

function clear() {
    console.log("clear");
    name.textContent = '';
    size.textContent = '';
    format.textContent = '';
    inputImg.src = '#';
    inputImg.style.display = 'none';
    resultImg.src = '#';
    resultImg.style.display = 'none';

}

