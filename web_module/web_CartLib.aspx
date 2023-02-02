<%@ Page Title="" Language="C#" MasterPageFile="~/WebSiteMasterPage.master" AutoEventWireup="true" CodeFile="web_CartLib.aspx.cs" Inherits="web_module_web_CartLib" %>

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
    <div class="container bookking">
        <div class="content-giohang">
            <div class="title-giohang">
                <h3>Giỏ Hàng</h3>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="">Ngày bắt đầu:</label>
                        <input type="text">
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="">Ngày kết thúc: </label>
                        <input type="text">
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="form-group">
                        <label for="">Nội dung: </label>
                        <input type="text">
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <table class="table table-bordered table-hover">
                <thead>
                    <tr>
                        <th scope="col">Stt</th>
                        <th scope="col">Sách</th>
                        <th scope="col">Số Lượng</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Tiếng Việt - 1</td>
                        <td>
                            <input type="text"/></td>
                    </tr>
                    <tr>
                        <th scope="row">2</th>
                        <td>Tiếng Việt - 2</td>
                        <td>
                            <input type="text"/></td>
                    </tr>
                    <tr>
                        <th scope="row">3</th>
                        <td>Toán - 1</td>
                        <td>
                            <input type="text"/></td>
                    </tr>
                    <tr>
                        <th scope="row">4</th>
                        <td>Lý - 6</td>
                        <td>
                            <input type="text"/></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="book">
            <a class="btn btn-primary" href="#">Book Sách</a>
        </div>

    </div>
    <div class="giohang">
        <a class="btn btn-danger btn-giohang" href="#"><i class="fas fa-shopping-cart"></i></a>
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

