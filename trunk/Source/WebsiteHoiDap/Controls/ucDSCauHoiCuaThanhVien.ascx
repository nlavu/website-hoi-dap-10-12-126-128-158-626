<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDSCauHoiCuaThanhVien.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDSCauHoiCuaThanhVien" %>

<asp:Panel ID = "idDSCauHoi" runat = "server">
<div class="content-list-question">
        <asp:GridView ID="grvCauHoiThanhVien" runat="server" AllowPaging="false" ShowHeader="true" 
        ShowFooter="false" GridLines="None" AutoGenerateColumns="false" BorderStyle="None">
        <Columns>
            <asp:TemplateField ControlStyle-BorderStyle="None">
                <HeaderTemplate>
                    <span class="link-3"><a href="#"> Câu hỏi của thành viên : </a></span>
                </HeaderTemplate>                
                <ItemTemplate>
                    <span class="link-3"><a href="#"> <%# Eval("NoiDungCauHoi") %> </a></span>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>      
            
        </asp:GridView>
    	
    </div>
</asp:Panel>