<%@ Page Language="C#" AutoEventWireup="true" CodeFile="web_10Ngon_BatDau.aspx.cs" Inherits="web_module_module_Thi10Ngon_web_10Ngon_BatDau" %>

<%@ Register TagPrefix="dx" Namespace="DevExpress.Web" Assembly="DevExpress.Web.v17.1" %>
<%@ Register Assembly="DevExpress.Web.ASPxHtmlEditor.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxHtmlEditor" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.ASPxSpellChecker.v17.1, Version=17.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxSpellChecker" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <div class="col-12" style="text-align: center">

            <br />
            <br />
            <br />
           Vòng:
            <dx:ASPxComboBox ID="cbbVong" runat="server" ValueType="System.Int32" TextField="cauhoi_vong" ValueField="cauhoi_id" ClientInstanceName="cbbVong"></dx:ASPxComboBox>
            <asp:Button ID="btnLuu" runat="server" CssClass="btn btn-primary" Text="Bắt đầu" OnClick="btnLuu_Click" />
            <br />
            <br />
            <span style="color: blue; font-weight: bold; font-size: 40px">VÒNG THI PHÂN HẠNG TIN HỌC GÕ 10 NGÓN</span>
            <br />
            <br />
            <span style="color: blue; font-weight: bold; font-size: 40px" id="block_Time" runat="server">CHÍNH THỨC BẮT ĐẦU VÀO LÚC:
                <asp:Label ID="lblThoiGian" runat="server"></asp:Label></span>
        </div>
    </form>
</body>
</html>
