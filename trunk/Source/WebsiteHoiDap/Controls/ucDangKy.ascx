<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDangKy.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDangKy" %>
<script type="text/javascript" >
    // kiểm tra thông tin đăng ký
</script>
<asp:Panel ID="pnlKetQuaDangKy" runat="server">
<div class="itemWrapper">
	<div class="item">
   	 	<div class="itemContent">
       	  <div class="itemTitle">Thông báo</div>
          <div class="boxContentMain"> 
            <asp:Label ID="lblKetQuaDangKy" runat="server" CssClass="message"></asp:Label>
          </div>
         </div>
     </div>
</div>
</asp:Panel>
<asp:Panel ID="pnlDangKy" runat="server"> 
<div class="itemWrapper">
	<div class="item">
   	 	<div class="itemContent">
       	  <div class="itemTitle">Đăng ký</div>
          <div class="boxContentMain">          
          
                <table width="100%" border="0" cellpadding="5" cellspacing="0">
                  <tr>
                    <td width="30%" align="right" ><label for="txtTenDangNhap">Tên đăng nhập <span class="message">(*)</span>:</label></td>
                    <td width="60%">
                        <asp:TextBox runat="server" TextMode="SingleLine" ID="txtTenDangNhap" 
                            MaxLength="20" Width="190px" />
                    </td>
                    <td width="10%" ></td>
                  </tr>
                  <tr>
                    <td align="right">Mật khẩu <span class="message">(*)</span>:</td>
                    <td>
                        <asp:TextBox runat="server" TextMode="Password" ID="txtMatKhau" MaxLength="20" 
                            Width="190px" />                        
                    </td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right">Xác nhận mật khẩu <span class="message">(*)</span>:</td>
                    <td>
                        <asp:TextBox runat="server" TextMode="Password" ID="txtMatKhau2" MaxLength="20" 
                            Width="190px" />                       
                    </td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right" >Email <span class="message">(*)</span>:</td>
                    <td>
                        <asp:TextBox runat="server" TextMode="SingleLine" ID="txtEmail" MaxLength="100" 
                            Width="270px" />                       
                    </td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr align="center">
                    <td ><label for="txtDieuKhoan"></label></td>
                    <td >
                        <textarea name="txtDieuKhoan" id="txtDieuKhoan" cols="50" rows="5" readonly="readonly">
Khi nhấp vào nút “Tạo tài khoản” dưới đây, tôi xác nhận rằng tôi đã đọc và đồng ý với Điều khoản Sử dụng Dịch vụ Yahoo!, Yahoo! Qui định về Sự Riêng tư và Điều khoản Thỏa thuận về Sử dụng Mail , và nhận email liên lạc liên quan đến tài khoản từ Yahoo!. Yahoo! tự động nhận dạng các mục, chẳng hạn như các từ ngữ, đường dẫn, người và các đối tượng từ các dịch vụ thông tin liên lạc Yahoo! của bạn để phân phối các tính năng sản phẩm và quảng cáo thích hợp.
                        </textarea>
                    </td>
                    <td ></td>
                  </tr>
                  <tr>
                    <td align="center" >&nbsp;</td>
                    <td align="left">
                        <asp:CheckBox runat="server" id="chkDongYDieuKhoan" />
                        <label for="chkDongYDieuKhoan">Tôi đồng ý các điều khoản của Website</label>
                        <br />
                      </td>
                    <td align="center">&nbsp;</td>
                  </tr>
                  <tr>
                    <td >&nbsp;</td>
                    <td align="left">
                        <asp:Button  ID="btnDongY" Text="Đăng ký" runat="server" 
                            onclick="btnDongY_Click"  /> 
                        &nbsp;&nbsp;
                        <asp:Button ID="btnHuy" Text="Hủy đăng ký" runat="server" 
                            onclick="btnHuy_Click" Height="26px" /></td>
                    <td>&nbsp;</td>
                  </tr>
                </table> 
                                 
          </div>
   	 	</div>
	</div>
</div>  
</asp:Panel>
