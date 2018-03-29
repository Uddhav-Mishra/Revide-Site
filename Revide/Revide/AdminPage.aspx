<%@ Page Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Revide.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<title> ADMIN PAGE      
    </title>

    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
    ol {
    display: block;
    list-style-type: decimal;
    margin-top: 0px;
    margin-bottom: 0px;
    margin-left: 0px;
    margin-right: 40px;
    padding-left: 40px;
    }
        body
        {
            position: relative;
        }
        
        .affix
        {
            top: 190px;
            position: fixed;
        }
    
    .offer-box {
    background: #f4e759;
    height: 100px;
    border-radius: 8px;
}
.offer-box h1 {
    color: #080808;
}
.offer-box p {
    color: #080808;
    font-size: 1.5em;
} 
    lblcount
    {
    lblcount.Text =10;
    }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" runat="server">

    

    <div class="panel panel-default" >
  <div class="panel-heading">Dashboard</div>
  </div>


  <div class="row">
    <div class="col-sm-2" style="background-color:lavender;">
    <li><a href="#">Home<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
				<li ><a href="AddMovies.aspx">Add Movies<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-film"></span></a></li>
				<li ><a href="BlockUser.aspx">Block User<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-envelope"></span></a></li>
    </div>
    <div class="col-sm-10" 
          style="background-color:lavenderblush; top: 4px; left: 0px;">
    <div class="container" >
  <h2>Recent Activity</h2>
  <button type="button" class="btn btn-primary">Registered Users <span id="spn1"   runat="server"  class="badge">   </span></button>
  <button type="button" class="btn btn-success"> Active Users  <span id="spn2" runat="server" class="badge">40</span></button>    
  <button type="button" class="btn btn-success"> Blocked users  <span id="spn3" runat="server" class="badge">10</span></button>    
  <button type="button" class="btn btn-danger"> Total videos <span id="spn4" runat="server" class="badge">500</span></button>        
</div>

<br /><br />   
 


  </div>



</div>

<br /><br /><br /><br />
 

</asp:Content>