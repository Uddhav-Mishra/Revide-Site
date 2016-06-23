<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMovies.aspx.cs" Inherits="Revide.WebForm3" %>

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
    <h1 > <center> Add new movie </center></h1>
  	<hr>
	<div class="row">
      <!-- left column -->
      <div class="col-md-3">
        
      </div>
      
      <!-- edit form column --> 
      <div class="col-md-9 personal-info">
       <form id="Form1" class="form-horizontal" runat = "server" role="form">
          <div class="form-group">
            <label class="col-lg-3 control-label">Movie Title</label>
            <div class="col-lg-8">
              <asp:TextBox id="tb1" class="form-control" runat="server" visible="true" value=""/></asp:Textbox> 
            </div>
          </div>
           <div class="form-group">
            <label class="col-lg-3 control-label">Full Title</label>
            <div class="col-lg-8">
            <asp:TextBox id="tb2" class="form-control" runat="server" visible="true" value=""/></asp:Textbox> 
            </div>
          </div>
 <div class="form-group">
            <label class="col-lg-3 control-label">Language</label>
            <div class="col-lg-8">
             <asp:TextBox id="tb3" class="form-control" runat="server" visible="true" 
                    /></asp:Textbox> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Release Date</label>
            <div class="col-lg-8">
              <asp:TextBox id="tb4"  class="form-control" runat="server" visible="true"/></asp:Textbox> 
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Genre</label>
            <div class="col-lg-8">
              <asp:TextBox id="tb5" class="form-control" runat="server" visible="true" value=""/></asp:Textbox> 
              
 </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Adult Content</label>
            <div class="col-lg-8">
              <asp:TextBox id="tb6" class="form-control" runat="server" visible="true" value=""/></asp:Textbox> 
              
 </div>
 <br /><br /><br />
 
           <div class="form-group" align="center">
             <h3>Upload movie poster...</h3>
             <asp:FileUpload ID="fileuploadimages" runat="server" />
        </div> 
   </div>
   <div align="right">   
    <asp:Button ID="Save" runat="server" Text="Save"  class="btn btn-primary" 
              onclick="Button1_Click"/>
   </div>
  
         </form>
       </div>
  </div>
</div>
<hr>