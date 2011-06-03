<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDSCauTraLoiCuaThanhVien.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDSCauTraLoiCuaThanhVien" %>

<asp:Panel ID = "idDSCauTraLoi" runat="server">
    <div class="content-list-question">
        <asp:GridView ID="grvCauTraLoiThanhVien" runat="server" AllowPaging="false" ShowHeader="true" 
        ShowFooter="false" GridLines="None" AutoGenerateColumns="false" BorderStyle="None">
        <Columns>
            <asp:TemplateField ControlStyle-BorderStyle="None">
                <HeaderTemplate>
                    <span class="link-3"><a href="#"> Câu trả lời của thành viên : </a></span>
                </HeaderTemplate>                
                <ItemTemplate>
                    <span class="link-3"><a href="#"> <%# Eval("NoiDung") %> </a></span>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>      
            
        </asp:GridView> 
    </div>
</asp:Panel>
