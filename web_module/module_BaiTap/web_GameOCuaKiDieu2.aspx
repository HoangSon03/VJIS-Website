<%@ Page Language="C#" AutoEventWireup="true" CodeFile="web_GameOCuaKiDieu2.aspx.cs" Inherits="web_module_web_GameOCuaKiDieu2" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Game Ô Cửa Kì Diệu</title>
    <link rel="stylesheet" href="/css/GameVietNhat2.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
        crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
        crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Abril+Fatface&display=swap" rel="stylesheet">
    <script language="javascript">
        var s = 10; // Giây
        var ss = 10;
        var sss = 10;
        var ssss = 10;
        var timeout = null; // Timeout
        function start() {
            if (s === null) {
                s = parseInt(document.getElementById('s_val').value);
            }
            if (s == -1) {
                clearTimeout(timeout);
                var audio = document.getElementById("audiotimesdemnguoc");
                audio.pause();
                document.getElementById("answerandtime1").style.display = "none";
                document.getElementById("boxx1").style.display = "none";
                
                // window.location.href ="main.html";
                return false;
            }
            document.getElementById('s').innerText = s.toString();
            timeout = setTimeout(function () {
                var audio = document.getElementById("audiotimesdemnguoc");
                audio.play();
                s--;
                start();
            }, 1000);
        }
        // Ô 2
        function start2() {
            if (ss === null) {
                ss = parseInt(document.getElementById('s_val').value);
            }
            if (ss == -1) {
                clearTimeout(timeout);
                var audio = document.getElementById("audiotimesdemnguoc2");
                audio.pause();
                document.getElementById("answerandtime2").style.display = "none";
                document.getElementById("boxx2").style.display = "none";
                // window.location.href ="main.html";
                return false;
            }
            document.getElementById('ss').innerText = ss.toString();
            timeout = setTimeout(function () {
                var audio = document.getElementById("audiotimesdemnguoc2");
                audio.play();
                ss--;
                start2();
            }, 1000);
        }
        // ENd Ô 2
        // Ô 3
        function start3() {
            if (sss == -1) {
                clearTimeout(timeout);
                var audio = document.getElementById("audiotimesdemnguoc3");
                audio.pause();
                document.getElementById("answerandtime3").style.display = "none";
                document.getElementById("boxx3").style.display = "none";
                // window.location.href ="main.html";
                return false;
            }
            document.getElementById('sss').innerText = sss.toString();
            timeout = setTimeout(function () {
                var audio = document.getElementById("audiotimesdemnguoc3");
                audio.play();
                sss--;
                start3();
            }, 1000);
        }
        // ENd Ô 3
        // Ô 4
        function start4() {
            if (ssss == -1) {
                clearTimeout(timeout);
                var audio = document.getElementById("audiotimesdemnguoc4");
                audio.pause();
                document.getElementById("answerandtime4").style.display = "none";
                document.getElementById("boxx4").style.display = "none";
                // window.location.href ="main.html";
                return false;
            }
            document.getElementById('ssss').innerText = ssss.toString();
            timeout = setTimeout(function () {
                var audio = document.getElementById("audiotimesdemnguoc4");
                audio.play();
                ssss--;
                start4();
            }, 1000);
        }
        // ENd Ô 4
        function stop() {
            clearTimeout(timeout);
        }
    </script>
