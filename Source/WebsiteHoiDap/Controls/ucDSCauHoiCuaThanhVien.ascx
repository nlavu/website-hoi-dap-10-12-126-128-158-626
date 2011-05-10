<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDSCauHoiCuaThanhVien.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDSCauHoiCuaThanhVien" %>

<asp:Panel ID = "idDSCauHoi" runat = "server">
<div class="content-list-question">
        <asp:GridView ID="grvCauHoiThanhVien" runat="server" AllowPaging="false" ShowHeader="true" 
        ShowFooter="false" GridLines="Horizontal" AutoGenerateColumns="false" BorderStyle="None">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <span class="link-3"><a href="#"> Câu hỏi của thành viên : </a></span>
                </HeaderTemplate>                
                <ItemTemplate>
                    <span class="link-3"><a href="#"> <%# Eval("NoiDungCauHoi") %> </a></span>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>      
            
        </asp:GridView>
    	<table width="100%" border="0" cellspacing="5" id="hor-zebra">
          <tr class="odd">
            <td width="8%"><a href="#"><img src="image/profile_48c.png" width="48" height="48" /></a></td>
            <td width="92%">
                <ul>
                    <li class="link-3">
                   		<a href="#">Please help German shepherd?</a>
                    </li>
                    <li>
                    	In <a href="#">Dogs</a> - Asked by <a href="#">marcus2893</a> - 0 answers - 3 
                        seconds ago </li>
            </ul></td>
          </tr>
          <tr>
            <td width="8%"><a href="#"><img src="image/profile_48c.png" width="48" height="48" /></a></td>
            <td width="92%">
                <ul>
                    <li class="link-3">
                   		<a href="#">Please help German shepherd?</a>
                    </li>
                    <li>
                    	In <a href="#">Dogs</a> - Asked by <a href="#">marcus2893</a> - 0 answers - 3 
                        seconds ago </li>
            </ul></td>
          </tr>
        </table>
    </div>
</asp:Panel>