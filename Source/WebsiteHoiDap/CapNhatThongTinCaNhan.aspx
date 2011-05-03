<%@ Page Language="C#" Title="Cập nhật thông tin cá nhân :: Website Hỏi Đáp A-Z " MasterPageFile="~/MasterPages/AZ.Master" AutoEventWireup="true" CodeBehind="CapNhatThongTinCaNhan.aspx.cs" Inherits="WebsiteHoiDap.CapNhatThongTinCaNhan" %>
<%@ Register Src="~/Controls/ucCapNhatThongTinCaNhan.ascx" TagName="CapNhat" TagPrefix="UC" %>

<asp:Content ID="Content_Left" ContentPlaceHolderID="ContentPlaceHolder_Left" runat="server">
    <div>
        <UC:CapNhat id="idCapNhatThongCaNhan" runat="server"></UC:CapNhat>
    </div>
</asp:Content>

