<%@ Page Language="C#" MasterPageFile="~/MasterPage/Main.Master" AutoEventWireup="true"
    CodeBehind="VideoDetails.aspx.cs" Inherits="Revide.VideoDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_Main" runat="server">
    <div class="container-fluid" align="center">
        <h1>
            DARK KNIGHT RISES
        </h1>
    </div>
    </br> </br>
    <div class="row">
        <div class="col-md-6" align="center">
            <iframe id="youtube_frame" runat="server" height="350px" width="500px">
            </iframe>
        </div>
        </br>
        <div class="col-md-5">
            <button type="button" class="btn btn-default btn-sm">
                <span class="glyphicon glyphicon-heart"></span>Add to Wishlist
            </button>
            <asp:LinkButton ID="btn_book" runat="server" class="btn btn-default btn-sm" OnClick="btn_book_Click">
                <i class="glyphicon glyphicon-book"></i> Book Now</asp:LinkButton>
            </br> </br>
            <p>
                See more snippets like these online store reviews at <a target="_blank" href="http://bootsnipp.com">
                    Bootsnipp - http://bootsnipp.com</a>.</p>
            <p>
                Want to make these reviews work? Check out <strong><a href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/">
                    this building a review system tutorial</a> </strong>over at maxoffsky.com!</p>
            <p>
                Dark knight rises is the most fdamous superhero film.
            </p>
            <div>
                <p>
                    3 reviews</p>
                <p>
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star-empty"></span>4.0 stars
                </p>
                </br> </br>
            </div>
            <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">
                Show More..</button>
            <div id="demo" class="collapse">
                </br> <a href="#">Show Full Cast.</a>
                </br>

                <p>
                    IMDB Rating ::
                </p>
                <p>
                    Rotten Tomatoes::
                </p>
            </div>
        </div>
    </div>
    </br> </br> </br>
    <div class="row">
        <div class="well col-md-6">
            <h3>
                Recommendaions</h3>
            </br> </br>
            <div class="col-md-6 col-md-3">
                <a href="#" class="thumbnail">
                    <img src="http://ia.media-imdb.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX182_CR0,0,182,268_AL_.jpg"
                        alt="Generic placeholder thumbnail">
                </a>
            </div>
            <div class="col-md-6 col-md-3">
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
            </div>
        </div>
        <div class="well col-md-6">
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
                                    The Dark Night Rises</h4>
                            </div>
                            <div class="modal-body">
                                <div>
                                    <div class="form-group">
                                        <label for="Review">
                                            Review:</label>
                                        <textarea class="form-control" rows="5" id="comment"></textarea>
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
                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                    Rate</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-12">
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star-empty"></span>Anonymous <span class="pull-right">
                        10 days ago</span>
                    <p>
                        This product was great in terms of quality. I would definitely buy another!</p>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-12">
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star-empty"></span>Anonymous <span class="pull-right">
                        12 days ago</span>
                    <p>
                        I've alredy ordered another one!</p>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-md-12">
                    <span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star"></span><span class="glyphicon glyphicon-star">
                    </span><span class="glyphicon glyphicon-star-empty"></span>Anonymous <span class="pull-right">
                        15 days ago</span>
                    <p>
                        I've seen some better than this, but not at this price. I definitely recommend this
                        item.</p>
                </div>
            </div>
        </div>
    </div>
    <asp:Label ID="status" runat="server"></asp:Label>
</asp:Content>
