<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="BookReportWeb.aspx.cs" Inherits="图书管理系统.BookReportWeb" Title="无标题页" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="text-align: center; height: 407px;">
     <h1>图书信息报表打印</h1>
     
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Height="320px" 
         Width="470px" Font-Names="Verdana" Font-Size="8pt">
        <LocalReport ReportPath="BookReport.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" 
                    Name="BookReportDataSet_BookTable" />
            </DataSources>
        </LocalReport>
    </rsweb:ReportViewer>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
         DeleteMethod="Delete" InsertMethod="Insert" 
         OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
         TypeName="图书管理系统.BookReportDataSetTableAdapters.BookTableTableAdapter" 
         UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_BookId" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookName" Type="String" />
            <asp:Parameter Name="BookPrice" Type="String" />
            <asp:Parameter Name="BookCategory" Type="String" />
            <asp:Parameter Name="BookPress" Type="String" />
            <asp:Parameter Name="BookLendDate" Type="DateTime" />
            <asp:Parameter Name="BookynLend" Type="String" />
            <asp:Parameter Name="BookynMake" Type="String" />
            <asp:Parameter Name="Original_BookId" Type="Int32" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="BookId" Type="Int32" />
            <asp:Parameter Name="BookName" Type="String" />
            <asp:Parameter Name="BookPrice" Type="String" />
            <asp:Parameter Name="BookCategory" Type="String" />
            <asp:Parameter Name="BookPress" Type="String" />
            <asp:Parameter Name="BookLendDate" Type="DateTime" />
            <asp:Parameter Name="BookynLend" Type="String" />
            <asp:Parameter Name="BookynMake" Type="String" />
        </InsertParameters>
     </asp:ObjectDataSource>
</div> 

</asp:Content>
