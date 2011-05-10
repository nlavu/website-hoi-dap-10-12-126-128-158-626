<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTaiKhoan.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucTaiKhoan" %>


<asp:Panel ID="pnlTaiKhoan" runat="server">
    <div class="boxWrapper">
    	<div class="box">
        	<div class="boxContent">
            	<div class="boxTitle">
                Tài khoản</div>
                <div class="boxContentMain">
                	
                        <table width="100%" border="0" cellpadding="2">
                          <tr>
                            <td width="27%" align="center" valign="middle">
                            	<img src="image/profile_48c.png" width="48" height="48" />
                            </td>
                            <td width="73%">
                                Chào bạn <span class="link-3"><a href="#">ABC</a></span><br />
                                Bạn đã đạt <span class="link-3"><a href="#">123</a></span> điểm <br />
                             	Cấp bậc: <span class="link-3"><a href="#">1</a></span>
                            </td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td align="center"><input name="btnDangXuat" type="submit" value="Đăng xuất" id="btnDangXuat" /></td>
                          </tr>
                        </table>
                    
                </div>
            </div>
        </div>            	
    </div>
    <!--end .boxWrapper - tài khoản -->
</asp:Panel>