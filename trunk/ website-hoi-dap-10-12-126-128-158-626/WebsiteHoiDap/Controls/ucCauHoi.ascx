<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCauHoi.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucCauHoi" %>

<asp:Panel runat="server" ID="idUCCauHoi">    
  
  <!--end .item câu hỏi -->
  <div class="list-question">
  	<div class="header-list-question">
  	  <table width="100%" border="0" cellpadding="5" cellspacing="0">
          <tr align="center">
            <td width="31%" class="menu-list-question">Trả lời ( 1- 10 trong 30 câu trả lời)</td>
            <td width="69%" align="right">
              <form id="frmHienThi" name="frmHienThi" method="post" action="">
                <label for="lstHienThi">Hiển thị:</label>
                <select name="lstHienThi" id="lstHienThi">
                  <option>Hiển thị tất cả</option>
                </select>
            </form></td>
          </tr>
          <tr>
            <td height="4" colspan="2" class="menu-list-question">                    	
            </td>
          </tr>
        </table>                                         
    </div>
    <!--end header ds câu hỏi-->
    <div class="content-list-question">
    	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="answers-table" id="hor-zebra">
          <tr>
              <td>
               	<table width="100%" border="0" cellpadding="0" cellspacing="5">
          			<tr align="center" valign="middle">
            			<td width="14%" rowspan="2">
                			<a href="#"><img src="image/profile_48c.png" width="48" height="48" /></a><br />
             				<span class="link-3"><a href="#">Tên tài khoản</a></span>
                        </td>
            			<td colspan="2" align="left" valign="middle">
               				<span class="link-3">(Câu trả lời được vote nhiều nhất)</span>
           				</td>
           			</tr>
                  	<tr>
                        <td colspan="2"><span>Câu trả lời......</span>
                        </td>
                  	</tr>
                        <tr>
                        <td>&nbsp;</td>
                        <td width="55%" class="small">Ngày trả lời</td>
                        <td width="31%" align="right">
                         	<span class="link-3"><a href="#">[ hình] Báo cáo vi phạm</a></span></td>
                  	</tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td class="link-2">Số sao [ hình - bao nhiu sao --&gt; bấy nhiu hình]</td>
                          <td align="right">&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td class="link-2">&lt;&lt;click bình chọn --&gt; hiện ra combo box chọn số sao&gt;&gt;</td>
                          <td align="right">&nbsp;</td>
                        </tr>
       			</table>
            </td>
          </tr>
          <tr>
            <td><table width="100%" border="0" cellpadding="0" cellspacing="5">
              <tr align="center" valign="middle">
                <td width="14%"><a href="#"><img src="image/profile_48c.png" alt="" width="48" height="48" /></a><br />
                  <span class="link-3"><a href="#">Tên tài khoản</a></span></td>
                <td colspan="2" align="left" valign="middle"><span>Câu trả lời......</span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td width="55%" class="small">Ngày trả lời</td>
                <td width="31%" align="right"><span class="link-3"><a href="#">Báo cáo vi phạm</a></span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td class="link-2">Số sao</td>
                <td align="right">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
          <tr class="odd">
            <td><table width="100%" border="0" cellpadding="0" cellspacing="5">
              <tr align="center" valign="middle">
                <td width="14%"><a href="#"><img src="image/profile_48c.png" alt="" width="48" height="48" /></a><br />
                  <span class="link-3"><a href="#">Tên tài khoản</a></span></td>
                <td colspan="2" align="left" valign="middle"><span>Câu trả lời......</span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td width="55%" class="small">Ngày trả lời</td>
                <td width="31%" align="right"><span class="link-3"><a href="#">Báo cáo vi phạm</a></span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td class="link-2">Số sao</td>
                <td align="right">&nbsp;</td>
              </tr>
            </table></td>
          </tr>
        </table>
    </div>
    <!--end  ds câu hỏi-->
  </div>
  <!--end .item ds câu hỏi chờ giải đáp -->    
</asp:Panel>