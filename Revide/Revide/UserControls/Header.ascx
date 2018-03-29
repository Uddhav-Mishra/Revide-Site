<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="Revide.UserControls.WebUserControl1" %>
    
   

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
                <ul class="nav navbar-nav">0

                    <li><a href="AllMovies.aspx">All movies</a></li>
                    <li><a href="VideoCategory.aspx">Movies by category</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Community <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">post question</a></li>
                            <li><a href="#">trending</a></li>

                        </ul>
                    </li>
                </ul>
                <ul id="beforeLogin" runat="server" class="nav navbar-nav navbar-right">
                    <li><a href="UserLogin.aspx"><span class="glyphicon glyphicon-user"></span> Sign Up </a></li>
                    <li><a href="UserLogin.aspx"><span class="glyphicon glyphicon-log-in"></span> Login </a></li>
                </ul>
                <ul id="afterLogin" runat="server" visible="false" style="color:White;" class="nav navbar-nav navbar-right">
                    <li><asp:Label ID="lblUser" style="color:White;" runat="server"></asp:Label></li>
                </ul>
            </div>
        </div>
    </nav>
    </br> </br></br>