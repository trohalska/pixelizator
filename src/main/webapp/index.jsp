<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="description" content="Pixelizator">
    <meta name="keywords" content="HTML, CSS, JavaScript, java, ucode, unitfactory, cbl, cblworld,
                                    pixelize, pixelizer, pixelizator">
    <meta name="author" content="Tetiana Rohalska">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Pixelizator</title>
    <link
            href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900"
            rel="stylesheet"/>
    <link rel="stylesheet" href="styles.css"/>
</head>

<body>
<!--    <script src="https://www.dukelearntoprogram.com/course1/common/js/image/SimpleImage.js"></script>-->

<h1>Pixelizator && Fun Filters</h1>

<div>Load image
    <input class="load" type="file" multiple="false" accept="image/*" id="finput" onchange="upload()"></div>

<div>Choose filter
    <input type="button" value="gray" onclick="filter_gray()">
    <input type="button" value="red" onclick="filter_red()">
    <input type="button" value="window" onclick="filter_window()">
    <input type="button" value="rainbow" onclick="filter_rainbow()">
    <input type="button" value="blur" onclick="filter_blur()">
</div>

<div>Reset or clear
    <input type="button" value="Reset" onclick="resetCanvas()">
    <input type="button" value="clear" onclick="clearCanvas()">
</div>

<br>

<canvas id="can">
</canvas>
<script src="SimpleImage.js"></script>
<script src="pixelizator.js"></script>

</body>

</html>