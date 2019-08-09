<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="BookQueryWeb.aspx.cs" Inherits="图书管理系统.BookQueryWeb1" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



 <div style="text-align: center; width: 705px;">
        <center>
            <h1 style="width: 465px">
                图书信息查询</h1>
        </center>
    </div>
    <div style="text-align :center ">
    
         
            <table style="text-align: center; width: 708px;">
   <tbody>
          <tr>
             <td class="style4">
                      &nbsp;<asp:Label ID="Label3" runat="server" Text="查询方式：" ForeColor="Black"></asp:Label>
                      &nbsp;&nbsp;
<asp:DropDownList ID="DropDownList1" runat="server" Width="125px" Height="16px">
    <asp:ListItem>图书编号</asp:ListItem>
    <asp:ListItem>图书名称</asp:ListItem>
    <asp:ListItem>出版社名称</asp:ListItem>
</asp:DropDownList>
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox3" runat="server" Width="163px"></asp:TextBox>
                      &nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server"></asp:Label>
                      &nbsp; 
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查询" CausesValidation="False" 
                          Height="25px" Width="73px"/>             
                      &nbsp;             
            </td>
  </tr>
  </tbody>  
   <div style="text-align: center">
            
                  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" 
            PageSize="4" Width="632px" 
            Height="186px">
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <RowStyle BackColor="#EFF3FB" />
        <Columns>
                    <asp:BoundField DataField="BookId" HeaderText="图书编号" ReadOnly="True" />
                    <asp:BoundField DataField="BookName" HeaderText="书名" ReadOnly="True" />
                    <asp:BoundField DataField="BookPrice" HeaderText="价格" ReadOnly="True" />
                    <asp:BoundField DataField="BookCategory" HeaderText="类别" ReadOnly="True" />
                    <asp:BoundField DataField="BookPress" HeaderText="出版社" ReadOnly="True" />
                    <asp:BoundField DataField="BookLendDate" HeaderText="添加日期" ReadOnly="True" />
                    <asp:BoundField DataField="BookynLend" HeaderText="是否借出" ReadOnly="True" />
                    <asp:BoundField DataField="BookynMake" HeaderText="是否预约" ReadOnly="True" />
        </Columns>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#2461BF" />
        <AlternatingRowStyle BackColor="White" />
    </asp:GridView>
            
         
          </div>  
   
        
        
    </div>
</asp:Content>
