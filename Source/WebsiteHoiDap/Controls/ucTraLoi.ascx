<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTraLoi.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucTraLoi" %>

<asp:Panel ID="idTraLoi" runat="server">
    <div class="itemWrapper">
  		<div class="item">
       	 	<div class="itemContent">
           	  <div class="itemTitle">(1) Câu trả lời của bạn là gì?</div>
              <div class="boxContentMain">
              		<span class="link-1">Nội dung câu hỏi</span><br />
					Chi tiết câu hỏi?
				<hr size="1px" class="small" />
				<strong>Câu trả lời của bạn:</strong><br />
  				<form action="" method="get" name="frmTraLoiCauHoi">
                	<table width="100%" border="0">
                      <tr>
                        <td>
                        	<textarea name="txtCauTraLoi" cols="70" rows="10">Câu trả lời ....</textarea>
                   		</td>
                      </tr>
                      <tr>
                        <td>  
                        	<input name="btnXemTruoc" type="button" value="Xem Trước" />
                       		&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="btnGuiCauTraLoi" id="btnGuiCauTraLoi" value="Gửi Câu Trả Lời" /></td>
                      </tr>
                    </table>
               	</form>
              </div>
       	 	</div>
  		</div>
    </div>
    <!--end .item trả lời câu hỏi --> 
</asp:Panel>