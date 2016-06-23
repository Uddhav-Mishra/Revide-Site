<%@ Page Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="UserProfileShow.aspx.cs"
    Inherits="Revide.UserProfileShow" %>

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
                                User profile<hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 text-center">
                                <img class="img-circle avatar avatar-original" style="-webkit-user-select: none;
                                    display: block; margin: auto;" src="https://plus.google.com/u/0/_/focus/photos/public/AIbEiAIAAABECIuJ28bnlo3B7gEiC3ZjYXJkX3Bob3RvKihlNDAyYWY0MTkwMzU3Mjg1NWM1MDJkNzEwMTA0MTRjYmRmMmI3OTNhMAE8GIBH583UIwWR2FWjZ_ynZRvujg?sz=64"
                                    height="150px" width="150px">
                            </div>
                            <div class="col-md-8">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h1 class="only-bottom-margin">
                                            NAME</h1>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <span class="text-muted">Email:</span> email@test.com<br>
                                        <span class="text-muted">Country:</span> India<br>
                                        <span class="text-muted">Age:</span> 18<br>
                                        <span class="text-muted">Phone:</span>8901909321<br>
                                        <span class="text-muted">Birth date:</span> 01.01.2001<br>
                                        <span class="text-muted">Gender:</span> male<br>
                                        <br>
                                        <small class="text-muted">Created: 01.01.2015</small>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <hr>
                                <asp:LinkButton ID="btn_edit" class="btn btn-default pull-right" runat="server" 
                                    onclick="btn_edit_Click" ><i class="glyphicon glyphicon-pencil"></i> Edit </asp:LinkButton>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
    
