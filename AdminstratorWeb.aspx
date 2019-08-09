<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="AdminstratorWeb.aspx.cs" Inherits="图书管理系统.AdminstratorWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 align="center">读者信息管理</h2>
    <center>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="1"
            ForeColor="#333333" GridLines="None" Height="212px" 
            Width="638px" AllowPaging="True" PageSize="6" 
            style="margin-left: 0px" onpageindexchanging="GridView1_PageIndexChanging" 
             onrowcancelingedit="GridView1_RowCancelingEdit" 
             onrowdatabound="GridView1_RowDataBound" onrowdeleting="GridView1_RowDeleting" 
             onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <Columns>
              <asp:BoundField DataField="ID" HeaderText="编号" ReadOnly="true"/>
            <asp:BoundField DataField="AdminName" HeaderText="名称" />
            <asp:BoundField DataField="AdminPwd" HeaderText="密码" />
            <asp:BoundField DataField="AdminTrouble" HeaderText="密保问题" />
            <asp:BoundField DataField="AdminAnserwer" HeaderText="密保答案" />
            <asp:CommandField ShowEditButton="True" HeaderText="修改" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="删除" />
            </Columns>
            <RowStyle BackColor="#EFF3FB" />
            <EditRowStyle BackColor="#2461BF" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
<%--    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:图书管理系统ConnectionString3 %>" 
        SelectCommand="SELECT * FROM [AdminTable]"></asp:SqlDataSource>--%>
    </center>
</asp:Content>
