<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_Slide_Tc.ascx.cs" Inherits="web_usercontrol_Uc_TrangChu_Uc_Slide_Tc" %>
<div class="section-slide">
    <div class="owl-carousel">
        <asp:Repeater ID="rpslide" runat="server">
            <ItemTemplate>
                <div class="item">
                   <a href="<%#Eval("link_seo") %>"><img src="<%#Eval("slide_image") %>" alt="<%#Eval("meta_title") %>" /></a> 
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>