</head>
<body>
    <div class="container-fluid">
        <div class="logo">
            <img src="../../imgsGameVietNhat/logo.png" />
        </div>
        <h1 class="title">Trò chơi: <b>Ô Cửa Kì Diệu? </b></h1>
        <div class="khung">
            <div class="box1">
                <p>11 + 7 - 8 = 10</p>
            </div>
            <a id="boxx11" href="#" onclick="getAnswer1()" class="box1 btn btn-success">1</a>
            <a id="boxx1" href="#" onclick="getQuestion1();start()" class="box1 btn btn-success">1</a>
            <!-- Ô 2 -->
            <div class="box2">
                <p>13 + 5 - 7 = 11</p>
            </div>
            <a id="boxx22" href="#" onclick="getAnswer2()" class="box2 btn btn-warning">2</a>
            <a id="boxx2" href="#" onclick="getQuestion2();start2()" class="box2 btn btn-warning">2</a>
            <!-- End ô 2 -->
            <!-- Ô 3 -->
            <div class="box3">
                <p>13 - 3 + 7 = 17</p>
            </div>
            <a id="boxx33" href="#" onclick="getAnswer3()" class="box3 btn btn-danger">3</a>
            <a id="boxx3" href="#" onclick="getQuestion3();start3()" class="box3 btn btn-danger">3</a>
            <!-- End ô 3 -->
            <!-- Ô 4 -->
            <div class="box4">
                <p>12 + 4 - 5 = 11</p>
            </div>
            <a id="boxx44" href="#" onclick="getAnswer4()" class="box4 btn btn-primary">4</a>
            <a id="boxx4" href="#" onclick="getQuestion4();start4()" class="box4 btn btn-primary">4</a>
            <!-- End ô 4 -->
        </div>
        <!-- Ô 1 -->
        <div id="answerandtime1" style="display: none;">
            <div class="question">
                <p>11 + 7 - 8 = ?</p>
            </div>
            <div class="timesplace">
                <div class="times">
                    <span id="s">Hết giờ</span>
                </div>
            </div>
        </div>
        <!-- End Ô 1 -->
        <!-- Ô 2 -->
        <div id="answerandtime2" style="display: none;">
            <div class="question">
                <p>13 + 5 - 7 = ?</p>
            </div>
            <div class="timesplace">
                <div class="times">
                    <span id="ss">0</span>
                </div>
            </div>
        </div>
        <!-- End Ô 2 -->
        <!-- Ô 3 -->
        <div id="answerandtime3" style="display: none;">
            <div class="question">
                <p>13 - 3 + 7 = ?</p>
            </div>
            <div class="timesplace">
                <div class="times">
                    <span id="sss">0</span>
                </div>
            </div>
        </div>
        <!-- End Ô 3 -->
        <!-- Ô 4 -->
        <div id="answerandtime4" style="display: none;">
            <div class="question">
                <p>12 + 4 - 5 = ?</p>
            </div>
            <div class="timesplace">
                <div class="times">
                    <span id="ssss">0</span>
                </div>
            </div>
        </div>
        <!-- End Ô 4 -->
        <audio id="audiotimesdemnguoc" style="display:none" src="../../musicsVietNhat/donghodemnguoc.mp3" controls="controls" />
        <audio id="audiotimesdemnguoc2" style="display:none" src="../../musicsVietNhat/donghodemnguoc.mp3" controls="controls" />
        <audio id="audiotimesdemnguoc3" style="display:none" src="../../musicsVietNhat/donghodemnguoc.mp3" controls="controls" />
        <audio id="audiotimesdemnguoc4" style="display:none" src="../../musicsVietNhat/donghodemnguoc.mp3" controls="controls" />
    </div>
    <script language="javascript">
        // Ô 1
        function getQuestion1() {
            document.getElementById("answerandtime1").style.display = "block";
        }
        function getAnswer1() {
            document.getElementById("boxx11").style.display = "none";
            var audio = new Audio('../../musicsVietNhat/tick.mp3');
            audio.play();
        }
        // End Ô 1
        // Ô 2
        function getAnswer2() {
            document.getElementById("boxx22").style.display = "none";
            var audio = new Audio('../../musicsVietNhat/tick.mp3');
            audio.play();
        }
        function getQuestion2() {
            document.getElementById("answerandtime2").style.display = "block";
        }
        // End Ô 2
        // Ô 3
        function getAnswer3() {
            document.getElementById("boxx33").style.display = "none";
            var audio = new Audio('../../musicsVietNhat/tick.mp3');
            audio.play();
        }
        function getQuestion3() {
            document.getElementById("answerandtime3").style.display = "block";
        }
        // End Ô 3
        // Ô 4
        function getAnswer4() {
            document.getElementById("boxx44").style.display = "none";
            var audio = new Audio('../../musicsVietNhat/tick.mp3');
            audio.play();
        }
        function getQuestion4() {
            document.getElementById("answerandtime4").style.display = "block";
        }
        // End Ô 4
    </script>
</body>
</html>
