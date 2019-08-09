<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="PressQueryWeb.aspx.cs" Inherits="图书管理系统.PressQueryWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 741px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
    <div style="text-align: center">
<h2>出版社信息查询</h2>

<table style="text-align: center">
   <tbody>
          <tr>
             <td colspan="2" bgcolor="#527DD6" class="style2">
                      &nbsp;<asp:Label ID="Label3" runat="server" Text="查询方式：" ForeColor="White"></asp:Label>
&nbsp;&nbsp;
<asp:DropDownList ID="DropDownList1" runat="server" Width="125px" Height="16px">
    <asp:ListItem>出版社名字</asp:ListItem>
    <asp:ListItem>出版社地址</asp:ListItem>
    <asp:ListItem>出版社电话</asp:ListItem>
</asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox3" runat="server" Width="163px"></asp:TextBox>
                      &nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                      &nbsp;
                      &nbsp;
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查询" CausesValidation="False"
    Style="height: 26px" Height="25px" Width="73px"  ValidationGroup="user"/>             
            </td>
  </tr>
  </tbody> 
  </table>
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="1"
            ForeColor="#333333" GridLines="None" Height="212px" 
            Width="644px" AllowPaging="True" PageSize="6" 
            style="margin-left: 0px; margin-top: 0px;" onpageindexchanging="GridView1_PageIndexChanging" 
             onrowcancelingedit="GridView1_RowCancelingEdit" 
             onrowdatabound="GridView1_RowDataBound" onrowdeleting="GridView1_RowDeleting" 
             onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
                onsorting="GridView1_Sorting">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <Columns>
           <asp:BoundField DataField="ID" HeaderText="出版社编号" ReadOnly="True" />
        <asp:BoundField DataField="PreName" HeaderText="出版社名字" />
        <asp:BoundField DataField="PreAddress" HeaderText="出版社地址" />
        <asp:BoundField DataField="PreTel" HeaderText="联系电话" />
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

    
    </div>

</asp:Content>
