<%@ Page Language="C#" MasterPageFile="~/BookAdminSite.Master" AutoEventWireup="true" CodeBehind="BookInsertWeb.aspx.cs" Inherits="图书管理系统.BookInsertWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="text-align :center ">
      <h1 style="width: 982px">添加图书</h1>
    <center style="width: 982px">图书编号：<asp:TextBox ID="TextBox1" style="ime-mode:disabled ;" runat="server" Height="21px" Width="143px" onkeypress="if(event.keyCode<48||event.keyCode>57){event.returnValue=false ;}"></asp:TextBox>  
       </center> 
    </div>
    <div><center style="width: 982px">
       书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 名： <asp:TextBox ID="TextBox2" runat="server" Height="21px" Width="143px"></asp:TextBox>
            </center></div>
            
    <div><center style="width: 982px">价&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;格： <asp:TextBox ID="TextBox3" style="ime-mode:disabled" runat="server" Height="21px" Width="143px" onkeypress="if((event.keyCode<48||event.keyCode>57)&&event.keyCode!=46){event.returnValue=false ;}"></asp:TextBox></center></div>
    <div><center style="width: 982px">类&nbsp;&nbsp;&nbsp;&nbsp; 别 ：<asp:DropDownList ID="DropDownList2" runat="server" Height="21px" Width="153px">
        </asp:DropDownList>
            </center></div>
    <div><center style="width: 981px">出 版 社：<asp:DropDownList ID="DropDownList1" runat="server" Height="21px" Width="153px">
        </asp:DropDownList>
            </center></div>
    <div style="width:599px; text-align:right; float:left; height: 26px; margin-bottom: 0px;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="添加图书" Width="96px" 
                OnClientClick="return LoginCheck();" onclick="Button1_Click" 
                style="height: 26px"/>
           <asp:Button ID="Button2" runat="server" Text="取消添加" Width="105px" 
                onclick="Button2_Click" style="margin-left: 1px" />
</div><div style="width:983px; text-align:left; float:right; height: 26px;">
    </div>

</asp:Content>
