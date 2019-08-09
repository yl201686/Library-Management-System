<%@ Page Language="C#" MasterPageFile="~/BookAdminSite.Master" AutoEventWireup="true" CodeBehind="PrssWordWeb.aspx.cs" Inherits="图书管理系统.PrssWordWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            width: 611px;
        }
        .style5
        {
            width: 549px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 align="center" style="width: 982px" >修改密码</h2>
    <table align="center" style="width: 982px">
    <tr>
    <td align="right" class="style5">账号:</td>
    <td class="style4"><asp:TextBox ID="txtID" runat="server" Enabled="false" 
            Width="128px"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style5"> 名称:</td>
    <td class="style4"><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style5">密保问题:</td>
    <td class="style4"><asp:TextBox ID="txtTrouble" runat="server" Enabled="false"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style5">密保答案:</td>
    <td class="style4"><asp:TextBox ID="txtAnserwer" runat="server" Enabled="false"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style5">新密码:</td>
    <td class="style4"><asp:TextBox ID="txtNewPwd" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style5">确认新密码:</td>
    <td class="style4"><asp:TextBox ID="txtPwd" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td colspan="2" align="center">
        <asp:Button ID="btnSubmit" runat="server" Text="确认" 
            onclick="btnSubmit_Click" Width="89px" /></td>
    </tr>
    </table>
</asp:Content>
