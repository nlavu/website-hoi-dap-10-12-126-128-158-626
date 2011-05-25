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
                                Chào bạn <asp:Label ID="lblTenTaiKhoan" runat="server" Text=""> <span class="link-3"><a href="#">ABC</a></span></asp:Label><br />
                                Bạn đã đạt 
                                    <asp:Label ID="lblDiem" runat="server">
                                    <span class="link-3"><a href="#"></a></span>
                                    </asp:Label> điểm <br />
                             	Cấp bậc: 
                             	    <asp:Label runat="server" ID="lblCapBac">
                             	        <span class="link-3"><a href="#"></a></span>
                             	    </asp:Label>
                             	 <br />
                             	    <asp:Button runat="server" ID="btnDangXuat" Text="Đăng xuất" 
                                    onclick="btnDangXuat_Click1"/>
                            </td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td align="center">        
                                                                            
                            </td>
                          </tr>
                        </table>
                    
                </div>
            </div>
        </div>            	
    </div>
    <!--end .boxWrapper - tài khoản -->
</asp:Panel>