<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="AllVideos.aspx.cs" Inherits="Revide.AllVideos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
        .panel
        {
            height: 200px !important;
        }
        .panel-heading
        {
            height: 40px !important;
            font-size: 18px !important;
        }
        .panel-body
        {
            height: 150px !important;
            font-size: 15px !important;
            
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" runat="server">

    <h1 align="center">Videos</h1>
    </br>
    <div class="col-sm-9" style="margin-left:200px">
        <div class="panel-group">
            <asp:Repeater ID="rpt_pg" runat="server">
                <ItemTemplate>
                    <a href="VideoDetails.aspx?video_id=<%#DataBinder.Eval(Container.DataItem,"ID")%>">
                    
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <%# DataBinder.Eval(Container.DataItem,"FullTitle") %>
                        </div>
                        <div class="panel-body">
                            <div class="row" style="height:100px !important">
                                <div class="col-sm-3 nav-col">
                                    <img src='<%# DataBinder.Eval(Container.DataItem,"Postersrc") %>'/>
                                </div>
                                <div class="col-sm-9 nav-col panel-body">
                                   <ul>
                                   <li><strong> <%# DataBinder.Eval(Container.DataItem,"ReleaseDate") %> </strong></li>
                                   <li><strong> <%# DataBinder.Eval(Container.DataItem,"Overall_rating") %> </strong></li>
                                   <li><strong> <%# DataBinder.Eval(Container.DataItem,"Genre") %> </strong></li>
                                   <li><strong> <%# DataBinder.Eval(Container.DataItem,"Language") %> </strong></li>
                                   <li><strong> <%# DataBinder.Eval(Container.DataItem,"Type") %> </strong></li>
                                   
                                   </ul>
                                </div>
                            </div>
                        </div>
                    </div>

                    </a>
                    </br>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <ul id="pages" runat="server" class="pagination pagination-sm" style="margin-left:650px;">
            </ul>
</asp:Content>
