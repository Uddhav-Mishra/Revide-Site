<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="feedbackprogramme.WebForm3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="repeater_result" runat="server">
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            ques. ________
                            <%#Eval("questionid") %>
                        </td>
                        <td>
                            <%#Eval("question") %>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            option selected is --
                        </td>
                        <td>
                            <%#Eval("response") %>>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    </form>
</body>
</html>