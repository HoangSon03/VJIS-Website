<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_4Cap_Tc.ascx.cs" Inherits="web_usercontrol_Uc_TrangChu_Uc_4Cap_Tc" %>
<div class="section-boncap wow fadeInDown" data-wow-delay="0.3s">
    <script>
        function myMamNon() {
            //location.href = 'http://quantrimamnon.vietnhatschool.edu.vn/';
            var isMobile = window.orientation > -1;
            //console.log(isMobile)
            //alert(isMobile ? 'Mobile' : 'Not mobile');
            if (isMobile == true) {
                location.href = 'http://quantrimamnon.vietnhatschool.edu.vn/';
            }
            else {
                location.href = 'http://quantrimamnontest.vietnhatschool.edu.vn/website-vietnhatkids-thong-bao';
            }
        }
    </script>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6 col-6 daidien">
                <div class="boncap-box col-12">
                    <div class="boncap-content">
                        <a href="javascript:void(0)" onclick="myMamNon()" class="col-lg-7">Mầm Non</a>
                        <img class="fab fa-envira logo__rank col-5" src="../../image/logo.png">
                        <%--<a href="../Bac-Dao-Tao/Bac-mam-non-8" class="col-7">Mầm Non</a>--%>
                    </div>
                    <img src="../../images/mamnon.jpg" alt="Alternate Text" />
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-6 daidien">
                <div class="boncap-box col-12">
                    <div class="boncap-content">
                        <a href="../../Bac-Dao-Tao/Bac-tieu-hoc-9" class="col-7">Tiểu Học</a>
                        <img class="fab fa-envira logo__rank col-5" src="../../image/logo.png">
                        <a href="../../Bac-Dao-Tao/Bac-tieu-hoc-9" class="col-7">Tiểu Học</a>
                    </div>
                    <img src="../../images/tieuhoc.jpg" alt="Alternate Text" />

                </div>

            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-6 daidien">
                <div class="boncap-box col-12">
                    <div class="boncap-content">
                        <a href="../../Bac-Dao-Tao/Bac-trung-hoc-10" class="col-7">Trung Học Cơ Sở</a>
                        <img class="fab fa-envira logo__rank col-5" src="../../image/logo.png">
                        <a href="../../Bac-Dao-Tao/Bac-trung-hoc-10" class="col-7">Trung Học Cơ Sở</a>
                    </div>
                    <img src="../../images/trunghoc.jpg" alt="Alternate Text" />
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-6 daidien">
                <div class="boncap-box col-12">
                    <div class="boncap-content">
                        <a href="../../Bac-Dao-Tao/Bac-pho-thong-11" class="col-lg-7 col-md-7 col-sm-7 col-7">Trung Học Phổ Thông</a>
                        <img class="fab fa-envira logo__rank col-lg-5 col-md-5 col-sm-5 col-5" src="../../image/logo.png">
                        <a href="../../Bac-Dao-Tao/Bac-pho-thong-11" class="col-lg-7 col-md-7 col-sm-7 col-7">Trung Học Phổ Thông</a>
                    </div>
                    <img src="../../images/phothong.jpg" alt="Alternate Text" />
                </div>
            </div>
        </div>
    </div>
</div>

