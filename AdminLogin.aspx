<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="图书管理系统.AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>图书管理系统-管理员登录</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
         <table cellspacing="0" cellpadding="0" width="900" align="center" border="0">
            <tbody>
                <tr>
                    <td style="height: 105px">
                        <img src="图片/login_1.jpg" border="0">
                                                  
                        </img>
                    </td>
                </tr>
                <tr>
                    <td background="图片/login_2.jpg" height="300">
                        <table height="300" cellpadding="0" width="900" border="0">
                            <tbody>
                                <tr>
                                    <td colspan="2">
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="labelzc"  runat="server" Text ="注册" width="57px"  
                                            BackColor = "#0038A5"  Height="27px" BorderColor="#0045AD" 
                                            BorderStyle="None" ForeColor="White" onclick="labelzc_Click"></asp:Button>
                                        <asp:Button ID="labelgm"  runat="server" Text="修改密码"  width="57px"  
                                            BackColor = "#00349C"  Height="27px" BorderColor="#00349C" 
                                            BorderStyle="None" onclick="labelgm_Click" ForeColor="White"></asp:Button>
                                    
                                    </td>
                                </tr>
                                <tr>
                                    <td width="360">
                                    </td>
                                    <td>
                                        <table cellspacing="0" cellpadding="2" border="0">
                                            <tbody>
                                                <tr>
                                                    <td style="height: 28px" width="80">
                                                        账号：
                                                    </td>
                                                    <td class="style1">
                                                       <asp:TextBox ID="txtID" runat="server" width="150"  ></asp:TextBox>
                                                    </td>
                                                    <td style="height: 28px" width="370">
                                                     <span style="color: red"><asp:RequiredFieldValidator
                                  ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtID" ErrorMessage="该项不能为空" ValidationGroup="user"></asp:RequiredFieldValidator>
                                  </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 28px" width="80">
                                                        密码：
                                                    </td>
                                                    <td class="style1">
                                                        <asp:TextBox ID="txtPwd" TextMode="Password" runat="server" Width="150px"></asp:TextBox>
                                                    </td>
                                                    <td style="height: 28px" width="370">
                                                                      <span style="color: red"><asp:RequiredFieldValidator
                                  ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPwd" ErrorMessage="该项不能为空" ValidationGroup="user"></asp:RequiredFieldValidator>
                                  </span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 18px">
                                                    </td>
                                                    <td class="style2">
                                                    </td>
                                                    <td style="height: 18px">
                                                      <span style="color: red"><asp:Label ID ="lableyz" runat="server" Text =""></asp:Label></span>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                      
                                                        &nbsp;</td>
                                                    <td class="style3">
                                                        <asp:ImageButton ID="ibtn" ImageUrl="图片/login_button.gif" runat="server" ValidationGroup="user"
                                                            onclick="ibtn_Click" />

                                                    </td> 
                                          
                                                </tr>
                                              <td colspan="4" class="style4">
                                                  &nbsp;</td>
                                            </tbody>
                                        </table>
                                     
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="图片/login_3.jpg" border="0">
                    </td>
                </tr>
            </tbody>
        </table>
    
    </div>
    </form>
</body>
</html>
