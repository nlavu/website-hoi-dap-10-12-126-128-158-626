<%@ Page Language="C#" Title="Tìm kiếm :: Website Hỏi Đáp A-Z" MasterPageFile="~/MasterPages/AZ.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="WebsiteHoiDap.TimKiem" %>
<%@ Register Src="~/Controls/ucDangNhap.ascx" TagName="DangNhap" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucTaiKhoan.ascx" TagName="TaiKhoan" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucTop5ThanhVien.ascx" TagName="Top5ThanhVien" TagPrefix="UC" %>


<asp:Content ID="Content_Left" ContentPlaceHolderID="ContentPlaceHolder_Left" runat="server">
    <div class="top">
        <table width="100%" border="0" cellpadding="5" cellspacing="0">
          <tr align="center" valign="middle">
            <td colspan="3" align="left">
    	        <form id="frmTimKiem" name="frmTimKiem" method="post" action="">
                  <label for="txtTimKiem">Nhập từ khóa tìm kiếm: </label>
                  <input name="txtTimKiem" type="text" id="txtTimKiem" size="30" maxlength="100" />
                  <input type="submit" name="btnTimKiem" id="btnTimKiem" value="Tìm kiếm" />
      	        </form>
            </td>
          </tr>
        </table>
        <!--end table câu hỏi--><!--end table action bar-->
    </div>
    <!--end .item câu hỏi -->
    <div class="list-question">
  	    <div class="header-list-question">
  	      <table width="100%" border="0" cellpadding="5" cellspacing="0">
              <tr align="center">
                <td width="45%" class="menu-list-question">Kết quả tìm kiếm ( 1- 10 trong 30 kết 
                    quả)</td>
                <td width="55%" align="right">
                  <form id="frmHienThi" name="frmHienThi" method="post" action="">
                    <label for="lstHienThi">Hiển thị:</label>
                    <select name="lstHienThi" id="lstHienThi">
                      <option>Hiển thị tất cả</option>
                    </select>
                </form></td>
              </tr>
              <tr>
                <td height="4" colspan="2" class="menu-list-question">                    	
                </td>
              </tr>
            </table>                                         
        </div>
        <!--end header ds câu hỏi-->
        <div class="content-list-question">
    	    <table width="100%" border="0" cellspacing="5" id="hor-zebra">
              <tr class="odd">
                <td width="8%"><a href="#"><img src="image/profile_48c.png" width="48" height="48" /></a></td>
                <td width="92%">
                    <ul>
                        <li class="link-3">
                   		    <a href="#">Please help German shepherd?</a>
                        </li>
                        <li>
                    	    In <a href="#">Dogs</a> - Asked by <a href="#">marcus2893</a> - 0 answers - 3 
                            seconds ago </li>
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
                    	    In <a href="#">Dogs</a> - Asked by <a href="#">marcus2893</a> - 0 answers - 3 
                            seconds ago </li>
                </ul></td>
              </tr>
            </table>
        </div>
        <!--end  ds câu hỏi-->
    </div>
    <!--end .item ds câu hỏi chờ giải đáp -->    
</asp:Content>
<asp:Content ID="Content_Siderbar" ContentPlaceHolderID="ContentPlaceHolder_Sidebar" runat="server">
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