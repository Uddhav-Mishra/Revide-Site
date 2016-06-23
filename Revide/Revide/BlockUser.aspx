<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BlockUser.aspx.cs" Inherits="Revide.WebForm4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


    </br>
    </br>
    
    </br>
<div class="container">
    <h1 > <center> Block a user </center></h1>
  	<hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-3">
        
      </div>
      
      <!-- edit form column --> 
      <div class="col-md-9 personal-info">
       <form id="Form1" class="form-horizontal" runat = "server" role="form">
          <div class="form-group">
            <label class="col-lg-3 control-label">Username</label>
            <div class="col-lg-8">
              <asp:TextBox id="tb1" class="form-control" runat="server" visible="true" value=""/></asp:Textbox> 
            </div>
          </div>
           
          </div>
   <div align="right">
   <asp:Button ID="Block" runat="server" Text="Block"  class="btn btn-primary" 
              onclick="Button1_Click"/>
              </div>
         </form>
       </div>
  </div>
</div>
<hr>