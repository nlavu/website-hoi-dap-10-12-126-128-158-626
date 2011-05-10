<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDatCauHoi.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDatCauHoi" %>


<asp:Panel ID="pnlKetQuaDatCauHoi" runat="server">
<div class="itemWrapper">
	<div class="item">
   	 	<div class="itemContent">
       	  <div class="itemTitle">Thông báo</div>
          <div class="boxContentMain"> 
            <asp:Label ID="lblKetQuaDatCauHoi" runat="server"></asp:Label>
          </div>
         </div>
     </div>
</div>
</asp:Panel>
<asp:Panel ID="pnlDatCauHoi" runat="server">
      <div class="itemWrapper">
  		    <div class="item">
       	 	    <div class="itemContent">
           	      <div class="itemTitle">(1) Câu hỏi của bạn</div>
                  <div class="boxContentMain">                        
                    <table width="100%" border="0" cellpadding="5">
                      <tr>
                        <td>
                    	    <asp:TextBox TextMode="MultiLine" runat="Server" ID="txtCauHoi" Rows="5" Columns="70"></asp:TextBox>
                    	    
                        </td>
                      </tr>
                      <tr>
                        <td>
                            <br />
                    	    <strong> Ghi Chú: </strong>
                    	    <br />
                   	        <asp:TextBox TextMode="MultiLine" runat="Server" ID="txtGhiChu" Rows="5" Columns="70" ></asp:TextBox>
                   	    </td>
                      </tr>
                    </table>                       	
                  </div>
       	 	    </div>
  		    </div>
      </div>
      <!--end .item câu hỏi -->  
      <div class="itemWrapper">
  		    <div class="item">
       	 	    <div class="itemContent">
           	      <div class="itemTitle">(2) Chọn chủ đề</div>
                  <div class="boxContentMain">                        
                	    <table width="100%" border="0">
                          <tr>
                            <td><label for="lstChuDe"></label>
                                <asp:DropDownList ID="lstChuDe" runat="server" size="1">
                                </asp:DropDownList>
                               
                              </td>
                            <td>&nbsp;</td>
                          </tr>
                          
                        </table>                       	
                  </div>
       	 	    </div>
  		    </div>
      </div>
      <!--end chọn chủ đề--> 
      <div class="itemWrapper">
  		    <div class="item">
       	 	    <div class="itemContent">
           	      <div class="itemTitle">(3) Chọn ngày hết hạn trả lời câu hỏi</div>
                  <div class="boxContentMain">                        
                	    <table width="100%" border="0">
                          <tr>
                            <td>
                                <asp:CheckBox ID="chkNgayHetHan" runat="server" 
                                    Text="Câu hỏi có giới hạn thời gian trả lời." 
                                    oncheckedchanged="chkNgayHetHan_CheckedChanged" />
                                <br />
                                <asp:Calendar ID="CalenderNgayHetHan" runat="server" Height="200px" 
                                    Width="220px" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" 
                                    DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" 
                                    ForeColor="#663399" ShowGridLines="True">
                                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                    <SelectorStyle BackColor="#FFCC66" />
                                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                    <OtherMonthDayStyle ForeColor="#CC9966" />
                                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                                        ForeColor="#FFFFCC" />
                                </asp:Calendar>
                                
                              </td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td>
                            <asp:Button runat="server" ID="btnXemTruoc" text="Xem trước" />
                            <asp:Button runat="server" ID="btnGuiCauHoi" Text="Gửi câu hỏi" 
                                    onclick="btnGuiCauHoi_Click" />
                            </td>
                          </tr>
                        </table>                       	
                  </div>
       	 	    </div>
  		    </div>
      </div> 
  <!--end Đặt câu hỏi-->
</asp:Panel>
