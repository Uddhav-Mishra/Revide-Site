<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Login_page.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        blink
        {
        }
    </style>
</head>
<body>
    <h1>
        Login to the website
    </h1>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="lblusername" runat="server" Style="margin-right: 20px" Text="Username"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblpassword" runat="server" Text="password"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtpassword" type="password" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Login_button" Style="margin-top: 20px; height: 26px;" runat="server"
            Text="Login" OnClick="Login_button_Click" />
    </div>
    </form>
</body>
</html>