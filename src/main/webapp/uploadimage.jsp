<%--
  Created by IntelliJ IDEA.
  User: trohalska
  Date: 10/7/20
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head><title>Image Upload</title></head>

<body>
<form action="/example/UploadImage" method="post" enctype="multipart/form-data" name="productForm" id="productForm"><br><br>
    <table width="400px" align="center" border=0 style="background-color: #ffeeff;">
        <tr>
            <td align="center" colspan=2 style="font-weight:bold;font-size:20pt;">Image Details</td>
        </tr>

        <tr>
            <td align="center" colspan=2>&nbsp;</td>
        </tr>

        <tr>
            <td>Image Link: </td>
            <td>
                <input type="file" name="file" id="file">
            <td>
        </tr>

        <tr>
            <td></td>
            <td><input type="submit" name="Submit" value="Submit"></td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
        </tr>

    </table>
</form>
</body>

</html>