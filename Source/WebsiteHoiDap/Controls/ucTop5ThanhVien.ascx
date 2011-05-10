<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTop5ThanhVien.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucTop5ThanhVien" %>

 <asp:GridView ID="grvTọpThanhVien" runat="server" AllowPaging="false" ShowHeader="true" 
        ShowFooter="false" GridLines="Horizontal" AutoGenerateColumns="false" 
            BorderStyle="None" onselectedindexchanged="grvTop5ThanhVien_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <span class="link-3"><a href="#"> Top 5 thanh vien </a></span>
                </HeaderTemplate>                
                <ItemTemplate>
                    <span class="link-3"><a href="#"> <%# Eval("TenTaiKhoan") %> </a></span>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>      
            
</asp:GridView>     >