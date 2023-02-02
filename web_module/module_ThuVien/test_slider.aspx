<%@ Page Language="C#" AutoEventWireup="true" CodeFile="test_slider.aspx.cs" Inherits="web_module_module_ThuVien_test_slider" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../css/slick-theme.css" rel="stylesheet" />
    <link href="../../css/slick.css" rel="stylesheet" />
    <script src="../../js/jquery-1.11.0.min.js"></script>
    <script src="../../js/slick.js"></script>
    <style>
        .test {
            width:97%
        }
    </style>

</head>
<body class="test">
    <%-- <form id="form1" runat="server">--%>
    <div class="multiple-items">
        <div>
            <img src="../../uploadimages/thuvien/04m34wwz.kar.jpg" style="width:200px; height:300px" />
        </div>
        <div>
            <img src="../../uploadimages/thuvien/030tven2.arw.jpg" style="width:200px; height:300px" />
        </div>
        <div>
            <img src="../../uploadimages/thuvien/0bjtjh22.w32.jpg" style="width:200px; height:300px" />
        </div>
        <div>
            <img src="../../uploadimages/thuvien/0cwx0m2k.hzm.jpg" style="width:200px; height:300px" />
        </div>
        <div>
            <img src="../../uploadimages/thuvien/0fcu3db4.j3h.jpg" style="width:200px; height:300px" />
        </div>
        <div>
           
        </div>
    </div>
    <%--  </form>--%>
    <script>
        $(".multiple-items").slick({
            infinite: true,
            slidesToShow: 5,
            slidesToScroll: 1
        });

    </script>
</body>
</html>
