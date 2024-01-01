<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="aboutUs.aspx.cs" Inherits="Project.User.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="inner-banner" style="background-image: url(img/banner/sub-page.png)">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="banner-content">
                        <h2>About Us</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="uhome.aspx">Home</a>
                                </li>

                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- end banner -->


    <section class="section-spacing about-us">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-12 col-sm-12">
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
                <div class="col-lg-7 col-md-12 col-sm-12">
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
                <div class="col-lg-5" data-cues="slideInUp">
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
    <!-- start team sec -->
    <section class="section-spacing team-sec">
        <div class="container">
            <div class="row" data-cues="zoomOut">
                <div class="col-md-12">
                    <div class="about-us-left text-center">
                        <h3 class="mt-n6">Our Team</h3>
                        <h2>Meet Expert People</h2>
                    </div>
                </div>

                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="team-item">
                                <img src='../Guidrs/<%#Eval("image")%>' alt="" style="border-radius: 5px; height:380px; width:400px" />
                                <div class="team-body">
                                    <div class="team-text">
                                        <h4><%#Eval("tgname") %></h4>
                                        <p>Tour Guide</p>
                                    </div>
                                    <div class="h-border"></div>
                                    <ul class="team-social">
                                        <li class="share-icon">
                                            <a href="#">
                                                <i class="fab fa-facebook-f"></i>
                                            </a>
                                        </li>
                                        <li class="share-icon">
                                            <a href="#">
                                                <i class="fab fa-twitter"></i>
                                            </a>
                                        </li>
                                        <li class="share-icon">
                                            <a href="#">
                                                <i class="fab fa-instagram"></i>
                                            </a>
                                        </li>
                                        <li class="share-icon">
                                            <a href="#">
                                                <i class="fab fa-linkedin-in"></i>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>

                </asp:Repeater>




                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tour_guides] WHERE ([status] = @status)">
                    <SelectParameters>
                        <asp:QueryStringParameter QueryStringField="tgid" DefaultValue="1" Name="status" Type="Int32"></asp:QueryStringParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </section>

</asp:Content>
