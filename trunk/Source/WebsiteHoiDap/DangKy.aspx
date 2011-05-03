<%@ Page Language="C#" Title="Đăng ký :: Website Hỏi Đáp A-Z" 
MasterPageFile="~/MasterPages/AZ.Master" AutoEventWireup="true" 
CodeBehind="DangKy.aspx.cs" Inherits="WebsiteHoiDap.DangKy" %>
<%@ Register Src="~/Controls/ucDangKy.ascx" TagName="DangKy" TagPrefix="UC" %>

<asp:Content ID="Head" ContentPlaceHolderID="head" runat="server"> 
</asp:Content>

<asp:Content ID="Content_Left" ContentPlaceHolderID="ContentPlaceHolder_Left" runat="server">
    <div>
        <UC:DangKy ID="idDangKy" runat="server" />
   </div>
</asp:Content>
<asp:Content ID="Content_Siderbar" ContentPlaceHolderID="ContentPlaceHolder_Sidebar" runat="server">
</asp:Content>