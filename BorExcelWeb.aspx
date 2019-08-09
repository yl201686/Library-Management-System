<%@ Page Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true"
    CodeBehind="BorExcelWeb.aspx.cs" Inherits="图书管理系统.BorExcelWeb" Title="无标题页" EnableEventValidation = "false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            height: 229px;
        }
        .style3
        {
            height: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 550px;">
            <tr>
                <td style="background-color: #2161BD;" class="style2">
                    <span style="font-size: 23pt">读者信息Excel导出</span>
                    <asp:GridView ID="GridView_Excel" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        ForeColor="#333333" GridLines="None" AllowPaging="True" PageSize="4" OnRowCreated="GridView1_Excel_RowCreated"
                        Width="554px" Height="186px" OnRowDataBound="GridView_Excel_RowDataBound1" 
                        OnSelectedIndexChanged="GridView_Excel_SelectedIndexChanged">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="编号" ReadOnly="True" />
                            <asp:BoundField DataField="BorId" HeaderText="借书证号" />
                            <asp:BoundField DataField="BorName" HeaderText="姓名" />
                            <asp:BoundField DataField="BorClass" HeaderText="班级" />
                            <asp:BoundField DataField="BorTitle" HeaderText="职称" />
                            <asp:BoundField DataField="BorLoss" HeaderText="挂失" />
                            <asp:BoundField DataField="BorPassword" HeaderText="密码" />
                        </Columns>
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style3">
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Butt_Excel" runat="server" Text="导出Excel" Width="92px"
                        Height="27px" BorderColor="White" OnClick="labelzc_Click" 
                        BackColor="#2161BD" BorderStyle="Ridge" ForeColor="White">
                    </asp:Button>
                </td>
            </tr>
    </div>
</asp:Content>
