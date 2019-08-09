<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="ReafersTableWeb.aspx.cs" Inherits="图书管理系统.ReafersTableWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
         <table border="1" cellpadding="0" cellspacing="0" style="width: 600px; height: 260px">
                <tr>
                    <td colspan="2" style="width: 600px; height: 30px; background-color: silver;">
                         <span style="font-size: 18pt">读者类别设置</span></td>
                </tr>
                <tr>
                    <td colspan="2" class="style1">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 591px; height: 52px">
            <tr>
                <td style="width: 150px; text-align: right;">
                    读者类别：</td>
                <td style="width: 400px; height: 35px; text-align: left;">
                    &nbsp; &nbsp;&nbsp;<asp:TextBox ID="txtCategory" runat="server" MaxLength="12" Height="23px"></asp:TextBox><span style="color: red">
                    *<asp:RequiredFieldValidator
                        ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCategory" ErrorMessage="该项不能为空" ValidationGroup="user"></asp:RequiredFieldValidator></span></td>
            </tr>
            </table>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="background-color: silver;" class="style3">
                    <asp:Button ID="btn" runat="server" Text="添 加" Width="117px" 
                            OnClick="Button1_Click" ValidationGroup="user" style="height: 26px" />
                    &nbsp; &nbsp;
                      <asp:Button ID="btn1" runat="server" Text="查 询"  Width="123px" 
                            OnClick="Button2_Click" ValidationGroup="user" />
                     </td> 
                </tr>
                <tr>
                                        <td colspan="3" style="text-align: left; background-color: silver;" 
                                            class="style2">
                                            查询结果：<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="1"
            ForeColor="#333333" GridLines="None" Height="212px" 
            Width="595px" AllowPaging="True" PageSize="3" 
            style="margin-left: 0px; margin-top: 11px;" onpageindexchanging="GridView1_PageIndexChanging" 
             onrowcancelingedit="GridView1_RowCancelingEdit" 
             onrowdatabound="GridView1_RowDataBound" onrowdeleting="GridView1_RowDeleting" 
             onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
                                                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                                                onsorting="GridView1_Sorting">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="类别编号" ReadOnly="True" />
                <asp:BoundField DataField="ReaCategory" HeaderText="读者类别" />
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
                                        </td>
                                    </tr>
            </table>
            
    </div>
</asp:Content>
