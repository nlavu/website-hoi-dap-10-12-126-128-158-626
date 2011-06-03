<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucCapNhatThongTinCaNhan.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucCapNhatThongTinCaNhan" %>

<asp:Panel ID="pnlKetQuaCapNhat" runat="server">
<div class="itemWrapper">
	<div class="item">
   	 	<div class="itemContent">
       	  <div class="itemTitle">Thông báo</div>
          <div class="boxContentMain"> 
            <asp:Label ID="lblKetQuaCapNhat" runat="server" CssClass="message"></asp:Label>
          </div>
         </div>
     </div>
</div>
</asp:Panel>
<asp:Panel ID="pnlCapNhatThongTinCaNhan" runat="server">
     <div class="itemWrapper">
      		<div class="item">
           	 	<div class="itemContent">
               	  <div class="itemTitle">Cập nhật thông tin cá nhân</div>
                  <div class="boxContentMain">
                    <!--form action="" method="post" enctype="multipart/form-data" name="frmCapNhatThongTin" id="frmCapNhatThongTin"-->                                          
                        <table width="100%" border="0" cellpadding="5" cellspacing="0">
                          <tr>
                            <td width="27%" align="right"><label for="txtHoTen">Họ tên:</label></td>
                            <td width="46%"><asp:TextBox TextMode="SingleLine" ID="txtHoTen" runat="server" AutoPostBack="false" MaxLength="50" ></asp:TextBox>
                            </td>
                            <td width="27%">&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><label for="txtNgaySinh">Ngày sinh:</label></td>
                            <td>
                            <asp:TextBox TextMode="SingleLine" runat="server" Maxlength="20" ID="txtNgaySinh"  ></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><label for="radGioiTinh">Giới tính:</label></td>
                            <td>
                                <asp:RadioButton ID="radNam"  GroupName="GioiTinh" runat="server" Text="Nam" />                               
                                <asp:RadioButton ID="radNu" GroupName="GioiTinh" runat="server" Text="Nữ" />
                            </td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td align="right"><label for="txtEmail">Email:</label></td>
                            <td>
                            	<asp:TextBox  TextMode="SingleLine" size="30" runat="server" Maxlength="50" ID="txtEmail" ></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                          </tr>                          
                          <tr align="center">
                            <td align="right">Ảnh đại diện</td>
                            <td align="left">
                            	<asp:FileUpload ID="fileUpImage" runat="server"/>
                                <br />                                
                                <asp:Image ID="imgAvatar" Width="48" Height="48" ImageUrl="image/avatar.png" runat="server" />
                              </td>
                            <td>&nbsp;</td>
                          </tr>                         
                          <tr>
                            <td>&nbsp;</td>
                            <td align="left"><asp:Button ID="btnDongY" Text="Cập nhật" runat="server" 
                                    onclick="btnDongY_Click" /> &nbsp;&nbsp;
                              <asp:Button ID="btnHuy" Text="Hủy cập nhật" runat="server" 
                                    onclick="btnHuy_Click" /></td>
                            <td>&nbsp;</td>
                          </tr>
                        </table> 
                    <!--/form-->                          	
                  </div>
           	 	</div>
      		</div>
      </div>
      <!--end .item cập nhật thông tin cá nhân -->
</asp:Panel>