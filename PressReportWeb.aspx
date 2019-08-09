<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="PressReportWeb.aspx.cs" Inherits="图书管理系统.PressReportWeb" Title="无标题页" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align :center; height: 465px;">
    
    
    
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
            Font-Size="8pt" Height="330px" Width="470px">
            <localreport reportpath="PressReport.rdlc">
                <datasources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" 
                        Name="图书管理系统DataSet_PressTable" />
                </datasources>
            </localreport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="GetData" 
            TypeName="图书管理系统.图书管理系统DataSetTableAdapters.PressTableTableAdapter">
        </asp:ObjectDataSource>
    </div>
</asp:Content>
