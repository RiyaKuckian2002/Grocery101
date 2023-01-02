<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 35%;
            height: 257px;
        }
        .style2
        {
            width: 227px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Login form"></asp:Label>
        <br />
        <br />
        <table bgcolor="#FFFFCC" border="1" class="style1">
            <tr>
                <td class="style2">
                    name<br />
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    password<br />
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember Password" />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" ForeColor="#FF3300" 
                        onclick="Button1_Click" Text="Login" />
                    <br />
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/homepage.aspx">HyperLink</asp:HyperLink>
    </form>
</body>
</html>
