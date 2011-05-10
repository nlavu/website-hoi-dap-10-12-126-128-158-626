<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDSCauTraLoiCuaThanhVien.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDSCauTraLoiCuaThanhVien" %>

<asp:Panel ID = "idDSCauTraLoi" runat="server">
    <div class="content-list-question">
        <asp:GridView ID="grvCauTraLoiThanhVien" runat="server" AllowPaging="false" ShowHeader="true" 
        ShowFooter="false" GridLines="Horizontal" AutoGenerateColumns="false" BorderStyle="None">
        <Columns>
            <asp:TemplateField>
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
    <div class="content-list-question">
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
