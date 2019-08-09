<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminAdmin.aspx.cs" Inherits="图书管理系统.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>欢迎管理员登录</title>
    <style type="text/css">
        .style1
        {
            height: 373px;
        }
        .style2
        {
            width: 333px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
         <table cellspacing="0" cellpadding="0" align="center" border="0" 
             style="width: 862px">
            <tbody>
                <tr>
                    <td style="height: 105px">
                        <img src="图片/shouye.jpg" border="0" 
                            style="height: 174px; width: 907px; margin-right: 0px;">
                                                  
                        </img>
                    </td>
                </tr>
                
     
                <tr>
                    <td background="图片/shouye-2.jpg" class="style1" >
                                            <table height="300" cellpadding="0" border="0" 
                                                style="width: 234px; margin-bottom: 0px">
                                <tr style="color: red" background="图片/mew-2.jpg">
                                    <td class="style2" >
                                        <asp:TreeView ID="TreeView1" runat="server" DataSourceID="SiteMapDataSource1"  
                                           Height="265px" Width="252px" ForeColor="White" BackColor="#0055BD">
                                            <DataBindings>
                                                <asp:TreeNodeBinding DataMember="SiteMapNode" NavigateUrlField="Url" Target="_self" 
                                                     TextField="Title" ToolTipField="Description" />
                                            </DataBindings>
                                        </asp:TreeView>
                                    
                                        <asp:SiteMapDataSource ID="SiteMapDataSource1" runat="server" />
                                    
                                    </td>
                                </tr>
                        </table>
                    
                        </td>
                </tr>
                <tr>
                    <td>
                        <img src="图片/login_3.jpg" border="0" style="width: 908px; margin-top: 3px">
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
