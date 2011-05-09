<%@ Page Language="C#" Title="Đặt câu hỏi :: Website Hỏi Đáp A-Z" MasterPageFile="~/MasterPages/AZ.Master" AutoEventWireup="true" CodeBehind="DatCauHoi.aspx.cs" Inherits="WebsiteHoiDap.DatCauHoi" %>
<%@ Register Src="~/Controls/ucDatCauHoi.ascx" TagName="DatCauHoi" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucTaiKhoan.ascx" TagName="TaiKhoan" TagPrefix="UC" %>
<%@ Register Src="~/Controls/ucTop5ThanhVien.ascx" TagName="Top5ThanhVien" TagPrefix="UC" %>



<asp:Content ID="Content_Left" ContentPlaceHolderID="ContentPlaceHolder_Left" runat="server">
    <div>
    <UC:DatCauHoi id="idDatCauHoi" runat="server"></UC:DatCauHoi>
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