<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="PressExcelWeb.aspx.cs" Inherits="图书管理系统.PressExcelWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align :center ">
    <h2>出版社信息Excel导出</h2>
         <asp:GridView ID="GridView_Excel" runat="server" AutoGenerateColumns="False"  
               CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" 
            PageSize="4" onrowcreated="GridView1_Excel_RowCreated" Width="549px" 
            Height="186px" onrowdatabound="GridView_Excel_RowDataBound1">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="出版社编号" />
            <asp:BoundField DataField="PreName" HeaderText="出版社名字" />
            <asp:BoundField DataField="PreAddress" HeaderText="出版社地址" />
            <asp:BoundField DataField="PreTel" HeaderText="联系电话" />
        </Columns>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
       <asp:Button ID="labelzc"  runat="server" Text ="导出Excel" width="92px"  
                                            BackColor = "#0045AD"  Height="27px" BorderColor="#0045AD" 
                                            BorderStyle="None" onclick="labelzc_Click"></asp:Button>
    
    
    </div>
</asp:Content>
