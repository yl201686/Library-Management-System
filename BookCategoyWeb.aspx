<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="BookCategoyWeb.aspx.cs" Inherits="图书管理系统.BookCategoyWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div style="text-align: center">
         <table border="1" cellpadding="0" cellspacing="0" 
             style="width: 600px; height: 179px">
                <tr>
                    <td colspan="2" style="width: 600px; height: 30px; background-color: silver;">
                         <span style="font-size: 18pt">图书类别设置</span></td>
                </tr>
                <tr>
                    <td colspan="2" class="style1">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 597px; height: 33px">
            <tr>
                <td style="text-align: right;" class="style3">
                    书籍类别：</td>
                <td style="text-align: left;" class="style2">
                    &nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtCategory" runat="server" MaxLength="12"></asp:TextBox><span style="color: red">*<asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCategory" ErrorMessage="该项不能为空" ValidationGroup="user"></asp:RequiredFieldValidator></span></td>
            </tr>
            </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="width: 600px; height: 30px; background-color: silver;">
                    <asp:Button ID="btn" runat="server" Text="添 加" Width="50px" OnClick="Button1_Click" 
                            ValidationGroup="user" Height="26px" />
                    &nbsp; &nbsp;
                      <asp:Button ID="btn1" runat="server" Text="查 询" ValidationGroup="user" Width="50px" OnClick="Button2_Click" />
                     </td> 
                </tr>
                <tr>
                                        <td colspan="3" style="text-align: left; background-color: silver;" 
                                            class="style4">
                                            查询结果：</td>
                                    </tr>
            </table>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="1"
            ForeColor="#333333" GridLines="None" Height="212px" 
            Width="595px" AllowPaging="True" PageSize="6" 
            style="margin-left: 0px" onpageindexchanging="GridView1_PageIndexChanging" 
             onrowcancelingedit="GridView1_RowCancelingEdit" 
             onrowdatabound="GridView1_RowDataBound" onrowdeleting="GridView1_RowDeleting" 
             onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="类别编号" ReadOnly="True" />
                <asp:BoundField DataField="BookCategory" HeaderText="书籍类别" />
                <asp:CommandField ShowEditButton="True" HeaderText="编辑数据"/>
                <asp:CommandField ShowDeleteButton="True" HeaderText="删除数据"/>
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
