<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDanhSachCauHoi.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDanhSachCauHoi" %>

<asp:Panel ID="pnlDSCauHoi" runat="server">
  
  <!--end .item câu hỏi -->
  <div class="top">
    	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="answers-table">
          <asp:DataList runat="server" ID="dlDSCauHoi" RepeatColumns="1" RepeatDirection="Horizontal" >
                <ItemTemplate>
                     <tr>
                        <td>
                        <table width="100%" border="0" cellpadding="0" cellspacing="5" style="border-bottom:solid 1px #CCC">
                          <tr align="center" valign="middle">
                            <td width="14%"><a href="#"><img src="image/avatar.png" alt="" width="48" height="48" /></a><br />
                              <span class="link-3"><a href="#">Tên tài khoản</a></span></td>
                            <td colspan="2" align="left" valign="top">
                                <span><%#Eval("NoiDungCauHoi") %></span>
                            </td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td width="55%" class="small">Ngày hỏi <%#Eval("NgayHoi")%></td>
                            <td width="31%" align="right"><span class="link-3"><a href="#">Báo cáo vi phạm</a></span></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td class="link-2">Đánh giá <%#Eval("DanhGia")%></td>
                            <td align="right">&nbsp;</td>
                          </tr>
                        </table>
                       </td>
                      </tr>
                </ItemTemplate>
                <AlternatingItemTemplate>
                <tr class="odd">
                    <td><table width="100%" border="0" cellpadding="0" cellspacing="5" style="border-bottom:solid 1px #CCC">
                      <tr align="center" valign="middle">
                        <td width="14%"><a href="#"><img src="image/avatar.png" alt="" width="48" height="48" /></a><br />
                          <span class="link-3"><a href="#">Tên tài khoản</a></span></td>
                        <td colspan="2" align="left" valign="top">
                          <span><%#Eval("NoiDungCauHoi") %></span>
                       </td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td width="55%" class="small">Ngày hỏi <%#Eval("NgayHoi") %></td>
                        <td width="31%" align="right"><span class="link-3"><a href="#">Báo cáo vi phạm</a></span></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td class="link-2">Đánh giá <%#Eval("DanhGia")%></td>
                        <td align="right">&nbsp;</td>
                      </tr>
                    </table></td>
                  </tr>
                </AlternatingItemTemplate>
          </asp:DataList> 
        </table>
    </div>
    <!--end  ds câu hỏi--> 
</asp:Panel>