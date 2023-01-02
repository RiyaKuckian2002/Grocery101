<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 58%;
            height: 361px;
            margin-right: 0px;
        }
        .style2
        {
            height: 26px;
            width: 319px;
        }
        .style3
        {
            width: 368px;
            text-align: center;
        }
        .style4
        {
            width: 368px;
            height: 23px;
        }
        .style5
        {
            width: 368px;
            text-align: center;
            height: 26px;
        }
        .style6
        {
            width: 300px;
        }
        .style7
        {
            height: 26px;
            width: 300px;
        }
        .style8
        {
            width: 300px;
            height: 23px;
        }
        .style9
        {
            height: 23px;
            width: 319px;
        }
        .style10
        {
            width: 368px;
            text-align: center;
            height: 51px;
        }
        .style11
        {
            width: 300px;
            height: 51px;
        }
        .style12
        {
            height: 51px;
            width: 319px;
        }
        .style13
        {
            width: 319px;
        }
        .style14
        {
            width: 368px;
            text-align: center;
            height: 73px;
        }
        .style15
        {
            width: 300px;
            height: 73px;
        }
        .style16
        {
            width: 319px;
            height: 73px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#FF3300" 
            Text="Grocery store system"></asp:Label>
        <br />
        <br />
        Registration Page for new users<br />
        <br />
        <asp:Label ID="Label2" runat="server" Font-Size="Medium" ForeColor="#FF5050" 
            Text="Registration form"></asp:Label>
        <br />
        <br />
        <table bgcolor="#99CCFF" border="1" class="style1">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                </td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style5">
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                </td>
                <td class="style2">
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <br />
                </td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label6" runat="server" Text="Phone_no"></asp:Label>
                </td>
                <td class="style6">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <br />
                </td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label7" runat="server" Text="Gender"></asp:Label>
                </td>
                <td class="style6">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
                <td class="style13">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style14">
                    <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
                </td>
                <td class="style15">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label11" runat="server" ForeColor="#FF3300"></asp:Label>
                </td>
                <td class="style16">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Password is compulsory"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style10">
                    <asp:Label ID="Label9" runat="server" Text="Confirm Password"></asp:Label>
                </td>
                <td class="style11">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
                </td>
                <td class="style12">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                        ErrorMessage="Reconfirm password"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                </td>
                <td class="style8">
                    <asp:Button ID="Button1" runat="server" ForeColor="#009933" 
                        onclick="Button1_Click" Text="Register" />
                    <br />
                    <br />
                    <asp:Label ID="Label10" runat="server" ForeColor="#FF3300"></asp:Label>
                </td>
                <td class="style9">
                </td>
            </tr>
        </table>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/homepage.aspx">HyperLink</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
