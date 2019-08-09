<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="MakeBorrWeb.aspx.cs" Inherits="图书管理系统.MakeBorrWeb" Title="无标题页" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <center>
            <h1 style="width: 712px">预约借书</h1>
            
            <div style="width: 711px">
            
                                &nbsp;<asp:Label ID="Label3" runat="server" Text="借书证号："></asp:Label>
                      &nbsp;&nbsp;
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox3" runat="server" Width="163px"  onkeypress="if (event.keyCode<48 || event.keyCode>57) event.returnValue=false;" ></asp:TextBox>
                      &nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
                      &nbsp; 
<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="查询" CausesValidation="False" 
                          Height="25px" Width="73px"  ValidationGroup="user"/> 
            </div>
            
                <br />
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" 
                ForeColor="#333333" GridLines="None"
                AutoGenerateColumns="False" Width="714px" 
                onrowcommand="GridView1_RowCommand" onselectedindexchanging="GridView1_SelectedIndexChanging" 
              >
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                 <asp:BoundField DataField="BookId" HeaderText="图书编号" />
                    <asp:BoundField DataField="BookName" HeaderText="书  名" />
                    <asp:BoundField DataField="BookCategory" HeaderText="类 别" />
                    <asp:BoundField DataField="BookPress" HeaderText="出版社" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btn_update" Text="借书" runat="server" CommandArgument='<%# Eval("BookId") %>'
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
