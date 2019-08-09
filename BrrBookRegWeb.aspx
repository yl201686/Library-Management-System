<%@ Page Language="C#" MasterPageFile="~/BookAdminSite.Master" AutoEventWireup="true" CodeBehind="BrrBookRegWeb.aspx.cs" Inherits="图书管理系统.BrrBookRegWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


 <div>
        <center>
            <h1 style="width: 981px">
                借书登记</h1>
        </center>
    </div>
    <div>
        <center style="width: 981px">
            图书编号：<asp:TextBox ID="txt_bookid" runat="server" Height="21px" Width="143px" 
                Enabled="false" ontextchanged="txt_bookid_TextChanged"></asp:TextBox>
        </center>
    </div>
    <div>
        <center style="width: 982px">
            书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 名：
            <asp:TextBox ID="txt_bookname" runat="server" Height="21px" Width="143px" Enabled="false"></asp:TextBox>
        </center>
    </div>
    <div>
        <center style="width: 982px">
            借书证号：<asp:TextBox ID="txt_broid" Style="ime-mode: disabled;" runat="server" Height="21px"
                Width="143px" onkeypress="if(event.keyCode<48||event.keyCode>57){event.returnValue=false ;}"
                AutoPostBack="True" ></asp:TextBox>
        </center>
    </div>
    <div>
        <center style="width: 979px">
            姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 名：
            <asp:TextBox ID="txt_broname" runat="server" Height="21px" Width="143px" Enabled="false"></asp:TextBox>
        </center>
    </div>
    <div>
        <center style="width: 978px">
            <asp:Button ID="btn_add" runat="server" Text="登 记 借 书" Width="180px" 
                Enabled="false" onclick="btn_add_Click"
                />
        </center>
    </div>
</asp:Content>
