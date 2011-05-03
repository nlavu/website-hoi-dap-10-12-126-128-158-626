<%@ Page Language="C#" Title="Đổi mật khẩu :: Website Hỏi Đáp A-Z" MasterPageFile="~/MasterPages/AZ.Master" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="WebsiteHoiDap.DoiMatKhau" %>
<%@ Register Src="~/Controls/ucDoiMatKhau.ascx" TagName="DoiMatKhau" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucTaiKhoan.ascx" TagName="TaiKhoan" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucTop5ThanhVien.ascx" TagName="Top5ThanhVien" TagPrefix="UC" %>


<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server">    
</asp:Content>

<asp:Content ID="Content_Left" ContentPlaceHolderID="ContentPlaceHolder_Left" runat="server">
   <div>
    <UC:DoiMatKhau id="idDoiMatKhau" runat="server"></UC:DoiMatKhau>
  </div>  
</asp:Content>

<asp:Content ID="Content_Siderbar" ContentPlaceHolderID="ContentPlaceHolder_Sidebar" runat="server">
    <div class="sidebar">
    	<div>
            <UC:TaiKhoan id="idTaiKhoan" runat="server" />
        </div>    	
        <div>
            <UC:Top5ThanhVien id="idTop5ThanhVien" runat="server" />
        </div>                         
   </div>
   <!-- end .sidebar -->
</asp:Content>