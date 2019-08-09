<%@ Page Language="C#" MasterPageFile="~/BookAdminSite.Master" AutoEventWireup="true" CodeBehind="BorAddtoWeb.aspx.cs" Inherits="图书管理系统.BorAddtoWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style4
        {
            width: 690px;
        }
        .style5
        {
            width: 578px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h2 align="center" style="width: 982px" >添加读者信息</h2>
    <table align="center" style="width: 982px">
    <tr>
    <td align="right" class="style5">
        <span style="font-size:10.5pt;mso-bidi-font-size:12.0pt;
font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-family:&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;
mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">借书证号</span>:</td>
    <td class="style4">
        <asp:TextBox ID="BorId" runat="server"  onkeypress="if (event.keyCode<48 || event.keyCode>57) event.returnValue=false;"  
            Width="128px"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style5"> 姓&nbsp;&nbsp;&nbsp;&nbsp; 名:</td>
    <td class="style4"><asp:TextBox ID="BorName" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style5">班&nbsp;&nbsp;&nbsp;&nbsp; 级:</td>
    <td class="style4"><asp:TextBox ID="BorClass" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td align="right" class="style5">职&nbsp;&nbsp;&nbsp;&nbsp; 称:</td>
    <td class="style4"><asp:DropDownList ID="BorTitle" runat="server" Width="128px" 
                                                             
             Height="16px"></asp:DropDownList></td>
    </tr>
    <tr>
    <td align="right" class="style5">密&nbsp;&nbsp;&nbsp;&nbsp; 码:</td>
    <td class="style4"><asp:TextBox ID="BorPassword" runat="server"></asp:TextBox></td>
    </tr>
        <tr>
    <td align="right" class="style5">确认密码:</td>
    <td class="style4"><asp:TextBox ID="BorPass" runat="server"></asp:TextBox></td>
    </tr>
    <tr>
    <td colspan="2" align="center">
        <asp:Button ID="btnSubmit" runat="server" Text="确认" 
            onclick="btnSubmit_Click" Width="89px" /></td>
    </tr>
    </table>

</asp:Content>
