<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDatCauHoi.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDatCauHoi" %>


<asp:Panel ID="idDatCauHoi" runat="server">
<form id="frmKetQuaDatCauHoi" runat="server" >
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
</form>
  <form runat="server" action="" method="get" ID="frmDatCauHoi">
      <div class="itemWrapper">
  		    <div class="item">
       	 	    <div class="itemContent">
           	      <div class="itemTitle">(1) Câu hỏi của bạn</div>
                  <div class="boxContentMain">                        
                    <table width="100%" border="0">
                      <tr>
                        <td>
                    	    <asp:TextBox TextMode="MultiLine" runat="Server" cols="70" rows="3" ID="txtCauHoi">Câu hỏi ....</asp:TextBox>
                        </td>
                      </tr>
                      <tr>
                        <td>
                   	    <asp:TextBox TextMode="MultiLine" runat="Server" cols="70" rows="5" ID="txtGhiChu">Ghi chú thêm ....</asp:TextBox>
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
                            <td><label for="CalenderNgayHetHan"></label>
                               
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
                            <td><asp:Button runat="server" ID="Button1" text="Xem trước" />
                            <asp:Button runat="server" ID="Button2" Text="Gửi câu hỏi" 
                                    onclick="btnSubmit_Click" /></td>
                          </tr>
                        </table>                       	
                  </div>
       	 	    </div>
  		    </div>
      </div>
  </form>  
  <!--end Đặt câu hỏi-->
</asp:Panel>
