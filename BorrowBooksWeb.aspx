<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="BorrowBooksWeb.aspx.cs" Inherits="图书管理系统.BorrowBooksWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="text-align: center">
   <h1>借书管理</h1>
        <center>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
                AutoGenerateColumns="False" Width="651px" 
                OnRowCommand="GridView1_RowCommand" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="BookId" HeaderText="图书编号" />
                    <asp:BoundField DataField="BookName" HeaderText="书  名" />
                    <asp:BoundField DataField="BookCategory" HeaderText="类 别" />
                    <asp:BoundField DataField="BookPress" HeaderText="出版社" />
                    <asp:TemplateField HeaderText="借书">
                        <ItemTemplate>
                            <asp:Button ID="btn_update" Text="借书" runat="server" 
                                CommandArgument='<%# Eval("BookId") %>' 
                                Enabled='<%# Convert.ToBoolean(Eval("BookynLend").ToString().Trim() == "否"?"true":"false") %>' />
                                <%--<asp:Label ID="lbl_flg" runat="server" Text='<%# Eval("BookynLend").ToString().Trim() == "否"?"true":"false" %>'></asp:Label>--%>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </center>
    </div>
</asp:Content>
