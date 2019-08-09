<%@ Page Language="C#" MasterPageFile="~/BookAdminSite.Master" AutoEventWireup="true" CodeBehind="QuestionWed.aspx.cs" Inherits="图书管理系统.QuestionWed" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            width: 600px;
        }
        .style5
        {
            width: 490px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h2 align="center" style="width: 980px">修改密码</h2>
    <table align="center" style="width: 977px; margin-right: 4px">
    <tr>
    <td align="right" class="style5">账号:</td>
    <td class="style4"><asp:TextBox ID="txtID" runat="server" Width="130px"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style5">密保问题:</td>
    <td class="style4"><asp:TextBox ID="txtTrouble" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style5">密保答案:</td>
    <td class="style4"><asp:TextBox ID="txtAnserwer" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td colspan="2" align="center">
        <asp:Button ID="btnSubmit" runat="server" Text="确认" 
            style="height: 26px" onclick="btnSubmit_Click" Width="101px" /></td>
    </tr>
    </table>

</asp:Content>
