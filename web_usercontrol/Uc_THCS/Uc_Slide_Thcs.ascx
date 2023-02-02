<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Uc_Slide_Thcs.ascx.cs" Inherits="web_usercontrol_Uc_THCS_Uc_Slide_Thcs" %>
  <div class="section-slide">
    <div class="owl-carousel owl-theme">
        <asp:Repeater ID="rpslide" runat="server">
            <ItemTemplate>
                <div class="item">
                    <img src="<%#Eval("slide_image") %>" alt="Alternate Text" />
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
</div>