<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="tourlist.aspx.cs" Inherits="Project.User.WebForm8" %>

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
    <section class="section-spacing-tours tours">
        <div class="container">
           
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
                    <a href="touritinerary.aspx" class="tour-bar-icon">
                        <i class="fas fa-bars"></i>
                    </a>
                    <a href="tours.html" class="tour-bar-icon">
                        <i class="fas fa-th-large"></i>
                    </a>
                </div>
            </div>


            <div class="row">
                <div class="booking-bg">
                   
                    <form class="row g-3" runat="server">
                     
                        <div class="col-md-12">
                            <%--<input type="text" class="form-control booking-from" id="inputAddress" placeholder="Enter your name">--%>
                            <asp:DropDownList ID="DropDownList1" runat="server" class="choose-option form-select form-control-rounded" DataSourceID="SqlDataSource3" DataTextField="tourtype" DataValueField="ttid" AutoPostBack="True">
                               
                            </asp:DropDownList>

                            <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tourtype]"></asp:SqlDataSource>
                        </div>
                        
                    </form>
                </div>
            </div>











            
            <br />

            <div class="row" data-cues="slideInLeft">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>

                        <div class="col-md-6 col-lg-4">
                            <a href='touritinerary.aspx?tdid=<%#Eval("tdid") %>'>
                                <div class="card tour-card wow fadeIn">
                                    <img src='../../Admin/image/<%#Eval("image")%>' alt="" style="height: 200px; width: 450px; "  />
                                    <span class="tour-duration">
                                        <i class="fas fa-history"></i><%#Eval("days") %></span>
                                    <div class="card-body">
                                      
                                        <h6><%#Eval("dispcription") %></h6>
                                        <p class="mb-0"><%#Eval("placename") %></p><br />
                                         

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



                                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [hotel_detail]"></asp:SqlDataSource>
                                    </div>
                                </div>
                            </a>
                        </div>


                    </ItemTemplate>
                </asp:Repeater>
                
            </div>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tourdetails] WHERE ([ttid] = @ttid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="ttid" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <div class="row">
                <div class="pagination-container">
                    <ul class="pagination justify-content-center">
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
   
    
</asp:Content>
