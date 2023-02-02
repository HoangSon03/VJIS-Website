<%@ Page Language="C#" AutoEventWireup="true" CodeFile="web_GameGiaiCuuMickey.aspx.cs" Inherits="web_module_module_BaiTap_web_GameGiaiCuuMickey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Game Giải cứu Mickey</title>
    <link href="/css/web_GameGiaiCuu.css" rel="stylesheet" />
    <link href="/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/css/fontawesome.css" rel="stylesheet" />
    <link href="/css/fontawesome.min.css" rel="stylesheet" />
    <link href="/css/animate.css" rel="stylesheet" />
    <link href="/css/slick.css" rel="stylesheet" />
    <link href="/css/slick-theme.css" rel="stylesheet" />
    <link href="/css/owl.carousel.min.css" rel="stylesheet" />
    <link href="/css/owl.theme.default.min.css" rel="stylesheet" />
    <link href="/css/nanogallery2.min.css" rel="stylesheet" />
    <link href="/css/magnific-popup.css" rel="stylesheet" />
    <link href="/css/jquery.fancybox.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="/css/style.css" />
    <script src="/admin_js/sweetalert.min.js"></script>
    <!--font-->
    <link href="/css/fontsface.css" rel="stylesheet" />
    <!--wowjs-->
    <script src="/js/wow.js"></script>
    <script src="/js/wow.min.js"></script>
    <!--slide-->
    <script src="/js/jquery-3.4.1.min.js"></script>
    <script src="/js/owl.carousel.min.js"></script>
