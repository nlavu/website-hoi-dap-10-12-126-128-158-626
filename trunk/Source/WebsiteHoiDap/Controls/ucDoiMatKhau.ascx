<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDoiMatKhau.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDoiMatKhau" %>

<asp:Panel ID="pnlKetQuaDoiMK" runat="server">
<div class="itemWrapper">
	<div class="item">
   	 	<div class="itemContent">
       	  <div class="itemTitle">Thông báo</div>
          <div class="boxContentMain"> 
            <asp:Label ID="lblKetQuaDoiMK" runat="server" CssClass="message"></asp:Label>
          </div>
         </div>
     </div>
</div>
</asp:Panel>
<asp:Panel ID="pnlDoiMatKhau" runat="server">
<div class="itemWrapper">
	<div class="item">
   	 	<div class="itemContent">
       	  <div class="itemTitle">Đổi mật khẩu</div>
          <div class="boxContentMain">
            <!--form id="frmDoiMatKhau" name="frmDoiMatKhau" method="post" action=""-->                                          
                <table width="100%" border="0" cellpadding="5" cellspacing="0">
                  <tr>
                    <td width="27%" align="right"><label for="txtMatKhauCu">Nhập mật khẩu cũ:</label></td>
                    <td width="63%">
                    <asp:TextBox  TextMode="Password" ID="txtMatKhauCu" MaxLength="20" runat="server" 
                            size="30"/>           
                    <td width="10%">&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right">Mật khẩu mới:</td>
                    <td>
                        <asp:TextBox TextMode="Password" ID="txtMatKhau" size="30" MaxLength="20" 
                            runat="server" />
                    </td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td align="right">Xác nhận mật khẩu:</td>
                    <td>
                        <asp:TextBox TextMode="Password" ID="txtMatKhau2" size="30" MaxLength="20" 
                            runat="server" />
                      </td>                                
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td align="left"><asp:Button ID="btnDongY" runat="server" Text="Đồng ý" 
                            onclick="btnDongY_Click" /> &nbsp;&nbsp;
                    <asp:Button ID="btnHuy" runat="server" Text="Hủy" onclick="btnHuy_Click" 
                            Width="71px" /></td>
                    <td>&nbsp;</td>
                  </tr>
                </table> 
            <!--/form-->                          	
          </div>
   	 	</div>
	</div>
</div>
<!--end .item đổi mật khẩu --> 
</asp:Panel>