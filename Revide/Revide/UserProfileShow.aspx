<%@ Page Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true"
    CodeBehind="UserProfileShow.aspx.cs" Inherits="Revide.UserProfileShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-12 lead">
                                User profile
                                <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 text-center">
                                <img id="profile_pic" class="img-circle avatar avatar-original" style="-webkit-user-select: none;
                                    display: block; margin: auto;" src="" height="150px" width="150px">
                            </div>
                            <div class="col-md-8">
                                <div class="row">
                                    <asp:Repeater ID="rpt_userprofile" runat="server">
                                        <ItemTemplate>
                                            <div class="col-md-12">
                                                <h1 class="only-bottom-margin" id="name">
                                                    <%# Eval( "Username" ) %>
                                                </h1>
                                            </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <span id="email" class="text-muted">Email:</span>
                                                    <%# Eval( "EmailID" ) %><br>
                                                    <span id="country" class="text-muted">Country:</span>
                                                    <%#Eval( "Country" ) %><br>
                                                    <span id="age" class="text-muted">Age:</span>
                                                    <%# Eval( "Age" )%><br>
                                                    <span id="phone" class="text-muted">Phone:</span>
                                                    <%#Eval( "Phone" ) %><br>
                                                    <script type="text/javascript"> 
                                                    $("#profile_pic").attr("src", "<%# Eval( "ProfilePhoto" )%>");
                                                    </script>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    <br>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <hr>
                            <asp:LinkButton ID="btn_edit" class="btn btn-default pull-right" runat="server" OnClick="btn_edit_Click"><i class="glyphicon glyphicon-pencil"></i> Edit </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
</asp:Content>
