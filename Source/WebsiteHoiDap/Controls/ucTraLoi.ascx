<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTraLoi.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucTraLoi" %>
<script language="javascript" type="text/javascript">
// <!CDATA[


// ]]>
</script>

<asp:Panel ID="pnlKetQuaTraLoi" runat="server">
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
</asp:Panel>

<asp:Panel ID="pnlTraLoi" runat="server">
    <div class="itemWrapper">
  		    <div class="item">
       	 	    <div class="itemContent">
           	      <div class="itemTitle">(1) Câu trả lời của bạn là gì?</div>
                  <div class="boxContentMain">                        
                    <table width="100%" border="0">
                      <tr>
                        <td>
                    	    <asp:Label runat="Server" ID="lblCauHoi" Width="100%"></asp:Label>
                        </td>
                      </tr>
                      <tr>
                        <td>
                   	        <asp:Label runat="Server" ID="lblGhiChuCauHoi" Width="100%"></asp:Label>
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
                	    <table width="100%" border="0">
                          <tr>
                            <td>
                        	    <asp:TextBox TextMode="MultiLine" runat="server" ID="txtCauTraLoi" Columns="70" Rows="10">Câu trả lời ....</asp:TextBox>
                   		    </td>
                          </tr>
                          <tr>
                            <td>
                                Ghi chú:
                                <br />
                        	    <asp:TextBox TextMode="MultiLine" runat="server" ID="txtGhiChu" Columns="70" Rows="5"></asp:TextBox>
                   		    </td>
                          </tr>
                          <tr>
                            <td>  
                        	    <asp:Button ID="btnXemTruoc" Text="Xem Trước" runat="server"/>
                       		    &nbsp;&nbsp;&nbsp;&nbsp;
                       		    <asp:Button ID="btnGuiCauTraLoi" Text="Gửi Câu Trả Lời" runat="server" 
                                    onclick="btnGuiCauTraLoi_Click" /></td>
                          </tr>
                        </table>               	            	
                </div>
       	 	</div>
    </div>
    <!--end .item trả lời câu hỏi --> 
</asp:Panel>