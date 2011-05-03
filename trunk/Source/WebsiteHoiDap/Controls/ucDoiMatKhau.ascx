<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDoiMatKhau.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDoiMatKhau" %>

<asp:Panel ID="idDoiMatKhau" runat="server">
<div class="itemWrapper">
	<div class="item">
   	 	<div class="itemContent">
       	  <div class="itemTitle">Đổi mật khẩu</div>
          <div class="boxContentMain">
            <form id="frmDoiMatKhau" name="frmDoiMatKhau" method="post" action="">                                          
                <table width="100%" border="0" cellpadding="5" cellspacing="0">
                  <tr>
                    <td width="27%" align="right"><label for="txtMatKhauCu">Nhập mật khẩu cũ:</label></td>
                    <td width="63%"><span id="spryMatKhauCu">
                    <input name="txtMatKhauCu" type="password" id="txtMatKhauCu" size="30" maxlength="20" />
                    
                    <td width="10%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right">Mật khẩu mới:</td>
                    <td>
                        <input name="txtMatKhau" type="password" id="txtMatKhau" size="30" maxlength="20" />
                    </td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right">Xác nhận mật khẩu:</td>
                    <td><input name="txtMatKhau2" type="password" id="txtMatKhau2" size="30" maxlength="20" /></td>                                
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td align="left"><input type="submit" name="btnDongY" id="btnDongY" value="Đồng ý" /> &nbsp;&nbsp;
                    <input type="button" name="btnHuy" id="btnHuy" value="Hủy" /></td>
                    <td>&nbsp;</td>
                  </tr>
                </table> 
            </form>                          	
          </div>
   	 	</div>
	</div>
</div>
<!--end .item đổi mật khẩu --> 
</asp:Panel>