<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTop5ThanhVien.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucTop5ThanhVien" %>


<%--Edit by : Anh Vũ--%>
<asp:Panel ID = "idTop5ThanhVien" runat = "server">
<div class="content-list-question">
        <asp:GridView ID="grvTop5ThanhVien" runat="server" AllowPaging="false" ShowHeader="true" 
        ShowFooter="false" GridLines="Horizontal" AutoGenerateColumns="false" BorderStyle="None">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <span class="link-3"><a href="#"> Top 5 Thành Viên : </a></span>
                </HeaderTemplate>                
                <ItemTemplate>
                    <span class="link-3"><a href="#"> <%# Eval("TenTaiKhoan") %> </a></span>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>      
            
        </asp:GridView>
    </div>
    </asp:Panel>