<%@ Page Language="C#" Title="Thông tin cá nhân :: Website Hỏi Đáp A-Z" MasterPageFile="~/MasterPages/AZ.Master" AutoEventWireup="true" CodeBehind="TrangCaNhan.aspx.cs" Inherits="WebsiteHoiDap.TrangCaNhan" %>
<%@ Register Src="~/Controls/ucTop5ThanhVien.ascx" TagName="Top5ThanhVien" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucThongTinTaiKhoan.ascx" TagName="ThongTinTaiKhoan" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucDSCauHoiCuaThanhVien.ascx" TagName="DSCauHoiCuaThanhVien" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucDSCauTraLoiCuaThanhVien.ascx" TagName="DSCauTraLoiCuaThanhVien" TagPrefix="UC" %>


<asp:Content ID="Content_Left" ContentPlaceHolderID="ContentPlaceHolder_Left" runat="server">
   <div>
       <UC:ThongTinTaiKhoan id="idThongTinTaiKhoan" runat="server" />
   </div>  
  <!--end .item thông tin cá nhân-->
  
  <div class="list-question">
  	<div class="header-list-question">           	  
      <table width="100%" border="0" cellspacing="0">
          <tr>
            <td width="13%" class="menu-list-question"><a href="#">Câu hỏi</a></td>
            <td width="13%" class="menu-list-question">
            	<a href="#" title="">Câu trả lời</a></td>
            <td width="23%" class="menu-list-question"><a href="#">Danh sách câu hỏi theo dõi</a></td>
            <td width="51%">&nbsp;</td>
          </tr>
          <tr>
            <td height="4" colspan="4" class="menu-list-question">                    	
            </td>
          </tr>
        </table>                                         
    </div>
    <!--end header ds câu hỏi-->
    <div>
        <UC:DSCauHoiCuaThanhVien ID="idDSCauHoi" runat="server" ></UC:DSCauHoiCuaThanhVien>
        <UC:DSCauTraLoiCuaThanhVien ID="idDSCauTraLoi" runat="server" ></UC:DSCauTraLoiCuaThanhVien>
    </div>
    <!--end  ds câu hỏi-->
  </div>
  <!--end thông tin hoạt động của cá nhân --> 
</asp:Content>
<asp:Content ID="Content_Sidebar" ContentPlaceHolderID="ContentPlaceHolder_Sidebar" runat="server">
    <div class="sidebar">    	
    	<div class="boxWrapper">
      		<div class="box">
           	 	<div class="boxContent">
               	  <div class="boxTitle">Những câu hỏi mới </div>
                  <div class="boxContentMain">
                    	<p class="link-2"><a href="#">1. Nguyễn văn A</a></p>
                    	<p class="link-2"><a href="#">2. Nguyễn văn B</a></p>
                    	<p class="link-2"><a href="#">3. Nguyễn văn C</a></p>
                   	<p class="link-2"><a href="#">4. Nguyễn văn D</a></p>
                    	<p class="link-2"><a href="#">5. Nguyễn văn E </a></p>
                  </div>
           	 	</div>
      		</div>
    </div>
        <!--end .boxWrapper - Những câu hỏi mới -->
        <div>
            <UC:Top5ThanhVien id="idTop5ThanhVien" runat="server" />
        </div>           
    </div>
     <!-- end .sidebar -->   
</asp:Content>