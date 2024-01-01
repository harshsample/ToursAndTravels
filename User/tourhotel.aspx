<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="tourhotel.aspx.cs" Inherits="Project.User.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section class="inner-banner" style="background-image: url(img/banner/sub-page.png)">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="banner-content">
                        <h2>Tour Hotels</h2>
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
    <section class="section-spacing-tours tours">
        <div class="container">
            <div class="row"> 
                
                <div class="col-md-3 col-lg-12" data-cues="slideInUp">
                    <div class="row align-items-center tour-bar-row">
                        <div class="col">
                            <p class="tour-bar-text">Showing 1-6 of 20 results</p>
                        </div>
                        <div class="col d-flex justify-content-end">
                            <div class="custom-select">
                                <select>
                                    <option value="0">Sort</option>
                                    <option value="1">Date</option>
                                    <option value="2">Rating</option>
                                </select>
                            </div>
                            <a href="tours-list.html" class="tour-bar-icon">
                                <i class="fas fa-bars"></i>
                            </a>
                            <a href="tours.html" class="tour-bar-icon">
                                <i class="fas fa-th-large"></i>
                            </a>
                        </div>
                    </div>

                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="card tour-list-card tour-card wow fadeIn" style="height: 250px;">
                                <img class="card-img-top" src='../../Admin/hotelImage/<%#Eval("image")%>' alt="" style="width: 300px; height: 250px">
                                <span class="tour-duration">
                                    <i class="fas fa-history"></i><%#Eval("day") %> Days </span>
                                <div class="card-body">
                                    <div class="tour-tags">
                                    </div>
                                    <h6><%#Eval("hname") %></h6>
                                    <p class="mb-0"><%#Eval("discription") %></p>
                                    <span class="tour-place"><%#Eval("placename") %></span>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>








                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT hotel_detail.hdid, hotel_detail.tdid, hotel_detail.hname, hotel_detail.day, hotel_detail.discription, hotel_detail.image, tourdetails.placename FROM hotel_detail INNER JOIN tourdetails ON hotel_detail.tdid = tourdetails.tdid WHERE (hotel_detail.tdid = @tdid)">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="tdid" Name="tdid" Type="Int32"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
            <div class="row">
                <div class="pagination-container">
                    <ul class="pagination justify-content-end">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">
                                    <i class="fa fa-angle-double-left"></i>
                                </span>
                            </a>
                        </li>
                        <li class="active">
                            <a href="#">1</a>
                        </li>
                        <li>
                            <a href="#">2</a>
                        </li>
                        <li>
                            <a href="#">3</a>
                        </li>
                        <li>
                            <a href="#">4</a>
                        </li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">
                                    <i class="fa fa-angle-double-right"></i>
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <!-- end popular tours -->
</asp:Content>
