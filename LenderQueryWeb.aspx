<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="LenderQueryWeb.aspx.cs" Inherits="图书管理系统.LenderWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 630px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <center>
            <span style="font-size: 23pt">读者信息查询</span>
            <table style="text-align: center">
   <tbody>
          <tr>
             <td colspan="2" bgcolor="#527DD6" class="style2">
                      <asp:Label ID="Label3" runat="server" Text="查询方式：" ForeColor="White"></asp:Label>

<asp:DropDownList ID="DropDownList1" runat="server" Width="167px" Height="16px">
    <asp:ListItem>借书证号</asp:ListItem>
    <asp:ListItem>读者名字</asp:ListItem>
    <asp:ListItem>读者班级</asp:ListItem>
</asp:DropDownList>
                      &nbsp;
<asp:TextBox ID="TextBox3" runat="server" Width="163px"></asp:TextBox>
                      &nbsp;&nbsp;
                      <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查询" CausesValidation="False"
    Style="height: 26px" Height="22px" Width="80px" ValidationGroup="usb" />             
            </td>
  </tr>
  </tbody> 
  </table>
            
            
            
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="1"
            ForeColor="#333333" GridLines="None" Height="212px" 
            Width="638px" AllowPaging="True" PageSize="6" 
            style="margin-left: 0px" onpageindexchanging="GridView1_PageIndexChanging" 
             onrowcancelingedit="GridView1_RowCancelingEdit" 
             onrowdatabound="GridView1_RowDataBound" onrowdeleting="GridView1_RowDeleting" 
             onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                onsorting="GridView1_Sorting">
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <Columns>
      
      
         <asp:BoundField DataField="ID" HeaderText="编号" ReadOnly="True" />
            <asp:BoundField DataField="BorId" HeaderText="借书证号" />
            <asp:BoundField DataField="BorName" HeaderText="姓名" />
            <asp:BoundField DataField="BorClass" HeaderText="班级" />
            <asp:BoundField DataField="BorTitle" HeaderText="职称" />
            <asp:BoundField DataField="BorLoss" HeaderText="挂失" />
            <asp:BoundField DataField="BorPassword" HeaderText="密码" />
            </Columns>
            <RowStyle BackColor="#EFF3FB" />
            <EditRowStyle BackColor="#2461BF" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>

          
            
            
            </center>
</asp:Content>
