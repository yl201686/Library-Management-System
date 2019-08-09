<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="PressWeb.aspx.cs" Inherits="图书管理系统.PressWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 565px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align :center ">
<table border="1" cellpadding="0" cellspacing="0" style="width: 500px; height: 240px">
    <tr>
        <td style="background-color: Blue ;" class="style2">
             出版社类设置</td>
    </tr>
    <tr>
        <td class="style2">
<table border="0" cellpadding="0" cellspacing="0" style="width: 630px; height: 85px">
<tr>
    <td style="text-align: right;" class="style3">
        新增出版社名字：</td>
    <td style="text-align: left;" class="style4">
        &nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtCategory" runat="server" MaxLength="12"></asp:TextBox><span style="color: red">*<asp:RequiredFieldValidator
            ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCategory" ErrorMessage="该项不能为空" ValidationGroup="user"></asp:RequiredFieldValidator></span></td>
</tr>

<tr>
    <td style="text-align: right;" class="style5">
        新增出版社地址：</td>
    <td style="text-align: left;" class="style6">
        &nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" MaxLength="12"></asp:TextBox><span style="color: red">*<asp:RequiredFieldValidator
            ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCategory" ErrorMessage="该项不能为空" ValidationGroup="user"></asp:RequiredFieldValidator></span></td>
</tr>


<tr>
    <td style="text-align: right;" class="style3">
        新增出版社电话：</td>
    <td style="text-align: left;" class="style4">
        &nbsp; &nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" MaxLength="12"  onkeypress="if (event.keyCode<48 || event.keyCode>57) event.returnValue=false;" ></asp:TextBox><span style="color: red">*<asp:RequiredFieldValidator
            ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCategory" ErrorMessage="该项不能为空" ValidationGroup="user"></asp:RequiredFieldValidator></span></td>
</tr>


</table>
        </td>
    </tr>
    <tr>
        <td style="background-color: Blue;" class="style2">
        <asp:Button ID="btn" runat="server" Text="添 加" Width="105px" 
                OnClick="Button1_Click" ValidationGroup="user"/>
        &nbsp; &nbsp;
          </td> 
    </tr>
    </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" 
            onpageindexchanging="GridView1_PageIndexChanging" 
            onrowcancelingedit="GridView1_RowCancelingEdit" 
            onrowdatabound="GridView1_RowDataBound" onrowdeleting="GridView1_RowDeleting" 
            onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
            PageSize="4" onrowcreated="GridView1_RowCreated" Width="632px" 
            Height="186px" onselectedindexchanged="GridView1_SelectedIndexChanged">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="出版社编号" ReadOnly="True" />
            <asp:BoundField DataField="PreName" HeaderText="出版社名字" />
            <asp:BoundField DataField="PreAddress" HeaderText="出版社地址" />
            <asp:BoundField DataField="PreTel" HeaderText="联系电话" />
            <asp:CommandField ShowEditButton="True" HeaderText="修改" />
            <asp:CommandField ShowDeleteButton="True" HeaderText="删除" />
        </Columns>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
     </div>
</asp:Content>
