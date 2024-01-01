<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="dispCustomizeTour.aspx.cs" Inherits="Project.User.WebForm22" %>
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
                                    <a href="customizeTour.aspx">Explore Your Tour</a>
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
           
            










            
            <br />

            <div class="row" data-cues="slideInLeft">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>

                        <div class="col-md-6 col-lg-4">
                            <a href="cutomizeTourBooking.aspx?cid=<%#Eval("cid") %>">
                                <div class="card tour-card wow fadeIn">
                                    <img src='../../Admin/image/<%#Eval("image")%>' alt="" style="height: 200px; width: 450px;" />
                                    <span class="tour-duration">
                                        <i class="fas fa-history"></i><%#Eval("days") %></span>
                                    <div class="card-body">


                                        <p class="mb-0"><%#Eval("tname") %></p><p></p>
                                        <div class="tour-tags">
                                            <span class="tour-price">Parent : <%#Eval("parent") %></span>
                                            <span class="tour-price">child : <%#Eval("child") %></span>

                                        </div>
                                          <div class="tour-tags">
                                            <span class="tour-price">Start Date : <%#Eval("sdate") %></span>
                                            <span class="tour-price">End Date : <%#Eval("edate") %></span>

                                        </div>
                                    

                                        <br />


                                        <%-- <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                                            <ItemTemplate>
                                                <a href="tourhotel.aspx?hdid=<%#Eval("hdid") %>"><span class="read-more">Hotel Details <i class="fas fa-arrow-right"></i></a>
                                            </ItemTemplate>
                                        </asp:Repeater>--%>

                                        <div class="tour-tags">
                                            <span class="tour-price">Adult : <%#Eval("pprice") %></span>
                                            <span class="tour-price">Children : <%#Eval("cprice") %></span>

                                        </div>
                                        <%--<a href='tourhotel.aspx?tdid=<%#Eval("tdid") %>'><span class="read-more">Hotel Details <i class="fas fa-arrow-right"></i></a>--%>




                                    </div>
                                </div>
                            </a>
                        </div>


                    </ItemTemplate>
                </asp:Repeater>

                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [customize_tour] WHERE (([status] = @status) AND ([uname] = @uname))">
                    <SelectParameters>
                        <asp:QueryStringParameter QueryStringField="status" DefaultValue="1" Name="status" Type="Int32"></asp:QueryStringParameter>

                        <asp:SessionParameter SessionField="uname" Name="uname" Type="String"></asp:SessionParameter>
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
         
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
    <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
</asp:Content>
