<%@ Page Language="C#" AutoEventWireup="true" CodeFile="game_DoDoVat.aspx.cs" Inherits="game_DoDoVat" %>

<!DOCTYPE html>
<html>
<script>
    function myBatDau() {
        audiobatdau.play();
    }
    function myCauHoi1() {
        audiocau3.play();
    }
</script>
<body>
    <div>
        <a id="btnBatDau" onclick="myBatDau()" style="width: 300px; height: 50px; background-color: yellow; width: 300px; height: 50px; color: red; font-weight: bold; text-align: center; align-content: center">Bài số 1
        </a>
    </div>
    <div>
        <audio id="audiobatdau" src="video/cau1-2.mp3" />
    </div>
    <div>
        <a id="btnCauHoi" runat="server" onclick="myCauHoi1();" >
            <img src="image/cauhoi1.jpg" style="width: 200px; height: 200px;" id="btnCauHoi1" runat="server" />
        </a>
        <audio id="audiocau3" src="video/cau3.mp3">
        </audio>
    </div>
    <div>
        <img src="image/ghe.jpg" />
    </div>
    <div>
        <img src="image/butchi1.png" />
    </div>
    <div>
        <img src="image/hopbut2.jpg" />
    </div>
</body>
</html>

