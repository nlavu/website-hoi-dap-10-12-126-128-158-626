<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTraLoi.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucTraLoi" %>
<script language="javascript" type="text/javascript">
// <!CDATA[


// ]]>
</script>


<asp:Panel ID="idTraLoi" runat="server">
<form id = "frmKetQuaTraLoi" runat = "server">
    <div class="itemWrapper">
	    <div class="item">
   	 	    <div class="itemContent">
       	      <div class="itemTitle">Thông báo</div>
              <div class="boxContentMain"> 
                <asp:Label ID="lblKetQuaTraLoi" runat="server"></asp:Label>
              </div>
             </div>
         </div>
    </div>
</form>

<form runat = "server" action = "" method = "get" ID = "frmCauTraLoi">
    <div class="itemWrapper">
  		    <div class="item">
       	 	    <div class="itemContent">
           	      <div class="itemTitle">(1) Câu trả lời của bạn là gì?</div>
                  <div class="boxContentMain">                        
                    <table width="100%" border="0">
                      <tr>
                        <td>
                    	    <asp:TextBox TextMode="MultiLine" runat="Server" cols="70" rows="3" ID="TextBox1">Câu hỏi ....</asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td>
                   	        <asp:TextBox TextMode="MultiLine" runat="Server" cols="70" rows="5" ID="TextBox2">Ghi chú ....</asp:TextBox>
                   	    </td>
                      </tr>
                    </table>                       	
                  </div>
       	 	    </div>
  		    </div>
    </div>
    
    <!-- Tra Loi Cau Hoi --> 
    <div class="itemWrapper">
  		    <div class="item">
       	 	    <div class="itemContent">
           	      <div class="itemTitle">(3) Câu trả lời của bạn là.</div>                  
  				    <form runat = "server" id ="frmTraLoiCauHoi">
                	    <table width="100%" border="0">
                          <tr>
                            <td>
                        	    <textarea name="txtCauTraLoi" cols="70" rows="10">Câu trả lời ....</textarea>
                   		    </td>
                          </tr>
                          <tr>
                            <td>  
                        	    <input name="btnXemTruoc" type="button" value="Xem Trước" />
                       		    &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="btnGuiCauTraLoi" id="btnGuiCauTraLoi" value="Gửi Câu Trả Lời" onclick="return btnGuiCauTraLoi_onclick()" /></td>
                          </tr>
                        </table>
               	    </form>               	
                </div>
       	 	</div>
    </div>
</form>

    <!--end .item trả lời câu hỏi --> 
</asp:Panel>