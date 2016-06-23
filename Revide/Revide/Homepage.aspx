<%@ Page Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Revide.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" runat="server">

    <div data-spy="scroll" data-target="#myScrollspy" data-offset="15">
    <div>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol id="olBanner" runat="server" class="carousel-indicators">
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <asp:Repeater ID="rptBanner" runat="server" OnItemDataBound="rptBanner_ItemDataBound">
                    <ItemTemplate>
                        <div id="divItem" runat="server" class="item">
                            <img runat="server" id="img4" src='<%# DataBinder.Eval(Container.DataItem,"PosterSrc") %>'
                                alt="EMMA" height="345" width="460">
                            <div class="carousel-caption">
                                <h3>
                                    '<%# DataBinder.Eval(Container.DataItem, "Title")%>'</h3>
                                
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">
                    Previous</span> </a><a class="right carousel-control" href="#myCarousel" role="button"
                        data-slide="next"><span class="glyphicon glyphicon-chevron-right" aria-hidden="true">
                        </span><span class="sr-only">Next</span> </a>
        </div>
    </div>
    </br>


    



    <div>
        <div class="container">
            <div class="row">
                <nav class="col-sm-3" id="myScrollspy">
      <ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="600">
        <li><a href="#section1">Movies</a></li>
        <li><a href="#section2">TV Shows</a></li>
        <li><a href="#section3">Web Series</a></li>
        <li><a href="#section4">Recommended</a></li>

      </ul>
    </nav>
   
                <div class="col-sm-9">
                    <div id="section1">
                        <h1>
                            MOVIES
                        </h1>
                        <div class="row">
                            <asp:Repeater ID="rpt_movies" runat="server">
                                <ItemTemplate>
                                    <div id="div_movies" runat="server" class="col-sm-6 col-md-3">
                                        <a href="VideoDetails.aspx" class="thumbnail">
                                            <img runat="server" id="img4" src='<%# DataBinder.Eval(Container.DataItem,"PosterSrc")%>'
                                                alt="EMMA" height="345" width="460">
                                        </a>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                       </div>
                       </br>
                        <div id="section2">
                            <h1>
                                TV Shows
                            </h1>
                            <div class="row">
                                <asp:Repeater ID="rpt_tv" runat="server">
                                    <ItemTemplate>
                                        <div id="div_movies" runat="server" class="col-sm-6 col-md-3">
                                            <a href="VideoDetails.aspx" class="thumbnail">
                                                <img runat="server" id="img4" src='<%# DataBinder.Eval(Container.DataItem,"PosterSrc")%>'
                                                    alt="EMMA" height="345" width="460">
                                            </a>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                            </div>
                            </br>
                            <div id="section3">
                                <h1>
                                    Web Series
                                </h1>
                                <div class="row">
                                    <asp:Repeater ID="rpt_web" runat="server">
                                        <ItemTemplate>
                                            <div id="div_movies" runat="server" class="col-sm-6 col-md-3">
                                                <a href="VideoDetails.aspx" class="thumbnail">
                                                    <img runat="server" id="img4" src='<%# DataBinder.Eval(Container.DataItem,"PosterSrc")%>'
                                                        alt="EMMA" height="345" width="460">
                                                </a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                </div>
                                </br>
                                <div id="section4">
                                    <h1>
                                        Recommended
                                    </h1>
                                    <div class="row">
                                        <asp:Repeater ID="rpt_recommended" runat="server">
                                            <ItemTemplate>
                                                <div id="div_movies" runat="server" class="col-sm-6 col-md-3">
                                                    <a href="VideoDetails.aspx" class="thumbnail">
                                                        <img runat="server" id="img4" src='<%# DataBinder.Eval(Container.DataItem,"PosterSrc")%>'
                                                            alt="EMMA" height="345" width="460">
                                                    </a>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
    <br />

</asp:Content>


    

