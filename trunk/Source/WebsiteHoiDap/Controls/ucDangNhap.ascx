<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDangNhap.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDangNhap" %>

<asp:Panel ID="idDangNhap" runat="server">
    <div class="boxWrapper">
	    <div class="box">
    	    <div class="boxContent">
        	    <div class="boxTitle">
                Đăng nhập
                </div>
                <div class="boxContentMain">
            	    <form action="" method="post" name="frmDangNhap">
                        <table width="100%" border="0" cellpadding="2">
                          <tr>
                            <td width="53%" align="right"><label for="txtTenDangNhap">Tên đăng nhập:</label></td>
                            <td width="47%"><input name="txtTenDangNhap" type="text" id="txtTenDangNhap" value="Tên đăng nhập" size="16" maxlength="20" /></td>
                          </tr>
                          <tr>
                            <td align="right"><label for="txtMatKhau">Mật khẩu:</label></td>
                            <td><input name="txtMatKhau" type="password" size="16" maxlength="20" /></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td><input name="btnDangNhap" type="submit" value="Đăng nhập" /></td>
                          </tr>
                          <tr>
                            <td colspan="2" align="center" valign="middle"><a href="QuenMatKhau.aspx">Quên mật khẩu?</a> | 
                                <a href="DangKy.aspx">Đăng ký mới</a></td>
                          </tr>
                        </table>
                    </form>	
                </div>
            </div>
        </div>            	
    </div>
    <!--end .boxWrapperlogin-->   

</asp:Panel>