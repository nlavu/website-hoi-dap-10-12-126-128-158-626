<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTaiKhoan.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucTaiKhoan" %>



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
                                Chào bạn <asp:Label ID="idTenTaiKhoan" runat="server" Text="sds"> <span class="link-3"><a href="#">ABC</a></span></asp:Label><br />
                                Bạn đã đạt 
                                    <asp:Label ID="idDiem" runat="server">
                                    <span class="link-3"><a href="#">123</a></span>
                                    </asp:Label> điểm <br />
                             	Cấp bậc: 
                             	    <asp:Label runat="server" ID="idCapBac">
                             	        <span class="link-3"><a href="#">1</a></span>
                             	    </asp:Label>
                             	   
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
