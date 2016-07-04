<%@ Page Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true"
    CodeBehind="UpdateProfile.aspx.cs" Inherits="WebApplication7.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" runat="server">
    <div class="container">
        <h1>
            Update Profile</h1>
        <hr>
        <div class="row"style="float:left;">
            <!-- left column -->
            <div class="col-md-3">
                <div class="text-center">
                    <img src="~/images/Profile/Default.png" id="VoteUpOff" runat="server" class="avatar img-circle"
                        alt="upload" style="height: 200px; width: 200px;" />
                    <h3>
                        Upload New Photo</h3>
                    <asp:FileUpload ID="fileuploadimages" runat="server" />
                </div>
            </div>
        </div>
        <!-- edit form column -->
        <div   style="float:right;" class="col-md-9 personal-info">
            <div class="form-group">
                <label class="col-lg-3 control-label">
                    Name</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="tb1" class="form-control" runat="server" Visible="true" value="" /></asp:Textbox>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-3 control-label">
                    EmailId</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="tb2" class="form-control" runat="server" Visible="true" value="@gmail.com" /></asp:Textbox>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-3 control-label">
                    Age</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="tb3" class="form-control" runat="server" Visible="true" /></asp:Textbox>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-3 control-label">
                    Phone</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="tb4" class="form-control" runat="server" Visible="true" /></asp:Textbox>
                </div>
            </div>
            <div class="form-group">
                <label class="col-lg-3 control-label">
                    Country</label>
                <div class="col-lg-8">
                    <asp:TextBox ID="tb5" class="form-control" runat="server" Visible="true" value="" /></asp:Textbox>
                </div>
            </div>
        </div>
    </div>
    </div>
    <center>
        <asp:Button ID="Save" runat="server" Text="Save" class="btn btn-primary" OnClick="Button1_Click" /></center>
    <hr>
    </br> </br> </br> </br>
</asp:Content>
