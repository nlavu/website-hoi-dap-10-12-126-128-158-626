<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDangNhap.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDangNhap" %>

<asp:Panel ID="pnlKetQuaDatDangNhap" runat="server" 
    meta:resourcekey="pnlKetQuaDatDangNhapResource1">
<div class="itemWrapper">
	<div class="item">
   	 	<div class="itemContent">
       	  <div class="itemTitle">Thông báo</div>
          <div class="boxContentMain"> 
            <asp:Label ID="lblKetQuaDangNhap" runat="server" Text="Đăng nhập" 
                  meta:resourceKey="lblKetQuaDangNhapResource1"></asp:Label>
          </div>
         </div>
     </div>
</div>
</asp:Panel>

<asp:Panel ID="pnlDangNhap" runat="server" 
    meta:resourcekey="pnlDangNhapResource1">
    <div class="boxWrapper">
	    <div class="box">
    	    <div class="boxContent">
        	    <div class="boxTitle">
                Đăng nhập
                </div>
                <div class="boxContentMain">
            	    
                        <table width="100%" border="0" cellpadding="2">
                          <tr>
                            <td width="53%" align="right"><label for="txtTenDangNhap">Tên đăng nhập:</label></td>
                            <td width="47%">
                                <asp:TextBox ID="txtTenDangNhap"
                                      MaxLength="20" runat="server" 
                                    meta:resourceKey="txtTenDangNhapResource1" /></td>
                          </tr>
                          <tr>
                            <td align="right"><label for="txtMatKhau">Mật khẩu:</label></td>
                            <td><asp:TextBox ID="txtMatKhau" TextMode="Password" runat="server" MaxLength="20" 
                                    meta:resourceKey="txtMatKhauResource1" /></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td><asp:Button ID="btnDangNhap" value="Đăng nhập" runat="server" 
                                    onclick="btnDangNhap_Click" Text="Đăng nhập" 
                                    meta:resourceKey="btnDangNhapResource1" /></td>
                          </tr>
                          <tr>
                            <td colspan="2" align="center" valign="middle"><a href="QuenMatKhau.aspx">Quên mật khẩu?</a> | 
                                <a href="DangKy.aspx">Đăng ký mới</a></td>
                          </tr>
                        </table>
                                            
                </div>
            </div>
        </div>            	
    </div>
    <!--end .boxWrapperlogin-->   

</asp:Panel>