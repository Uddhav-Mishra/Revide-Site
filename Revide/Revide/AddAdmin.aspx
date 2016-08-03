<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddAdmin.aspx.cs" Inherits="Revide.AddAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


    </br>
    </br>
    
    </br>
    <title>
    Add Admin
    </title>
    <nav class="navbar navbar-inverse navbar-fixed-top" data-offset-top="197">
        <div class="container-fluid">

            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <a href="Homepage.aspx">
                    <img width="100px" height="50px" src="images\revide.png"></a>

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


<div class="container">
    <h1 > <center> ADD NEW ADMIN </center></h1>
  	<hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-3">
        
      </div>
      
      <!-- edit form column --> 
      <div class="col-md-9 personal-info">
       <form id="Form1" class="form-horizontal" runat = "server" role="form">
          <div class="form-group">
            <label class="col-lg-3 control-label">Role ID</label>
            <div class="col-lg-8">
              <asp:TextBox id="tb1" class="form-control" runat="server" visible="true" value=""/></asp:Textbox> 
            </div>
          </div>
           <div class="form-group">
            <label class="col-lg-3 control-label">Username</label>
            <div class="col-lg-8">
            <asp:TextBox id="tb2" class="form-control" runat="server" visible="true" value=""/></asp:Textbox> 
            </div>
          </div>
 <div class="form-group">
            <label class="col-lg-3 control-label">Login Id</label>
            <div class="col-lg-8">
             <asp:TextBox id="tb3" class="form-control" runat="server" visible="true" 
                    /></asp:Textbox> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Password</label>
            <div class="col-lg-8">
              <asp:TextBox id="tb4"  class="form-control" type="password" runat="server" visible="true"/></asp:Textbox> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Updated On</label>
            <div class="col-lg-8">
              <asp:TextBox id="tb5" class="form-control" type="date" runat="server" visible="true" value=""/></asp:Textbox> 
              
 </div>
         
 <br /><br /><br />
 
           </div>
   <div align="right">   
    <asp:Button ID="Save" runat="server" Text="Save"  class="btn btn-primary" 
              onclick="Button1_Click"/>
   </div>
  
         </form>
       </div>
  
         </form>
       </div>
  </div>
</div>
<hr>
