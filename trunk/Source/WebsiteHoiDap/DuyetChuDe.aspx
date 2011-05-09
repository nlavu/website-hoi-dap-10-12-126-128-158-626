<%@ Page Language="C#" Title="Chủ đề :: Website Hỏi Đáp A-Z" MasterPageFile="~/MasterPages/AZ.Master" AutoEventWireup="true" CodeBehind="DuyetChuDe.aspx.cs" Inherits="WebsiteHoiDap.DuyetChuDe" %>
<%@ Register Src="~/Controls/ucDangNhap.ascx" TagName="DangNhap" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucTaiKhoan.ascx" TagName="TaiKhoan" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucTop5ThanhVien.ascx" TagName="Top5ThanhVien" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucDanhSachChuDe.ascx" TagName="DanhSachChuDe" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucDanhSachCauHoi.ascx" TagName="DanhSachCauHoi" TagPrefix="UC" %>

<asp:Content ContentPlaceHolderID="head" ID="Content_Head" runat="server">
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder_Left" ID="Content_Left" runat="server">
    <div>
        <UC:DanhSachChuDe id="idDSChuDe" runat="server" />
    </div>
    <div>
        <UC:DanhSachCauHoi id="idDSCauHoi" runat="server" />
    </div>
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder_Sidebar" ID="Content_Sidebar" runat="server">
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