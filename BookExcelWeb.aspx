<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="BookExcelWeb.aspx.cs" Inherits="图书管理系统.BookExcelWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div style="width: 691px">
        <center>
            <h1 style="width: 650px">
                图书信息Excel导出</h1>
        </center>
    </div>
    <div>
        <center style="width: 706px; height: 227px;"166px""  >
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White"
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                Height="166px" Width="609px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
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
                </Columns>
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <EmptyDataTemplate>
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                </EmptyDataTemplate>
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <AlternatingRowStyle BackColor="#F7F7F7" />
            </asp:GridView>
            
           <div style="text-align: center">
                    <asp:Button ID="Butt_Excel" runat="server" Text="导出Excel" Width="92px"
                        Height="27px" BorderColor="White" OnClick="labelzc_Click" 
                        BackColor="#2161BD" BorderStyle="Ridge" ForeColor="White">
                    </asp:Button>
          </div>  
        </center>
        
        
    </div>

</asp:Content>
