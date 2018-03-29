<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="Revide.UserControls.WebUserControl1" %>
    
     <script>
         function hi() {
             document.getElementById('<%=logmeout2.ClientID %>').click();
         }
    </script>

    <style>
    .logout
    {
        top: 0px;
    left: 775px;
    position: relative;
    height: 50px;
    width: 90px;
    background-color: transparent;
    border: none;
   
    }
    .hideme
    { top: 0px;
    left: 775px;
    position: relative;
    height: 50px;
    width: 90px;
    background-color: transparent;
        display:none !important;
        border: none;
        }
        .showme
        { top: 0px;
    left: 775px;
    position: relative;
    height: 50px;
    width: 90px;
    background-color: transparent;
            display: block !important;
            border: none;}
    
    </style>
<nav class="navbar navbar-inverse navbar-fixed-top" data-offset-top="197">
        <div class="container-fluid">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a href="Homepage.aspx">
                    <img width="100px" height="50px" src="images/revide.png"></a>

            </div>

            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">

                    <li><a href="AllVideos.aspx">All Videos</a></li>
                    <li><a href="VideoCategory.aspx">Videos by category</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Community <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                         <%--   <li><a href="#">post question</a></li>
                            <li><a href="#">trending</a></li>--%>
                            <li><a href="Chat.aspx">Chat</a></li>

                        </ul>
                    </li>
                </ul>
                <ul id="beforeLogin" runat="server" class="nav navbar-nav navbar-right">
                    <li><a id="signInHref" runat="server" href="UserLogin.aspx"><span class="glyphicon glyphicon-user"></span> <asp:Literal ID="SignIn" runat="server"></asp:Literal>  </a></li>
                    <li><a id="signUpHref" runat="server" href="UserLogin.aspx" onclick="javascript:hi()"><span class="glyphicon glyphicon-log-in"></span> <asp:Literal ID="SignUp" runat="server"></asp:Literal> </a></li>
                </ul>
                <ul id="afterLogin" runat="server" visible="false" style="color:White;" class="nav navbar-nav navbar-right">
                    <li><asp:Label ID="lblUser" style="color:White;" runat="server"></asp:Label></li>
                </ul>
                 <asp:Button ID="logmeout2" runat="server" onclick="LogMeOut" Text="" class="logout" /> 
            </div>
        </div>
    </nav>
    
    </br> </br></br>

  