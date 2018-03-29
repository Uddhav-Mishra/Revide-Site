<%@ Page Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true"
    CodeBehind="VideoDetails.aspx.cs" Inherits="Revide.VideoDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" runat="server">
    <div class="container-fluid" align="center">
        <h1 id="name" runat="server">
            DARK KNIGHT RISES
        </h1>
    </div>
    </br> </br>
    <div class="row">
        <div class="col-md-6" align="center">
            <iframe id="youtube_frame" runat="server" height="350px" width="500px"></iframe>
        </div>
        </br>
        <div class="col-md-5">
            <!--button type="button" class="btn btn-default btn-sm">
                <span class="glyphicon glyphicon-heart"></span>Add to Wishlist
            </button-->
            <asp:LinkButton ID="btn_book" runat="server" class="btn btn-default btn-sm" OnClick="btn_book_Click">
                <i class="glyphicon glyphicon-book"></i> Book Now</asp:LinkButton>
            </br> </br>
            <div>
                <p id="info" runat="server">
                </p>
                <p id="Overall_rating" runat="server">
                    Overall Rating ----
                </p>
                <p id="stars" runat="server">
                    <!--span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star-empty"></span>4.0 stars
                    -->
                </p>
                </br> </br>
                <p>
                    <span class="glyphicon glyphicon-star"></span>= <span id="stars1" runat="server">
                    </span>
                </p>
                <p>
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span>= <span id="stars2" runat="server"></span>
                </p>
                <p>
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star"></span>= <span id="stars3" runat="server">
                    </span>
                </p>
                <p>
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span>= <span id="stars4" runat="server"></span>
                </p>
                <p>
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star"></span>= <span id="stars5" runat="server">
                    </span>
                </p>
                
                
            </div>
            <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">
                Show More..</button>
            <div id="demo" class="collapse">
                </br> <span>Release date -- </span><p id="release_date" runat="server">
                </p>
                <span>Genre -- </span><p id="genre" runat="server"></p>
                <span>Adult Rating -- </span><p id="adult_rating" runat="server">
                </p>
                </br></br>

            </div>
        </div>
    </div>
    </br> </br> </br>
    <!--div class="row"-->
    <div class="well">
        <div class="text-right">
            <!-- Trigger the modal with a button -->
            <button type="button" class="btn btn-success " data-toggle="modal" data-target="#myModal">
                Rate and Review</button>
            <!-- Modal -->
            <div id="myModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">
                                &times;</button>
                            <h4 class="modal-title">
                                Rate this movie</h4>
                        </div>
                        <div class="modal-body">
                            <div>
                                <div class="form-group">
                                    <label for="Review">
                                        Review:</label>
                                    <asp:TextBox class="form-control" Rows="5" TextMode="multiline" ID="comment" runat="server" />
                                </div>
                                <fieldset class="rating">
                                    <input type="radio" id="star5" name="rating" value="5" /><label for="star5" title="Rocks!">5
                                        stars</label>
                                    <input type="radio" id="star4" name="rating" value="4" /><label for="star4" title="Pretty good">4
                                        stars</label>
                                    <input type="radio" id="star3" name="rating" value="3" /><label for="star3" title="Meh">3
                                        stars</label>
                                    <input type="radio" id="star2" name="rating" value="2" /><label for="star2" title="Kinda bad">2
                                        stars</label>
                                    <input type="radio" id="star1" name="rating" value="1" /><label for="star1" title="Sucks big time">1
                                        star</label>
                                </fieldset>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <asp:Button ID="rateSubmit" runat="server" OnClick="btn_rateSubmit" class="btn btn-default"
                                Text="Rate" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <hr>
        <div class="well">
        <h3>Rating and Reviews</h3>
        </br>
        </br>
        <hr>
        <asp:Repeater ID="rpt_reviews" runat="server" OnItemDataBound="rpt_reviews_ItemDataBound">
            <ItemTemplate>
                <div class="row">
                    <div class="col-md-12">
                        <div id="display_stars" runat="server">
                            <table>
                                <tr>
                                    <td id="td1" runat="server">
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br />
                        <p>
                            Reviewed by ----
                            <%# DataBinder.Eval(Container.DataItem,"Username") %>
                        </p>
                        <p>
                            <%# DataBinder.Eval(Container.DataItem,"comments") %>
                        </p>
                        <hr />
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        </div>
        <!--div class="row">
                <div class="col-md-12">
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star-empty"></span>Anonymous <span class="pull-right">
                        15 days ago</span>
                    <p>
                        I've seen some better than this, but not at this price. I definitely recommend this
                        item.</p>
                </div>
            </div-->
    </div>
    <div class="well">
        <h3>
            Recommendaions
        </h3>
        <asp:Repeater ID="recommend" runat="server">
            <ItemTemplate>
                <div class="col-md-3">
                    <a href="VideoDetails.aspx?video_id=<%# DataBinder.Eval(Container.DataItem,"ID")%>"
                        class="thumbnail">
                        <img runat="server" id="img4" src='<%# DataBinder.Eval(Container.DataItem,"PosterSrc")%>'
                            alt="EMMA" height="345" width="460">
                    </a>
                </div>
            </ItemTemplate>
        </asp:Repeater>
        </br>
        <!--div class="col-md-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="http://ia.media-imdb.com/images/M/MV5BNDc2NTM3MzU1Nl5BMl5BanBnXkFtZTcwMTA5Mzg3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                        alt="Generic placeholder thumbnail">
                </a>
            </div>
            <div class="col-md-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="http://ia.media-imdb.com/images/M/MV5BMjEyMjcyNDI4MF5BMl5BanBnXkFtZTcwMDA5Mzg3OA@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                        alt="Generic placeholder thumbnail">
                </a>
            </div>
            <div class="col-md-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="http://ia.media-imdb.com/images/M/MV5BODU4MjU4NjIwNl5BMl5BanBnXkFtZTgwMDU2MjEyMDE@._V1_UX182_CR0,0,182,268_AL_.jpg"
                        alt="Generic placeholder thumbnail">
                </a>
            </div-->
    </div>
    <asp:Label ID="status" runat="server"></asp:Label>
    <asp:HiddenField ID="rateValue" runat="server" />
    <asp:Label ID="test" runat="server" Text="Hello" Visible="false"></asp:Label>
    <script>
        $('.rating input[type="radio"]').click(function () {
            $("#ContentPlaceHolder_Main_rateValue").val(this.value)
        })
    </script>
</asp:Content>
