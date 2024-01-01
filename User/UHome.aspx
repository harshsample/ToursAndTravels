<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="UHome.aspx.cs" Inherits="Project.User.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="carousel slide" id="banner" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="banner-caption">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="hero-text">
                                    <h3 class="animated fadeInDown">Explore Your Travel</h3>
                                    <h1 class="animated fadeInUp">Start planning your dream trip today!</h1>
                                    <p class="animated fadeInUp">I travel not to go anywhere, but to go. I travel for travel's sake the great affair is to move.</p>
                                    <div class="banner-button-group">
                                        <a href="contectUs.aspx" class="btn btn-primary animated fadeInUp">Contact Us</a>
                                        <a href="tourlist.aspx" class="btn btn-primary learn-more animated fadeInUp">Learn More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <img class="tilt-img" src="img/banner/slide-1.png" alt="Slider Image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="banner-caption">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="hero-text">
                                    <h3 class="animated fadeInLeft">Explore Your Travel</h3>
                                    <h1 class="animated fadeInLeft">Trusted Travel Agency</h1>
                                    <p class="animated fadeInLeft">I travel not to go anywhere, but to go. I travel for travel's sake the great affair is to move.</p>
                                    <div class="banner-button-group">
                                        <a href="contectUs.aspx" class="btn btn-primary animated fadeInUp">Contact Us</a>
                                        <a href="tourlist.aspx" class="btn btn-primary learn-more animated fadeInUp">Learn More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <img class="tilt-img" src="img/banner/slide-2.png" alt="Slider Image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="banner-caption">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="hero-text">
                                    <h3 class="animated fadeInRight">Explore Your Travel</h3>
                                    <h1 class="animated fadeInRight">Get Exclusive Tour</h1>
                                    <p class="animated fadeInRight">I travel not to go anywhere, but to go. I travel for travel's sake the great affair is to move.</p>
                                    <div class="banner-button-group">
                                        <a href="contectUs.aspx" class="btn btn-primary animated fadeInUp">Contact Us</a>
                                        <a href="tourlist.aspx" class="btn btn-primary learn-more animated fadeInUp">Learn More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <img class="tilt-img" src="img/banner/slide-3.png" alt="Slider Image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#banner" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#banner" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
            <div class="shape1 d-none d-lg-block">
                <img src="img/banner/banner-shape1.png" alt="">
            </div>
            <div class="shape2 d-none d-lg-block">
                <img src="img/banner/banner-shape2.png" alt="">
            </div>
            <div class="shape3 d-none d-lg-block">
                <img src="img/banner/banner-shape3.png" alt="">
            </div>
        </div>
    </section>
    <!-- end banner -->
    <!-- start destination -->
    <section class="section-spacing inverse-bg destinations">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center">
                        <h3 class="mt-n6">Destinations</h3>
                        <h2 class="mb-0">Choose Your Place</h2>
                    </div>
                </div>
            </div>
            <div class="row" data-cues="slideInLeft">
                <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate>
                        <div class="col-md-6 col-12">
                            <div class="destination-item">
                                <a href="tourlist.aspx">
                                    <img src='../Gallary/<%#Eval("gallary")%>' style="width:550px; height:300px;" alt="">
                                    <div class="info-overlay">
                                       
                                    </div>
                                </a>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>



                <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT TOP 4 * FROM [pname_gallary]"></asp:SqlDataSource>
                <asp:SqlDataSource runat="server" ID="SqlDataSource2"></asp:SqlDataSource>
            </div>
        </div>
    </section>
    <!-- end destination -->
    <!-- start about us -->
    <section class="section-spacing about-us">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-5">
                    <div class="about-us-left" data-cues="slideInUp">
                        <h3 class="mt-n6">About Us</h3>
                        <h2>Explore all tour of the world with us.</h2>
                        <p>Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                        <div class="about-info" data-cues="slideInLeft">
                            <div class="d-flex">
                                <div class="flex-shrink-0">
                                    <span class="align-self-start mr-3 media-icon">
                                        <i class="far fa-compass"></i>
                                    </span>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h5 class="mt-0">Tour guide</h5>
                                    <p>Lorem Ipsum available, but the majority have suffered alteration in some.</p>
                                </div>
                            </div>
                            <div class="d-flex">
                                <div class="flex-shrink-0">
                                    <span class="align-self-start mr-3 media-icon">
                                        <i class="fas fa-briefcase"></i>
                                    </span>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h5 class="mt-0">Friendly price</h5>
                                    <p>Lorem Ipsum available, but the majority have suffered alteration in some.</p>
                                </div>
                            </div>
                            <div class="d-flex">
                                <div class="flex-shrink-0">
                                    <span class="align-self-start mr-3 media-icon">
                                        <i class="fas fa-umbrella-beach"></i>
                                    </span>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h5 class="mt-0">Reliable tour</h5>
                                    <p>Lorem Ipsum available, but the majority have suffered alteration in some.</p>
                                </div>
                            </div>
                        </div>
                        <div class="cta-button">
                            <a href="booknow.aspx" class="btn btn-primary">Booking Now</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-lg-7">
                    <div class="about-right">
                        <img class="tilt-img" src="img/about/1.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end about us -->
    <!-- start features -->
    <section class="section-spacing features" style="background-image: url(img/features/1.png);">
        <div class="container">
             
            
            <div class="row justify-content-end">
                <div class="col-md-7 col-lg-5" data-cues="slideInRight">
                    <h3 class="mt-n6">Love where you're going</h3>
                    <h2>Learn new things by traveling the world.</h2>
                    <p>Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
                    <div class="play-button" data-cues="slideInRight">
                        <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#video-modal">
                            <i class="fa fa-play"></i>
                        </a>
                    </div>
                    <div class="features-items" data-cues="slideInRight">
                        <div class="feature-item">
                            <h3>
                                <span class="counter">500</span>k
                            </h3>
                            <h4 class="mb-0">Our local guides</h4>
                        </div>
                        <div class="feature-item">
                            <h3>
                                <span class="counter">100</span>%
                            </h3>
                            <h4 class="mb-0">Trusted tour agency</h4>
                        </div>
                        <div class="feature-item">
                            <h3>
                                <span class="counter">99</span>%
                            </h3>
                            <h4 class="mb-0">Travel happiness</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end features -->
    <!-- start popular tours -->
    <section class="section-spacing tours">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center">
                        <h3 class="mt-n6">Featured Tours</h3>
                        <h2 class="mb-0">Most Popular Tours</h2>
                    </div>
                </div>
            </div>
            <div class="row" data-cues="slideInLeft">
                 <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                     <ItemTemplate>

                         <div class="col-md-6 col-lg-4">
                             <a href='touritinerary.aspx?tdid=<%#Eval("tdid") %>'>
                                 <div class="card tour-card wow fadeIn">
                                     <img src='../../Admin/image/<%#Eval("image")%>' alt="" style="height: 200px; width: 450px;" />
                                     <span class="tour-duration">
                                         <i class="fas fa-history"></i><%#Eval("days") %></span>
                                     <div class="card-body">


                                         <h6><%#Eval("dispcription") %></h6>
                                         <p class="mb-0"><%#Eval("placename") %></p>
                                         <br />


                                         <%-- <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                                            <ItemTemplate>
                                                <a href="tourhotel.aspx?hdid=<%#Eval("hdid") %>"><span class="read-more">Hotel Details <i class="fas fa-arrow-right"></i></a>
                                            </ItemTemplate>
                                        </asp:Repeater>--%>

                                         <div class="tour-tags">
                                             <span class="tour-price">Adult : <%#Eval("aprice") %></span>
                                             <span class="tour-price">Children : <%#Eval("cprice") %></span>

                                         </div>
                                         <a href='tourhotel.aspx?tdid=<%#Eval("tdid") %>'><span class="read-more">Hotel Details <i class="fas fa-arrow-right"></i></a>




                                     </div>
                                 </div>
                             </a>
                         </div>


                     </ItemTemplate>
                 </asp:Repeater>

                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT TOP 3 * FROM [tourdetails]"></asp:SqlDataSource>
             </div>
        </div>
    </section>
    <!-- end popular tours -->
    <!-- start testimonials -->
    <section class="section-spacing reviews inverse-bg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title text-center">
                        <h3 class="mt-n6">Testimonials & Reviews</h3>
                        <h2 class="mb-0">Our Traveler Says</h2>
                    </div>
                </div>
            </div>
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <div class="reviews-left">
                        <img class="tilt-img" src="img/testimonials/1.png" alt="">
                        <div class="review-shape1"></div>
                        <div class="review-shape2"></div>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="carousel slide" id="testimonial-carousel" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <div class="review-item">
                                    <h5>Madison Aria</h5>
                                    <div class="traveller">( Abubakar Siddique )</div>
                                    <p>Lorem Ipsum available, but the majority have suffered alteration in some form the injected humour, or randomised words which don't look even slightly believable to if you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                                    <p>Lorem Ipsum available, but the majority have suffered alteration in some form the injected humour, or randomised words which don't look even slightly believable to if you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="review-item">
                                    <h5>Madison Aria</h5>
                                    <div class="traveller">( Abubakar Siddique )</div>
                                    <p>Lorem Ipsum available, but the majority have suffered alteration in some form the injected humour, or randomised words which don't look even slightly believable to if you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                                    <p>Lorem Ipsum available, but the majority have suffered alteration in some form the injected humour, or randomised words which don't look even slightly believable to if you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <div class="review-item">
                                    <h5>Madison Aria</h5>
                                    <div class="traveller">( Abubakar Siddique )</div>
                                    <p>Lorem Ipsum available, but the majority have suffered alteration in some form the injected humour, or randomised words which don't look even slightly believable to if you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                                    <p>Lorem Ipsum available, but the majority have suffered alteration in some form the injected humour, or randomised words which don't look even slightly believable to if you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.</p>
                                </div>
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#testimonial-carousel" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#testimonial-carousel" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                    <div class="brand-section">
                        <div class="brand-image">
                            <img src="img/testimonials/brand1.png" alt="">
                        </div>
                        <div class="h-border"></div>
                        <div class="brand-image">
                            <img src="img/testimonials/brand2.png" alt="">
                        </div>
                        <div class="h-border"></div>
                        <div class="brand-image">
                            <img src="img/testimonials/brand3.png" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end testimonials -->
    <!-- start blog -->
    
    <!-- end blog -->
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
</asp:Content>
