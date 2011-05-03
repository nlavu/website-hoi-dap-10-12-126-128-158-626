<%@ Page Language="C#" Title="Hỏi :: Website Hỏi Đáp A-Z" MasterPageFile="~/MasterPages/AZ.Master" AutoEventWireup="true" CodeBehind="CauHoi.aspx.cs" Inherits="WebsiteHoiDap.CauHoi" %>
<%@ Register Src="~/Controls/ucCauHoi.ascx" TagName="CauHoi" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucDangNhap.ascx" TagName="DangNhap" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucTaiKhoan.ascx" TagName="TaiKhoan" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucTop5ThanhVien.ascx" TagName="Top5ThanhVien" TagPrefix="UC" %>

<asp:Content ID="Content_Left" ContentPlaceHolderID="ContentPlaceHolder_Left" runat="server">
  <div>
    <UC:CauHoi id="idCauHoi" runat="server"></UC:CauHoi>
  </div>  
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


