<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentFeedback.aspx.cs"
    Inherits="Login_page.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:HiddenField ID="hdQuestionId" runat="server" />
        <asp:Label ID="lblQuestion" runat="server" Text=""></asp:Label>
        <br />
        <asp:RadioButton ID="lblChoice1" runat="server" GroupName="rbtnOptions" />
        <br />
        <asp:RadioButton ID="lblChoice2" runat="server" GroupName="rbtnOptions" />
        <br />
        <asp:RadioButton ID="lblChoice3" runat="server" GroupName="rbtnOptions" />
        <br />
        <asp:RadioButton ID="lblChoice4" runat="server" GroupName="rbtnOptions" />
        <br />
        <asp:Button ID="btnPrevious" runat="server" OnClick="btnPrevious_Click" Text="Previous"
            Enabled="false" />
        <asp:Button ID="btnNext" runat="server" OnClick="btnNext_Click" Text="Next." Enabled="true" />
        <asp:Button ID="btnSubmit" runat="server" OnClick="Button3_Click" Text="Submit" Enabled="false" />
    </div>
    </form>
</body>
</html>