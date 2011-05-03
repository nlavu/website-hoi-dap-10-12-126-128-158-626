<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucDatCauHoi.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucDatCauHoi" %>


<asp:Panel ID="idDatCauHoi" runat="server">
  <form action="" method="get" name="frmDatCauHoi">
      <div class="itemWrapper">
  		    <div class="item">
       	 	    <div class="itemContent">
           	      <div class="itemTitle">(1) Câu hỏi của bạn</div>
                  <div class="boxContentMain">                        
                    <table width="100%" border="0">
                      <tr>
                        <td>
                    	    <textarea name="txtCauHoi" cols="70" rows="3" id="txtCauHoi">Câu hỏi ....</textarea>
                        </td>
                      </tr>
                      <tr>
                        <td>
                   	    <textarea name="txtGhiChu" cols="70" rows="5" id="txtGhiChu">Ghi chú thêm ....</textarea></td>
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
                              <select name="lstChuDe" size="1" id="lstChuDe">
                                <option>aaaaaaaaaaaaaaaaaaaa</option>
                            </select></td>
                          </tr>
                          <tr>
                            <td><input type="submit" name="btnXemTruoc" id="btnXemTruoc" value="Xem trước" />
                            <input type="submit" name="btnSubmit" id="btnSubmit" value="Gửi câu hỏi" /></td>
                          </tr>
                        </table>                       	
                  </div>
       	 	    </div>
  		    </div>
      </div>
      <!--end chọn chủ đề--> 
  </form>  
  <!--end Đặt câu hỏi-->
</asp:Panel>