</head>
<body>
    <script>
        function checkNULL() {
            var CityName = document.getElementById('<%= txtKQ1.ClientID%>');

            if (CityName.value.trim() == "") {
                swal('Đáp án không được để trống!', '', 'warning').then(function () { CityName.focus(); });
                return false;
            }
            return true;
        }
        function nextquestion() {
            var audio = new Audio('../../Musics/next_question.mp3');
            audio.play();
        }
        function thanhcong() {
            var audio = new Audio('../../Musics/giaicuuthanhcong.mp3');
            audio.play();
        }
        function batdau() {
            var audio = new Audio('../../Musics/start_giaicuu.mp3');
            audio.play();
        }
    </script>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="scrBaitap" runat="server">
        </asp:ScriptManager>
        <div class="game_giaicuu" runat="server">
            <div class="header">
                <h3 class="tieude">TRÒ CHƠI GIẢI CỨU MICKEY</h3>
                <div class="logo">
                    <img src="../../images/logovn-2295.png" />
                </div>
            </div>
            <div class="container">
                <div class="batdau" id="batdau">
                    <a href="javascript:void(0)" class="btn btn-success" id="btnbatdau" runat="server" onserverclick="btnbatdau_ServerClick">BẮT ĐẦU</a>
                </div>
                <asp:UpdatePanel runat="server" ID="upGame">
                    <ContentTemplate>
                        <div class="contentt" id="dv_giaicuu" runat="server">
                            <div class="start" id="start">
                                <a class="math__start" id="btnStart" runat="server">
                                    <img class="gif" src="../../images/giaicuu/start.png" /></a>
                            </div>
                            <div class="noidung">
                                <%--câu 1--%>
                                <div class="Cauhoi1" id="ch1" runat="server">
                                    <a runat="server" id="question1" onserverclick="question1_ServerClick">
                                        <img class="img1" src="../../images/giaicuu/1_1.png" /></a>
                                </div>
                                <div class="line1" id="line1" runat="server">
                                    <img src="../../images/giaicuu/line1_2.png" />
                                </div>
                                <%--câu 2--%>
                                <div class="Cauhoi2" id="ch2" runat="server">
                                    <a runat="server" id="question2" onserverclick="question2_ServerClick">
                                        <img class="img1" src="../../images/giaicuu/2.png" /></a>
                                </div>
                                <div class="nextquestion1" id="next1" runat="server">
                                    <img src="../../images/giaicuu/next.png" />
                                </div>
                                <div class="line2" id="line2" runat="server">
                                    <img src="../../images/giaicuu/line2_3.png" />
                                </div>
                                <%--câu 3--%>
                                <div class="Cauhoi3" id="ch3" runat="server">
                                    <a runat="server" id="question3" onserverclick="question3_ServerClick">
                                        <img class="img1" src="../../images/giaicuu/3.png" /></a>
                                </div>
                                <div class="nextquestion2" id="next2" runat="server">
                                    <img src="../../images/giaicuu/next.png" />
                                </div>
                                <div class="line3" id="line3" runat="server">
                                    <img src="../../images/giaicuu/line3_4.png" />
                                </div>
                                <%--câu hỏi 4--%>
                                <div class="Cauhoi4" id="ch4" runat="server">
                                    <a runat="server" id="question4" onserverclick="question4_ServerClick">
                                        <img class="img1" src="../../images/giaicuu/4.png" /></a>
                                </div>
                                <div class="nextquestion3" id="next3" runat="server">
                                    <img src="../../images/giaicuu/next.png" />
                                </div>
                                <div class="line4" id="line4" runat="server">
                                    <img src="../../images/giaicuu/line4_5.png" />
                                </div>
                                <%--câu hỏi 5--%>
                                <div class="Cauhoi5" id="ch5" runat="server">
                                    <a runat="server" id="question5" onserverclick="question5_ServerClick">
                                        <img class="img1" src="../../images/giaicuu/5.png" /></a>
                                </div>
                                <div class="nextquestion4" id="next4" runat="server">
                                    <img src="../../images/giaicuu/next.png" />
                                </div>
                                <div class="line5" id="line5" runat="server">
                                    <img src="../../images/giaicuu/line_end.png" />
                                </div>
                                <%--kết thúc--%>
                                <div class="end" id="end" runat="server">
                                    <img class="img1" src="../../images/giaicuu/nha.png" />
                                </div>
                                <div class="happy" id="happy" runat="server">
                                    <img class="gif" src="../../images/giaicuu/finish.png" />
                                </div>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
                <%--popup câu hỏi--%>
                <dx:ASPxPopupControl ID="popupCauhoi" runat="server" Width="600px" Height="250px" CloseAction="CloseButton" ShowCollapseButton="True" ShowMaximizeButton="True" ScrollBars="Auto" CloseOnEscape="true" Modal="True"
                    PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" ClientInstanceName="popupCauhoi" ShowFooter="true"
                    HeaderText="Nội dung câu hỏi" AllowDragging="True" PopupAnimationType="Fade" EnableViewState="False" AutoUpdatePosition="true" ClientSideEvents-CloseUp="function(s,e){grvList.Refresh();}">
                    <ContentCollection>
                        <dx:PopupControlContentControl runat="server">
                            <asp:UpdatePanel ID="udPopup" runat="server">
                                <ContentTemplate>
                                    <div class="popup-main">
                                        <div class="div_content col-12">
                                            <div class="col-12 form-group">
                                                <label class=" form-control-label">Câu hỏi <%=STT%>:</label>
                                                <br />
                                                <div class="noidungcauhoi">
                                                    <asp:Label runat="server" ID="lbnoidungcauhoi" />
                                                </div>
                                            </div>
                                            <div class="col-12 form-group">
                                                <div class="cautraloi">
                                                    <label class=" form-control-label">Câu trả lời:</label>
                                                    <input class="math__input" id="txtKQ1" runat="server" type="text" name="name" value="" placeholder="" autocomplete="off" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </dx:PopupControlContentControl>
                    </ContentCollection>
                    <FooterContentTemplate>
                        <div class="mar_but button">
                            <asp:Button ID="btnTraloi" runat="server" ClientIDMode="Static" Text="Trả lời" CssClass="btn btn-primary" OnClientClick="return checkNULL()" OnClick="btnTraloi_Click" />
                        </div>
                    </FooterContentTemplate>
                    <ContentStyle>
                        <Paddings PaddingBottom="0px" />
                    </ContentStyle>
                </dx:ASPxPopupControl>
            </div>
        </div>
    </form>
</body>
</html>
