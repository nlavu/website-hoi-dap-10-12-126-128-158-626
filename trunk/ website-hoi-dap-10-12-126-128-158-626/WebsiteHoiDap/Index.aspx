<%@ Page Language="C#" Title="Trang chủ :: Website Hỏi Đáp A-Z" MasterPageFile="~/MasterPages/AZ.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebsiteHoiDap.Index" %>
<%@ Register Src="~/Controls/ucDangNhap.ascx" TagName="DangNhap" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucTaiKhoan.ascx" TagName="TaiKhoan" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucTop5ThanhVien.ascx" TagName="Top5ThanhVien" TagPrefix="UC" %>


<asp:Content id="Content_Left" ContentPlaceHolderID="ContentPlaceHolder_Left" runat="server">
      <div class="top">
      	<h2>Hot!!!!</h2>
        <table width="100%" border="0" cellspacing="5">
          <tr>
            <td width="9%"><a href="#"><img src="image/profile_48c.png" width="48" height="48" /></a></td>
            <td width="91%">
                <ul>
                  <li class="link-1"><a href="#">
                  How and when did the white wedding dress originate?
                  </a></li>
                  <li>
               	  Asked by <a href="#">irenaaneri1980</a> - <a href="#">Weddings</a></li>
              </ul>                   
            </td>
          </tr>
          <tr>
            <td><a href="#"><img src="image/profile_48c.png" alt="" width="48" height="48" /></a></td>
            <td>
            	<ul>
                	<li>Queen Victoria chose white not because it symbolized purity, but because she wanted to... </li>
                    <li><a href="#">More ></a></li>
                    <li> * 737 * 92 * <a href="#">Answer by missbeans</a></li>
                </ul>                   
            </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
      </div>
      <!--end .item câu hỏi nổi bật -->
      <div class="list-question">
      	<div class="header-list-question">
       	  <h2>Câu hỏi chờ giải đáp</h2> 
          <table width="100%" border="0" cellspacing="0">
              <tr align="center">
                <td width="13%" class="menu-list-question">
                	<a href="#" title="">Mới nhất</a>                    	
                </td>
                <td width="13%" class="menu-list-question">
                	<a href="#" title="">Thông dụng</a>
                </td>
                <td width="74%">&nbsp;</td>
              </tr>
              <tr>
                <td height="4" colspan="3" class="menu-list-question">                    	
                </td>
              </tr>
            </table>                                         
        </div>
        <!--end header ds câu hỏi-->
        <div class="content-list-question">
        	<table width="100%" border="0" cellspacing="5" id="Table1">
              <tr class="odd">
                <td width="8%"><a href="#"><img src="image/profile_48c.png" width="48" height="48" /></a></td>
                <td width="92%">
                    <ul>
                        <li class="link-3">
                       		<a href="#">Please help German shepherd?</a>
                        </li>
                        <li>
                        	In <a href="#">Dogs</a> - Asked by <a href="#">marcus2893</a> -  0 answers           - 3 seconds ago </li>
                </ul></td>
              </tr>
              <tr>
                <td width="8%"><a href="#"><img src="image/profile_48c.png" width="48" height="48" /></a></td>
                <td width="92%">
                    <ul>
                        <li class="link-3">
                       		<a href="#">Please help German shepherd?</a>
                        </li>
                        <li>
                        	In <a href="#">Dogs</a> - Asked by <a href="#">marcus2893</a> -  0 answers           - 3 seconds ago </li>
                </ul></td>
              </tr>
            </table>
        </div>
        <!--end  ds câu hỏi-->
      </div>
      <!--end .item ds câu hỏi chờ giải đáp -->    
</asp:Content>
<asp:Content ID="Content_Sidebar" ContentPlaceHolderID="ContentPlaceHolder_Sidebar" runat="server">
    <div class="sidebar">
    	<div>
            <UC:TaiKhoan id="idTaiKhoan" runat="server" />
        </div> 
    	<div>
            <UC:DangNhap id="idDangNhap" runat="server" />
        </div> 
        <div>
            <UC:Top5ThanhVien id="idTop5ThanhVien" runat="server" />
        </div>           
    </div>
     <!-- end .sidebar -->  
</asp:Content>
       	
           
