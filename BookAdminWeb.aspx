<%@ Page Language="C#" MasterPageFile="~/BookAdminSite.Master" AutoEventWireup="true" CodeBehind="BookAdminWeb.aspx.cs" Inherits="图书管理系统.BookAdminWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
 
 &nbsp;<div style="float:right; height: 23px; width: 76px;">
     
        <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
            ForeColor="White" >添加图书</asp:LinkButton>
    &nbsp;</div>
    &nbsp;<div style="float:right; ">
        <center>
            <h1>
                图书信息 管理</h1><asp:GridView ID="GridView1" runat="server" 
                AutoGenerateColumns="False" BackColor="White"
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                Height="166px" Width="979px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting"
                OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" 
                OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                onpageindexchanging="GridView1_PageIndexChanging">
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <Columns>
                    <asp:BoundField DataField="BookId" HeaderText="图书编号" />
                    <asp:BoundField DataField="BookName" HeaderText="书名" />
                    <asp:BoundField DataField="BookPrice" HeaderText="价格" />
                    <asp:TemplateField HeaderText="类别">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSource='<%# bbbang() %>'
                                DataValueField="BookCategory" DataTextField="BookCategory">
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="出版社">
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSource='<%# bbang() %>' DataValueField="PreName"
                                DataTextField="PreName">
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="BookLendDate" HeaderText="借出日期" />
                    <asp:BoundField DataField="BookynLend" HeaderText="是否借出" />
                    <asp:BoundField DataField="BookynMake" HeaderText="是否预约" />
                    <asp:CommandField HeaderText="编辑" ShowEditButton="True" EditText="修改" />
                    <asp:CommandField HeaderText="删除图书" ShowDeleteButton="True" />
                </Columns>
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <EmptyDataTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EmptyDataTemplate>
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView>
               
        </center>
    </div>
    <div style="width: 976px">
    </div>
</asp:Content>
