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
<%--    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900"--%>
<%--            rel="stylesheet"/>--%>
    <link rel="stylesheet" href="styles.css"/>
</head>

<body>
<!--    <script src="https://www.dukelearntoprogram.com/course1/common/js/image/SimpleImage.js"></script>-->

<h1>Pixelizator && Fun Filters</h1>

<div>
    <label class="headers">Load image</label>
    <input id="inputFile" class="buttons" type="file" multiple="false"
           accept="image/*" onchange="upload(this)">
    <input id="fileClear" class="buttons" type="button" value="clear">
</div>

<%--file info--%>
<div>
    <label class="headers">Change image</label>
    <input type="range" class="choice" id="pixRange" min="1" max="100" value="10">
    <label>Block size(px):</label>
    <label id="outNumber">x10</label>
    <input id="pixelize" class="buttons" type="button" value="pixelize">
</div>

<%--<div>--%>
<%--    <label for="rectangle">rectangle</label>--%>
<%--    <input type="radio" name="shape" id="rectangle" checked>--%>
<%--    <label for="Triangle">triangle</label>--%>
<%--    <input type="radio" name="shape" id="Triangle">--%>
<%--</div>--%>

<div>
    <label class="headers">Download image</label>
    <input class="download" type="button" value="png">
    <input class="download" type="button" value="jpg">
    <input class="download" type="button" value="webp">
    <input class="download" type="button" value="bmp">
    <input class="download" type="button" value="tiff">
</div>

<%--<div>Choose filter--%>
<%--    <input type="button" value="gray" onclick="filter_gray()">--%>
<%--    <input type="button" value="red" onclick="filter_red()">--%>
<%--    <input type="button" value="window" onclick="filter_window()">--%>
<%--    <input type="button" value="rainbow" onclick="filter_rainbow()">--%>
<%--    <input type="button" value="blur" onclick="filter_blur()">--%>
<%--</div>--%>

<br>

<div class="imgBox">
    <div class="images">
        <img id="inputImg" src="#" alt="input image">
    </div>
    <div class="images">
        <img id="resultImg" src="#" alt="result image">
    </div>
</div>

<div class="info">
    <p id="name"></p>
    <p id="format"></p>
    <p id="size"></p>
    <p id="resolution"></p>
</div>

<script src="readInput.js"></script>

</body>
</html>