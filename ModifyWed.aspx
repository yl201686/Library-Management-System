<%@ Page Language="C#" MasterPageFile="~/BookAdminSite.Master" AutoEventWireup="true" CodeBehind="ModifyWed.aspx.cs" Inherits="图书管理系统.ModifyWed" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style5
        {
            width: 575px;
        }
        .style6
        {
            width: 631px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2 align="center" style="width: 983px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 修改密码</h2>
    <table align="center" style="width: 982px">
    <tr>
    <td align="right" class="style5">用户名:</td>
    <td class="style6"><asp:TextBox ID="txtID" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style5">名称:</td>
    <td class="style6"><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style5">原密码:</td>
    <td class="style6"><asp:TextBox ID="txtOldpwd" runat="server"></asp:TextBox><asp:HyperLink ID="HyperLink1" runat="server" Text="忘记密码" ForeColor="Blue" NavigateUrl="~/Question.aspx"></asp:HyperLink></td>
        
    </tr>
    <tr>
    <td align="right" class="style5">新密码:</td>
    <td class="style6"><asp:TextBox ID="txtNewpwd" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style5">确认新密码:</td>
    <td class="style6"><asp:TextBox ID="txtPwd" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td  colspan="2" align="center">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnModify" runat="server" Text="修改" 
            onclick="btnModify_Click" Width="99px" /></td>
    </tr>
    </table>

</asp:Content>
