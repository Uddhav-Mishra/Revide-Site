<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="Revide.Chat" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<body>
<style>
    #chatText
    {
        margin : auto;
        background: white;
    }
    .chatTextBox
    {
            position: relative;
            left: 425px;
     }
     body
     {
         overflow-x: hidden;
         background-image: url("http://previews.123rf.com/images/tovovan/tovovan1112/tovovan111200178/11430881-Colorful-chatting-clouds-seamless-background--Stock-Vector.jpg");
      }
</style>
    <form id="form1" runat="server">
    <div style="height: 500px; width: 500px; overflow: scroll;" id="chatText">
        <asp:Repeater ID="rpt_chat" runat="server">
            <ItemTemplate>
                <p class='chat <%# DataBinder.Eval(Container.DataItem, "SentID") %>'>
                    <%# DataBinder.Eval(Container.DataItem, "chat") %></p>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div>
        <br />
        <div class="chatTextBox">
            <asp:TextBox ID="chatBox" runat="server" Width="400px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" Width="100px" />
        </div>
       
        <br />
      <%--  <asp:TextBox ID="userID" runat="server" Width="27px">1</asp:TextBox>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Reset" Width="253px" />--%>
    </div>
    </form>
    <script type="text/javascript">
        $(".chat").each(function (index, item) {
            var sendID = $(item).attr('class').split(' ')[1];
            $(item).attr('data-content', 'User ' + sendID + ': ');
            //console.log();
            if (sendID == parseInt('<%= Session["userID"]%>')) {
                $(item).css("text-align", "right");
                //                $(item).css("background", "#ddd");
            } else {
                $(item).css("text-align", "left");
                $(item).css("background", "#ccc");
                $(item).css("color", "red");
            }

        });

        var d = $("#chatText");
        d.scrollTop(d.prop("scrollHeight"));
    </script>
    <style>
        .chat:before
        {
            content: attr(data-content);
        }
    </style>
</body>
</html>
