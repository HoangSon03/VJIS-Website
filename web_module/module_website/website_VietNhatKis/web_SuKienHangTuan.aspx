<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage_MamNon.master" AutoEventWireup="true" CodeFile="web_SuKienHangTuan.aspx.cs" Inherits="web_module_module_website_website_VietNhatKis_web_SuKienHangTuan" %>

<%@ Register Src="~/web_usercontrol/Web_ThongTinCaNhan.ascx" TagPrefix="uc1" TagName="Web_ThongTinCaNhan" %>
<%@ Register Src="~/web_usercontrol/Web_VietNhatKids.ascx" TagPrefix="uc1" TagName="Web_VietNhatKids" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>
    <link href="/assets/css/ribbon.css" rel="stylesheet" />
    <link href="/assets/css/base_formVietNhatKis.css" rel="stylesheet" />
    <style>
        .text {
            overflow: hidden;
            font-size: 11px;
            color: black;
            font-weight: 100;
            margin-top: 0;
            margin-bottom: 1rem;
            display: flex;
            margin: 0 5%;
            text-align: justify;
            flex-direction: column;
        }


        .container_left_top {
            background-color: #ffffff;
            align-items: center;
            display: flex;
            margin-bottom: 4%;
            border-radius: 10px;
                box-shadow: 1px 1px 10px rgb(128 128 128 / 60%);
            padding: 2%;
            flex-direction: row;
        }

        .container_left {
            width: 95%;
            margin-left: 2%;
            padding: 0;         
        }

        .main {
            overflow: auto;
            padding: 2%;
            padding-top: 66px;         
            overflow: auto;
            height: 32rem;
            background-color: #ffffff;
                border-radius: 10px;
        }
        .container_right {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 1%;
            overflow: auto;
            margin: 1% 0;
            margin-left: 0;
            display: flex;
               max-height: 32rem;
            flex-wrap: wrap;
            align-items: center;
            justify-content: center;
             text-align: justify;
             box-shadow: 2px 3px 8px 5px #80808029;
        }
       /* .row{
                flex-direction: row;
               justify-content: flex-end;
        }*/
        ul {
            list-style: none;
        }

        .image-gallery {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
        }

            .image-gallery > li {
                flex: 1 1 auto;
                height: 450px;
                cursor: pointer;
                position: relative;
            }

            /*.image-gallery::after {
                content: "";
                flex-grow: 999;
            }*/

            .image-gallery li img {
                object-fit: cover;
                width: 100%;
                height: 100%;
                vertical-align: middle;
                border-radius: 10px;
            }
            .ribbon-front {
   
    font-weight: bold;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-fluid row">
        <div class="col-3">
            <uc1:Web_ThongTinCaNhan runat="server" ID="Web_ThongTinCaNhan" />
        </div>
        <div class="col-9" style="padding: 0">
            <div class="col-12" style="padding: 0">
                <uc1:Web_VietNhatKids runat="server" ID="Web_VietNhatKids" />
            </div>
            <div class="col-12 row" style="padding: 0">
        <div class="col-5">
            <div class="ribbon" style="margin-bottom: -18.0%; margin-top: 5%;">
                <div class="ribbon-wrapper">
                    <div class="glow">&nbsp;</div>
                    <div class="ribbon-front">
                        Sự kiện trong tuần
                    </div>
                    <div class="ribbon-edge-topleft"></div>
                    <div class="ribbon-edge-topright"></div>
                    <div class="ribbon-edge-bottomleft"></div>
                    <div class="ribbon-edge-bottomright"></div>
                </div>
            </div>
            <div class="container_left" style="padding: 0;">

                <div class="main" style="box-shadow: 2px 3px 8px 5px #80808029; margin:3% 0">
                    <div class="container_left_top">
                        <div>
                            <img src="/images/blog-04-560x345.jpg" />
                        </div>
                        <div>
                       <h6>Bé học vẽ</h6>
                            <div class="text">
                               
                                <p>
                                    Hướng dẫn chi tiết từng bước để dạy bé vẽ con vật một cách đơn giản nhất kích thích sự sáng tạo của bé
                                <br />
                                    <a href="#">Xem chi tiết</a>
                                </p>


                            </div>
                        </div>
                    </div>

                    <div class="container_left_top" style="">
                        <div>
                            <img src="/images/blog-04-560x345.jpg" />
                        </div>
                        <div>
                            <h6>Bé học vẽ</h6>
                            <div class="text">
                                <p>
                                    Hướng dẫn chi tiết từng bước để dạy bé vẽ con vật một cách đơn giản nhất kích thích sự sáng tạo của bé
                                  <br />  <a href="#">Xem chi tiết</a>
                                </p>
                                
                            </div>
                        </div>
                    </div>
                    <div class="container_left_top">
                        <div>
                            <img src="/images/blog-04-560x345.jpg" />
                        </div>
                        <div>
                            <h6>Bé học vẽ</h6>
                            <div class="text">
                                <p>
                                    Hướng dẫn chi tiết từng bước để dạy bé vẽ con vật một cách đơn giản nhất kích thích sự sáng tạo của bé
                                <br /> <a href="#">Xem chi tiết</a>
                                    </p>
                              

                            </div>
                        </div>
                    </div>
                    <div class="container_left_top">
                        <div>
                            <img src="/images/blog-04-560x345.jpg" />
                        </div>
                        <div>
                            <h6>Bé học vẽ</h6>
                            <div class="text">
                                <p>
                                    Hướng dẫn chi tiết từng bước để dạy bé vẽ con vật một cách đơn giản nhất kích thích sự sáng tạo của bé
                                <br /><a href="#">Xem chi tiết</a>
                                </p>
                                

                            </div>
                        </div>
                    </div>             
            </div>
                </div>
        </div>
        <div class="container_right col-7">
           <div> <h3 style=" color: #bd3232;">Bé thi vẽ </h3></div>
            <div class="container_right_content">
                <div class="container_right_content_text">
                    <p>Mọi người đã chuẩn bị những dụng cụ gì cho việc học màu nước rồi nhỉ? Để giúp mọi người hình dung rõ hơn về các họa phẩm cần khi mới học màu</p>

                </div>
               <div>
                   <ul class="image-gallery">
                       <li>
                           <img src="/images/26-holiday_sports.jpg" /></li>
                       <li>
                           <img src="/images/9F6BACA2F74676055A948D141EA08637.jpg" />
                       </li>
                       <li>
                           <img src="/images/afterschool.jpg" /></li>
                       <li>
                           <img src="/images/asubuonmathuot-net-gia-su-mon-tieng-anh-cho-hoc-sinh-cap-24589_350x250.png" /></li>
                       <li>
                           <img src="/images/background-main-literature.jpg" /></li>
                       <li>
                           <img src="/images/asubuonmathuot-net-gia-su-mon-tieng-anh-cho-hoc-sinh-cap-24589_350x250.png" /></li>
                      

                </ul>
               </div>
            </div>
            
        </div>
                </div>
            </div>
    </div>
</asp:Content>



