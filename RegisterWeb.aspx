<%@ Page Language="C#" MasterPageFile="~/BookAdminSite.Master" AutoEventWireup="true" CodeBehind="RegisterWeb.aspx.cs" Inherits="图书管理系统.RegisterWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            width: 553px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h2 align="center" style="width: 981px">用户注册</h2>
    <table align="center" style="width: 981px; height: 160px">
    <tr>
    
    <td align="right">账号:</td>
    <td class="style4"><asp:TextBox ID="txtID" runat="server" 
            onkeypress="if (event.keyCode<48 || event.keyCode>57) event.returnValue=false;" 
            Width="129px"></asp:TextBox></td>
    </tr>
     <tr>
    <td align="right">名称:</td>
    <td class="style4"><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
    </tr>
     <tr>
    <td align="right">密码:</td>
    <td class="style4"><asp:TextBox ID="txtPwd" runat="server"></asp:TextBox></td>
    </tr>
     <tr>
    <td align="right">密保问题:</td>
    <td class="style4"><asp:TextBox ID="txtTrouble" runat="server"></asp:TextBox></td>
    </tr>
     <tr>
    <td align="right">密保答案:</td>
    <td class="style4"><asp:TextBox ID="txtAnswer" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td colspan="2" align="center">
        <asp:Button ID="btnRegister" runat="server" 
            Text="注册" onclick="btnRegister_Click" Width="91px" 
            style="height: 26px; margin-top: 0px" /></td>
    </tr>
    </table>

</asp:Content>
