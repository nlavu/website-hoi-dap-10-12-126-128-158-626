<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDanhSachChuDe.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDanhSachChuDe" %>

<form runat="server">
   <div class="top">
        <asp:GridView ID="grvChuDe" runat="server" AllowPaging="false" ShowHeader="true" 
        ShowFooter="false" GridLines="Horizontal" AutoGenerateColumns="false" 
            BorderStyle="None" onselectedindexchanged="grvChuDe_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <span class="link-3"><a href="#"> Tất cả chủ đề: </a></span>
                </HeaderTemplate>                
                <ItemTemplate>
                    <span class="link-3"><a href="#"> <%# Eval("TenChuDe") %> </a></span>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>      
            
        </asp:GridView>     
    </div>
</form>