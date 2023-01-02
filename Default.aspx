<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Online Grocery System"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" 
            Text="Welcome to online shopping website"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        No of products in your cart
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
&nbsp;
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddtoCart.aspx">show cart</asp:HyperLink>
        <br />
        <br />
        <asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2" DataKeyField="P_code" DataSourceID="SqlDataSource1" 
            GridLines="Both" RepeatColumns="3" RepeatDirection="Horizontal" 
            onitemcommand="DataList1_ItemCommand">
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <ItemTemplate>
                <table bgcolor="#FFCCFF" border="1" class="style1">
                    <tr>
                        <td style="text-align: center">
                            P_code
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("P_code") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            ProductName
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            Rs
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("amount") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="200px" 
                                ImageUrl='<%# Eval("ProductImage") %>' Width="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="addtocart" 
                                Height="68px" ImageUrl="~/images/addtocart.jfif" onclick="ImageButton1_Click" 
                                style="margin-top: 1px" Width="176px" CommandArgument='<%# Eval("P_code") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:OnlineGroceryConnectionString %>" 
            SelectCommand="SELECT * FROM [ShoppingCart]"></asp:SqlDataSource>
    
    </div>
    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/homepage.aspx">HyperLink</asp:HyperLink>
    </form>
</body>
</html>
