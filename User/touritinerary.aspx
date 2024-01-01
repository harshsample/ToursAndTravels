<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="touritinerary.aspx.cs" Inherits="Project.User.WebForm9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="inner-banner" style="background-image: url(img/banner/sub-page.png)">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="banner-content">
                        <h2>Tour List</h2>
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
      <!-- start popular tours -->
    <section class="section-spacing-tours tours tours-details">
        <div class="container">
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-12">
                            <div class="tour-list-details wow fadeIn">
                                <%--<img  height: 200px; width: 450px; />--%>
                                <img class="card-img-top" src='../../Admin/image/<%#Eval("image")%>' style="border-radius: 10px; height:500px; "  alt="">
                               
                                <div class="tour-body">
                                    <div class="tour-content">
                                        <h3> <%#Eval("dispcription") %></h3>
                                        <span class="tour-place"><%#Eval("placename") %></span>
                                    </div>
                                    <div class="h-border"></div>
                                    <div class="tour-tags">
                                        <span class="tour-rating">
                                            <i class="fas fa-history"></i><%#Eval("days") %> </span><p></p>
                                       <%-- <span class="tour-rating t-rating">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="far fa-star"></i>(2) </span>--%>
                                        <%--<div class="tour-tag-btn">--%>
                                             <div class="tour-tags">
                                            <span class="tour-price">Adult : <%#Eval("aprice") %></span>
                                            <span class="tour-price">Children : <%#Eval("cprice") %></span>

                                        </div>
                                        <%--</div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </ItemTemplate>

                </asp:Repeater>

                <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tourdetails] WHERE ([tdid] = @tdid)">
                    <SelectParameters>
                        <asp:QueryStringParameter QueryStringField="tdid" Name="tdid" Type="Int32"></asp:QueryStringParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>


            <div class="row">
                <div class="col-md-12 col-lg-6 col-xl-8">
                   
                    <h2 class="faq-hedar">Tour Amenities</h2>
                    <div class="blog-single-list">
                        <div class="list-item">
                            <ul>
                                <li>
                                    <i class="fas fa-check"></i>Cruise dinner & music event
                                </li>
                                <li>
                                    <i class="fas fa-check"></i>3 Meal per day
                                </li>
                                <li>
                                    <i class="fas fa-check"></i>Pick and drop services
                                </li>
                            </ul>
                        </div>
                        <div class="list-item">
                            <ul>
                                <li>
                                    <i class="fas fa-check"></i>Smoking allow
                                </li>
                                <li>
                                    <i class="fas fa-check"></i>Valet parking
                                </li>
                                <li>
                                    <i class="fas fa-check"></i>Visit 4 best places with group
                                </li>
                            </ul>
                        </div>
                    </div>
                    <h2 class="faq-hedar">Tour Plan</h2>
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            <div class="tour-plan-items">
                                <div class="plan-item">
                                    <h3 class="plan-title">Day <%#Eval("day") %></h3>
                                    <div class="plan-content">
                                        <br />
                                        <%--<h6><%#Eval("placename") %></h6>--%>
                                        <br />
                                        <span>8:00 am to 8:00 pm</span>
                                        <p><%#Eval("discription") %> </p>
                                        <span class="tour-facilities">-Free drinks</span>
                                        <span class="tour-facilities">-Awesome breakfast</span>
                                        <span class="tour-facilities">-Unlimited coffee</span>
                                    </div>
                                </div>

                            </div>
                        </ItemTemplate>
                    </asp:Repeater>





                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tour_itinerary] WHERE ([tdid] = @tdid)">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="tdid" Name="tdid" Type="Int32"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>


                     <h2 class="faq-hedar">More Information</h2>
                     <div class="accordion accordion-flush" id="accordionFlushExample">
                                
                    <asp:Repeater ID="Repeater4" runat="server" DataSourceID="SqlDataSource4">
                        <ItemTemplate>
                            <div class="accordion-item">
                                    <h2 class="accordion-header" id="flush-headingOne">
                                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">Inclusion </button>
                                    </h2>
                                    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                        <div>

                                            <div class="faq-text">
                                                <div class="plan-item">
                                                   <%-- <h3 class="plan-title">Day <%#Eval("day") %></h3>--%>
                                                    <div class="plan-content">
                                                        <br />
                                                        <%--<h6><%#Eval("placename") %></h6>--%>
                                                        <br />
                                                        
                                                        <p><%#Eval("discription") %> </p>
                                                        <span class="tour-facilities">-Free drinks</span>
                                                        <span class="tour-facilities">-Awesome breakfast</span>
                                                        <span class="tour-facilities">-Unlimited coffee</span>
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                        </ItemTemplate>
                    </asp:Repeater>
                                    
                         <asp:Repeater ID="Repeater5" runat="server" DataSourceID="SqlDataSource5">
                        <ItemTemplate>
                            <div class="accordion-item">
                               <h2 class="accordion-header" id="flush-headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">Exclusion </button>
                            </h2>
                                <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-collapseTwo" data-bs-parent="#accordionFlushExample">
                                    <div>

                                        <div class="faq-text">
                                            <div class="plan-item">
                                                <%-- <h3 class="plan-title">Day <%#Eval("day") %></h3>--%>
                                                <div class="plan-content">
                                                    <br />
                                                    <%--<h6><%#Eval("placename") %></h6>--%>
                                                    <br />

                                                    <p><%#Eval("discription") %> </p>
                                                    
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </ItemTemplate>
                    </asp:Repeater>
                        </div>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tour_inclusion] WHERE ([tdid] = @tdid)">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="tdid" Name="tdid" Type="Int32"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />


                   
                    
                        
                    <asp:SqlDataSource runat="server" ID="SqlDataSource5" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tour_exclusion] WHERE ([tdid] = @tdid)">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="tdid" Name="tdid" Type="Int32"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
               


                  
                    


                    <h2 class="faq-hedar">Tour Location</h2>
                    <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3" OnItemCommand="Repeater3_ItemCommand">
                        <ItemTemplate>
                            <div class="col-12 contact-map">
                                <%--<iframe src='<%#Eval("map") %>' width="1200" height="250" style="border: 0;" allowfullscreen="" loading="lazy"></iframe>--%>
                                 <iframe src='https://www.google.com/maps/embed?pb=<%#Eval("map") %>' width="1200" height="250" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>



                    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tour_map] WHERE ([tdid] = @tdid)">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="tdid" Name="tdid" Type="Int32"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                   
                    <div class="blog-details-reply">
                        <h5>One Review</h5>
                        <div class="blog-reply-wrapper">
                            <div class="blog-reply-item">
                                <div class="blog-reply-img">
                                    <img src="img/blog/comment.png" alt="">
                                </div>
                                <div class="blog-reply-content">
                                    <h5>David Warner</h5>
                                    <span class="reply-date">21 December, 2021</span>
                                    <span class="tour-rating">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                    </span>
                                    <p>Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="contact-form-wrapper wow fadeIn">
                        <h3>Write a Review</h3>
                        <div class="form-rating">
                            <span class="rating">Rating: </span>
                            <span class="tour-rating">
                                <i class="fas fa-star active"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </span>
                        </div>
                        <div class="contact-form">
                            <form >
                                <div class="mb-4">
                                    <input type="text" class="form-control" id="your_name" placeholder="Enter your name">
                                </div>
                                <div class="mb-4">
                                    <input type="email" class="form-control" id="email_address" placeholder="Enter email address">
                                </div>
                                <div class="mb-3">
                                    <textarea class="form-control" id="keyword" rows="6" placeholder="Type you keyword"></textarea>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit Comment</button>
                            </form>
                        </div>
                    </div>
                </div>


                
                        <div class="col-md-12 col-lg-6 col-xl-4">
                            <div class="booking-bg">
                                <form class="row g-3" runat="server">
                                    <div class="col-sm-12">
                                        <h2 class="form-hader">Book This Tour </h2>
                                    </div>
                                    <hr>



                                    <asp:Repeater ID="Repeater6" runat="server" DataSourceID="SqlDataSource7" OnItemCommand="Repeater6_ItemCommand">
                                        <ItemTemplate>
                                            <div class="col-12">
                                                <%--<button type="submit" class="booking-bt btn btn-primary">Book Now</button>--%>

                                                <a href='booknow.aspx?tdid=<%#Eval("tdid")%>' class="booking-bt btn btn-primary">Book Now</a>
                                                    

                                            </div>
                                             <div class="col-12">
                                                <%--<button type="submit" class="booking-bt btn btn-primary">Book Now</button>--%>

                                                <a href='rating.aspx?tdid=<%#Eval("tdid")%>' class="booking-bt btn btn-primary">Rate Us</a>
                                                    

                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                    <asp:SqlDataSource runat="server" ID="SqlDataSource7" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tourdetails] WHERE ([tdid] = @tdid)">
                                        <SelectParameters>
                                            <asp:QueryStringParameter QueryStringField="tdid" Name="tdid" Type="Int32"></asp:QueryStringParameter>
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <hr />
                                </form>
                            </div>
                            <div class="col-12 discount-offer">
                                <img src="img/tour/black-friday.png" alt="Discount Image">
                            </div>
                        </div>
                   





                <asp:SqlDataSource runat="server" ID="SqlDataSource6" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [user_mstr]"></asp:SqlDataSource>
            </div>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    </section>
    <!-- end popular tours -->
</asp:Content>
