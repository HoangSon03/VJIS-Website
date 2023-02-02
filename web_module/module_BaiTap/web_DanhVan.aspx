<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_DanhVan.aspx.cs" Inherits="web_module_web_danhvan_web_DanhVan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headlink" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="hihead" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="himenu" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="higlobal" runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="hislider" runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="hibelowtop" runat="Server">
</asp:Content>
<asp:Content ID="Content7" ContentPlaceHolderID="hibodyhead" runat="Server">
</asp:Content>
<asp:Content ID="Content8" ContentPlaceHolderID="hibodywrapper" runat="Server">
    <style>
        .game_danhvan {
            position: relative;
        }

            .game_danhvan .Cauhoi {
                position: absolute;
            }
.game_danhvan .danhvan{
    width:80%;
    margin:0 auto;
}
    </style>
    <script> 
        function caibapmp3() {
            var audio = new Audio('../../Musics/cb.mp3');
            audio.play();
        }
        function camapmp3() {
            var audio = new Audio('../../Musics/camap.mp3');
            audio.play();
        }
        function gapgomp3() {
            var audio = new Audio('../../Musics/gapgo.mp3');
            audio.play();
        }
        function bapbenhmp3() {
            var audio = new Audio('../../Musics/bapbenh.mp3');
            audio.play();
        }
        function ngannapmp3() {
            var audio = new Audio('../../Musics/ngannap.mp3');
            audio.play();
        }
        function tapmuamp3() {
            var audio = new Audio('../../Musics/tapmua.mp3');
            audio.play();
        }
        function apmp3() {
            var audio = new Audio('../../Musics/ap.mp3');
            audio.play();
        }
        function aapmp3() {
            var audio = new Audio('../../Musics/aap.mp3');
            audio.play();
        }
        function caibapimg() {
            var caibap = document.getElementById("avatar_caibap");
            var animation = caibap.animate([
                { transform: 'rotate(-160deg)' },
                { transform: 'scale(0.8)' },
                { transform: 'translate(0px, 0px)' }

            ], 1500);
            animation.addEventListener('finish', function () {
                caibap.style.display = 'none';
            });
        }
        function camapimg() {
            var camap = document.getElementById("avatar_camap");
            var animation = camap.animate([
                { transform: 'rotate(-160deg)' },
                { transform: 'scale(0.8)' },
                { transform: 'translate(0px, 0px)' }

            ], 1500);
            animation.addEventListener('finish', function () {
                camap.style.display = 'none';
            });
        }
        function gapgoimg() {
            var gapgo = document.getElementById("avatar_gapgo");
            var animation = gapgo.animate([
                { transform: 'rotate(-160deg)' },
                { transform: 'scale(0.8)' },
                { transform: 'translate(0px, 0px)' }

            ], 1500);
            animation.addEventListener('finish', function () {
                gapgo.style.display = 'none';
            });
        }
        function bapbenhimg() {
            var bapbenh = document.getElementById("avatar_bapbenh");
            var animation = bapbenh.animate([
                { transform: 'rotate(-160deg)' },
                { transform: 'scale(0.8)' },
                { transform: 'translate(0px, 0px)' }

            ], 1500);
            animation.addEventListener('finish', function () {
                bapbenh.style.display = 'none';
            });
        }
        function ngannapimg() {
            var ngannap = document.getElementById("avatar_ngannap");
            var animation = ngannap.animate([
                { transform: 'rotate(-160deg)' },
                { transform: 'scale(0.8)' },
                { transform: 'translate(0px, 0px)' }

            ], 1500);
            animation.addEventListener('finish', function () {
                ngannap.style.display = 'none';
            });
        }
        function tapmuaimg() {
            var tapmua = document.getElementById("avatar_tapmua");
            var animation = tapmua.animate([
                { transform: 'rotate(-160deg)' },
                { transform: 'scale(0.8)' },
                { transform: 'translate(0px, 0px)' }

            ], 1500);
            animation.addEventListener('finish', function () {
                tapmua.style.display = 'none';
            });
        }
        function apimg() {
            var ap = document.getElementById("avatar_ap");
            var animation = ap.animate([
                { transform: 'rotate(-160deg)' },
                { transform: 'scale(0.8)' },
                { transform: 'translate(0px, 0px)' }

            ], 1500);
            animation.addEventListener('finish', function () {
                ap.style.display = 'none';
            });
        }
        function aapimg() {
            var aap = document.getElementById("avatar_aap");
            var animation = aap.animate([
                { transform: 'rotate(-160deg)' },
                { transform: 'scale(0.8)' },
                { transform: 'translate(0px, 0px)' }

            ], 1500);
            animation.addEventListener('finish', function () {
                aap.style.display = 'none';
            });
        }
    </script>
    <div class="wrap-product">
        <div class="container">
                <div class="game_danhvan">
                    <h3 class="mb-4 text-center text-info">Bé hãy ấn vào các hình và tập đọc theo nhé</h3>
                    <div class="row mb-3 danhvan">
                        <div class="col-12 col-md-6 mb-3">
                            <div class="row">
                                <div class="Cauhoi" id="avatar_caibap">
                                    <img class="img_caibap" src="../../images/danhvan/1.jpg" onclick="caibapimg()" />
                                </div>
                                <div class="Cauhoi1">
                                    <img class="img_caibap" src="../../images/danhvan/9.jpg" onclick="caibapmp3()" />
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 mb-3">
                            <div class="row">
                                <div class="Cauhoi" id="avatar_camap">
                                    <img class="img_camap" src="../../images/danhvan/16.jpg" onclick="camapimg()" />
                                </div>
                                <div class="Cauhoi1">
                                    <img class="img_camap" src="../../images/danhvan/2.jpg" onclick="camapmp3()" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3 danhvan">
                        <div class="col-12 col-md-6 mb-3">
                            <div class="row">
                                <div class="Cauhoi" id="avatar_gapgo">
                                    <img class="img_caibap" src="../../images/danhvan/11.jpg" onclick="gapgoimg()" />
                                </div>
                                <div class="Cauhoi1">
                                    <img class="img_caibap" src="../../images/danhvan/7.jpg" onclick="gapgomp3()" />
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 mb-3">
                            <div class="row">
                                <div class="Cauhoi" id="avatar_bapbenh">
                                    <img class="img_caibap" src="../../images/danhvan/15.jpg" onclick="bapbenhimg()" />
                                </div>
                                <div class="Cauhoi1">
                                    <img class="img_camap" src="../../images/danhvan/3.jpg" onclick="bapbenhmp3()" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row mb-3 danhvan">
                        <div class="col-12 col-md-6 mb-3">
                            <div class="row">
                                <div class="Cauhoi" id="avatar_ngannap">
                                    <img class="img_caibap" src="../../images/danhvan/14.jpg" onclick="ngannapimg()" />
                                </div>
                                <div class="Cauhoi1">
                                    <img class="img_caibap" src="../../images/danhvan/4.jpg" onclick="ngannapmp3()" />
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 mb-3">
                            <div class="row">
                                <div class="Cauhoi" id="avatar_tapmua">
                                    <img class="img_camap" src="../../images/danhvan/10.jpg" onclick="tapmuaimg()" />
                                </div>
                                <div class="Cauhoi1">
                                    <img class="img_camap" src="../../images/danhvan/8.jpg" onclick="tapmuamp3()" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row danhvan">
                        <div class="col-12 col-md-6 mb-3">
                            <div class="row">
                                <div class="Cauhoi" id="avatar_ap">
                                    <img class="img_caibap" src="../../images/danhvan/12.jpg" onclick="apimg()" />
                                </div>
                                <div class="Cauhoi1">
                                    <img class="img_caibap" src="../../images/danhvan/6.jpg" onclick="apmp3()" />
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-md-6 mb-3">
                            <div class="row">
                                <div class="Cauhoi" id="avatar_aap">
                                    <img class="img_camap" src="../../images/danhvan/13.jpg" onclick="aapimg()" />
                                </div>
                                <div class="Cauhoi1">
                                    <img class="img_camap" src="../../images/danhvan/5.jpg" onclick="aapmp3()" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <%--  <asp:Repeater ID="rpCauHoi" runat="server" OnItemDataBound="rpCauHoi_ItemDataBound">
                    <ItemTemplate>
                        <div class="multiple-content">
                            <div class="multiple-content__box">
                                <h5 class="question__heading">Question <%= stt++%>
                                </h5>
                                <span class="question__title"><%#Eval("question_content") %>  </span>
                                <div class="answer">
                                    <asp:Repeater ID="rpCauTraLoi" runat="server">
                                        <ItemTemplate>
                                            <asp:UpdatePanel ID="abc" runat="server">
                                                <ContentTemplate>
                                                    <div class="answer__line">
                                                        <div class="answer__check">
                                                            <div class="radio" id="<%#Eval("color1") %>">
                                                                <label>
                                                                    <asp:RadioButton ID="answer_id1" runat="server" GroupName="questionId" /><b>A :</b>
                                                                    <asp:Label ID="lbltrl1" runat="server" Text='<%#Eval("trl1") %>'></asp:Label></label>
                                                                <asp:Label Style="display: none" ID="lblid1" Text='<%#Eval("id1") %>' runat="server" />
                                                            </div>
                                                        </div>
                                                        <div class="answer__check">
                                                            <div class="radio" id="<%#Eval("color2") %>">
                                                                <label>
                                                                    <asp:RadioButton ID="answer_id2" runat="server" GroupName="questionId" />
                                                                    <b>B :</b>
                                                                    <asp:Label ID="lbltrl2" ClientIDMode="Static" runat="server" Text='<%#Eval("trl2") %>'></asp:Label></label>
                                                                <asp:Label Style="display: none" ID="lblid2" Text='<%#Eval("id2") %>' runat="server" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="answer__line">
                                                        <div class="answer__check">
                                                            <div class="<%#Eval("hiddentrl3") %> radio" id="<%#Eval("color3") %>">
                                                                <label>
                                                                    <asp:RadioButton ID="answer_id3" runat="server" GroupName="questionId" /><b>C :</b>
                                                                    <asp:Label ID="lbltrl3" runat="server" Text='<%#Eval("trl3") %>'></asp:Label></label>
                                                                <asp:Label Style="display: none" ID="lblid3" Text='<%#Eval("id3") %>' runat="server" />
                                                            </div>
                                                        </div>
                                                        <div class="answer__check">
                                                            <div class="<%#Eval("hiddentrl4") %> radio" id="<%#Eval("color4") %>">
                                                                <label>
                                                                    <asp:RadioButton ID="answer_id4" runat="server" GroupName="questionId" /><b>D :</b>
                                                                    <asp:Label ID="lbltrl4" runat="server" Text='<%#Eval("trl4") %>'></asp:Label></label>
                                                                <asp:Label Style="display: none" ID="lblid4" Text='<%#Eval("id4") %>' runat="server" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </ContentTemplate>
                                            </asp:UpdatePanel>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
                <div class="multiple-footer">
                    <h4 class="multiple-footer__title">Chúc các bạn làm bài tốt nhé ! </h4>
                    <a class="btn btn-primary btn--modify" href="#" runat="server" id="btnKetQua" onserverclick="btnKQ_Click">Finish</a>
                    <asp:Label ID="lblDung" runat="server" CssClass="" Font-Size="Larger" Font-Bold="true" />
                </div>--%>
            </div>
    </div>

</asp:Content>
<asp:Content ID="Content9" ContentPlaceHolderID="hibodybottom" runat="Server">
</asp:Content>
<asp:Content ID="Content10" ContentPlaceHolderID="hibelowbottom" runat="Server">
</asp:Content>
<asp:Content ID="Content11" ContentPlaceHolderID="hifooter" runat="Server">
</asp:Content>
<asp:Content ID="Content12" ContentPlaceHolderID="hifootersite" runat="Server">
</asp:Content>

