<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucThongTinTaiKhoan.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucThongTinTaiKhoan" %>

<asp:Panel ID="idThongTinTaiKhoan" runat="server">
<div class="top">          	
    <table width="100%" border="0" cellspacing="5">
      <tr>
        <td align="center">&nbsp;</td>
        <td><h2>Thông tin cá nhân</h2></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td width="16%" align="center" valign="top">
        	<a href="#"><img src="image/profile_48c.png" width="100" height="100" /></a>                 
        	    <span class="link-2"><a href="#"><asp:Label ID="lblTenTaiKhoan" runat="server"></asp:Label></a></span>
        </td>
        <td width="45%">
       	  <p>Họ tên: <asp:Label ID="lblHoTen" runat="server"></asp:Label></p>
       	  <p>Ngày sinh: <asp:Label ID="lblNgaySinh" runat="server"></asp:Label> - Giới tính: <asp:Label ID="lblGioiTinh" runat="server"></asp:Label><p>
   		  <p>Email: <asp:Label ID="lblEmail" runat="server"></asp:Label></p>
         	<p class="link-3"><a href="CapNhatThongTinCaNhan.aspx">&gt;&gt; Cập nhật thông tin cá nhân</a></p>
          	<p class="link-3"><a href="DoiMatKhau.aspx">&gt;&gt; Đổi mật khẩu</a></p>
        </td>
        <td width="39%"><table width="100%" border="0" cellpadding="0" cellspacing="0" id="score-table">
          <tr bgcolor="#009900">
            <th>Cấp Bậc - Điểm số</th>
          </tr>
          <tr>
            <td bgcolor="#DAF8DE"><span class="link-3"><asp:Label ID="lblDiem" runat="server"></asp:Label></span> điểm - Cấp bậc: <span class="link-3"><asp:Label ID="lblCapBac" runat="server"></asp:Label></span> [ hình kèm theo]</td>
          </tr>
          <tr>
            <td bgcolor="#DAF8DE">Còn <span class="link-3">xxxx</span> điểm để tăng bậc.</td>
          </tr>
          <tr>
            <td bgcolor="#DAF8DE">Đã đặt <span class="link-3">xxxx</span> câu hỏi - Có <span class="link-3">xxxx</span> câu trả lời.</td>
          </tr>
        </table></td>
      </tr>
    </table>
</div>    
</asp:Panel>