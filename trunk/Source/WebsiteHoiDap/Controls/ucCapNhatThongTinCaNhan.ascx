<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCapNhatThongTinCaNhan.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucCapNhatThongTinCaNhan" %>

<asp:Panel ID="pnlCapNhatThongTinCaNhan" runat="server">
     <div class="itemWrapper">
      		<div class="item">
           	 	<div class="itemContent">
               	  <div class="itemTitle">Cập nhật thông tin cá nhân</div>
                  <div class="boxContentMain">
                    <form action="" method="post" enctype="multipart/form-data" name="frmCapNhatThongTin" id="frmCapNhatThongTin">                                          
                        <table width="100%" border="0" cellpadding="5" cellspacing="0">
                          <tr>
                            <td width="27%" align="right"><label for="txtHoTen">Họ tên:</label></td>
                            <td width="46%"><input name="txtHoTen" type="text" id="txtHoTen" maxlength="20" />
                            </td>
                            <td width="27%">&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><label for="txtNgaySinh">Ngày sinh:</label></td>
                            <td>
                            <input name="txtNgaySinh" type="password" id="txtNgaySinh" maxlength="20" />
                            </td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><label for="radGioiTinh">Giới tính:</label></td>
                            <td>
                              <input type="radio" name="radio" id="radGioiTinh" value="radGioiTinh" />
                              <label for="radGioiTinh">Nam</label>
                            <input type="radio" name="radio" id="radGioiTinh2" value="radGioiTinh" />
                              <label for="radGioiTinh2">Nữ</label>
                            </span></td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><label for="txtSoDienThoai">Số điện thoại:</label></td>
                            <td>
                            	<input name="txtSoDienThoai" type="text" id="txtSoDienThoai" maxlength="12" />
                            </td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><label for="txtDiaChi">Địa chỉ</label></td>
                            <td><input name="txtDiaChi" type="text" id="txtDiaChi" size="40" maxlength="20" /></td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr align="center">
                            <td align="right"><label for="uploadImage"> Ảnh đại diện</label></td>
                            <td align="left">
                            	<input name="uploadImage" type="file" id="uploadImage" size="30" /><br />
                            <img src="image/profile_48c.png" width="48" height="48" /></td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><label for="txtAboutMe">Giới thiệu bản thân:</label></td>
                            <td align="left">
                              <textarea name="txtAboutMe" id="txtAboutMe" cols="40" rows="3"></textarea>
                            </td>
                            <td align="center">&nbsp;</td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td align="left"><input type="submit" name="btnDongY" id="btnDongY" value="Cập nhật" /> &nbsp;&nbsp;
                              <input type="button" name="btnHuy" id="btnHuy" value="Hủy cập nhật" /></td>
                            <td>&nbsp;</td>
                          </tr>
                        </table> 
                    </form>                          	
                  </div>
           	 	</div>
      		</div>
      </div>
      <!--end .item cập nhật thông tin cá nhân -->
</asp:Panel>