<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTop5ThanhVien.ascx.cs" Inherits="WebsiteHoiDap.Controls.ucTop5ThanhVien" %>

<<<<<<< .mine
<asp:Panel ID="pnlTop5ThanVien" runat="server">
    <div class="boxWrapper">
    	<div class="box">
        	<div class="boxContent">
            	<div class="boxTitle">
                Top 5 thành viên 
                </div>
                <div class="boxContentMain">
                 <asp:GridView ID="grvTop5ThanhVien" runat="server" AllowPaging="false" ShowHeader="true" 
                        ShowFooter="false" GridLines="Horizontal" AutoGenerateColumns="false" BorderStyle="None"
                        Width="100%" CellSpacing="0" >
                        <Columns>
                            <asp:TemplateField ControlStyle-BorderStyle="None" >                                             
                                <ItemTemplate>
                                    <p class="link-2"><a href="#"> <%# Eval("TenTaiKhoan") %> </a></p>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>                 
                </asp:GridView>  
                </div>
            </div>
        </div>            	
    </div>
    <!--end .boxWrapper - Top 5 thành viên --> 
</asp:Panel> =======

<%--Edit by : Anh Vũ--%>
<asp:Panel ID = "idTop5ThanhVien" runat = "server">
<div class="content-list-question">
        <asp:GridView ID="grvTop5ThanhVien" runat="server" AllowPaging="false" ShowHeader="true" 
        ShowFooter="false" GridLines="Horizontal" AutoGenerateColumns="false" BorderStyle="None">
        <Columns>
            <asp:TemplateField>
                <HeaderTemplate>
                    <span class="link-3"><a href="#"> Top 5 Thành Viên : </a></span>
                </HeaderTemplate>                
                <ItemTemplate>
                    <span class="link-3"><a href="#"> <%# Eval("TenTaiKhoan") %> </a></span>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>      
            
        </asp:GridView>
    </div>
    </asp:Panel>>>>>>>> .r33
