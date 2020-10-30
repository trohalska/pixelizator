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

<div class="headers">Load image
    <input class="load" type="file" multiple="false"
           accept="image/*" id="fileInput" onchange="upload(this)">
    <input type="button" value="clear" onclick="clear()">
</div>


<%--file info--%>
<div class="info">
    <p id="name"></p>
    <p id="format"></p>
    <p id="size"></p>
</div>

<%--<div>--%>
<%--    <label for="rectangle">rectangle</label>--%>
<%--    <input type="radio" name="shape" id="rectangle" checked>--%>
<%--    <label for="Triangle">triangle</label>--%>
<%--    <input type="radio" name="shape" id="Triangle">--%>
<%--</div>--%>

<%--<div id="downloads">--%>
<%--    <p>Download</p>--%>
<%--    <button id="download1">png</button>--%>
<%--    <button id="download2">jpeg</button>--%>
<%--    <button id="download3">webp</button>--%>
<%--</div>--%>

<%--<div>Choose filter--%>
<%--    <input type="button" value="gray" onclick="filter_gray()">--%>
<%--    <input type="button" value="red" onclick="filter_red()">--%>
<%--    <input type="button" value="window" onclick="filter_window()">--%>
<%--    <input type="button" value="rainbow" onclick="filter_rainbow()">--%>
<%--    <input type="button" value="blur" onclick="filter_blur()">--%>
<%--</div>--%>

<%--<br>--%>

<div class="imgBox">
    <img class="images" id="inputImg" src="#" alt="input image">
    <img class="images" id="resultImg" src="#" alt="result image">
</div>
<script src="readInput.js"></script>

</body>

</html>