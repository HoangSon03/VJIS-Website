<%@ Page Title="" Language="C#" MasterPageFile="~/Wensite_MasterPage2.master" AutoEventWireup="true" CodeFile="web_ThucDon.aspx.cs" Inherits="web_module_module_website_web_ThucDon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../../assets/css/tuanvo_style.css" rel="stylesheet" />
    <link href="../../assets/css/thucdon/thucdon.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="container-1">
        <div class="container-box">
            <span style="display: flex; margin-top: 3%; font-weight: 700; font-size: 46PX; color: #c32c2c; justify-content: center;">THỰC ĐƠN HÀNG TUẦN</span>
            <div class="title_note">
                <span>Mỗi bữa ăn dinh dưỡng có thể giúp trẻ phát triển thể chất tốt hơn và tràn đầy năng lượng tích cực để tham gia các hoạt động ở trường. Hiểu được điều đó, các chuyên gia dinh dưỡng ở Việt Nhật luôn thay đổi thực đơn để mang đến cho học sinh bữa ăn ngon miệng và đảm bảo sức khỏe.</span>
            </div>
            <div class="ribon">
                <span id="hislider_txtTuan">TUẦN 1</span>
                <span id="hislider_txtNgay" style="text-align: center; font-size: 16px;">30/05 - 03/06</span>
            </div>
            <div id="hislider_div_KetQua" class="card card-block">
                <div class="title_menu">BẢNG THỰC ĐƠN KHỐI TH, THCS &amp; THPT</div>
                <table border="1">
                    <tbody>
                        <tr style="background: beige;">
                            <th></th>
                            <th>ĂN SÁNG</th>
                            <th>BỮA TRƯA</th>
                            <th>ĂN XẾ</th>
                        </tr>

                        <tr class="thucdonthu color-01">
                            <th class="thu">Thứ 2</th>

                            <th>
                                <div>Cháo thịt phomai</div>
                            </th>

                            <th>
                                <div>
                                    - Cốt lết rim<br>
                                    - Canh tôm ra thập cẩm<br>
                                    - Nấm xào thịt bò
                                </div>
                            </th>

                            <th>
                                <div>
                                    - Tao mỹ<br>
                                    - Sữa tươi CGHL
                                </div>
                            </th>

                        </tr>

                        <tr class="thucdonthu color-02">
                            <th class="thu">Thứ 3</th>

                            <th>
                                <div>Phở bò sốt vang</div>
                            </th>

                            <th>
                                <div>
                                    - Gà rán<br>
                                    - Canh mướp hương<br>
                                    - Đậu cove xào nạc
                                </div>
                            </th>

                            <th>
                                <div>
                                    - Thanh Long<br>
                                    - Sữa hạnh nhân
                                </div>
                            </th>

                        </tr>

                        <tr class="thucdonthu color-03">
                            <th class="thu">Thứ 4</th>

                            <th>
                                <div>Cari gà + bánh mì</div>
                            </th>

                            <th>
                                <div>
                                    - Tôm thịt ram mặn ngọt<br>
                                    - Canh khoai mỡ<br>
                                    - Cải ngọt xào tôm
                                </div>
                            </th>

                            <th>
                                <div>
                                    - Nước ép chanh leo<br>
                                    - Chuối
                                </div>
                            </th>

                        </tr>

                        <tr class="thucdonthu color-04">
                            <th class="thu">Thứ 5</th>

                            <th>
                                <div>Soup nui thịt trứng + chíu quẩy</div>
                            </th>

                            <th>
                                <div>Mì quảng bò giò viên</div>
                            </th>

                            <th>
                                <div>- Hamburger</div>
                            </th>

                        </tr>

                        <tr class="thucdonthu color-05">
                            <th class="thu">Thứ 6</th>

                            <th>
                                <div>Bánh canh tôm cua</div>
                            </th>

                            <th>
                                <div>
                                    - Trứng gà sốt phomai
                                    <br>
                                    - Thịt xá xíu<br>
                                    - Canh xương hầm củ quả<br>
                                    - Cải thảo xốc tôm
                                </div>
                            </th>

                            <th>
                                <div>
                                    - Bánh gạo nhật<br>
                                    - Sữa chua VN
                                </div>
                            </th>

                        </tr>

                    </tbody>
                </table>
            </div>
            <span class="note">*Thực đơn có thể thay đổi theo mùa vụ, thời tiết và hoàn cảnh!</span>
        </div>
    </div>
</asp:Content>

