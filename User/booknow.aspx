<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="booknow.aspx.cs" Inherits="Project.User.WebForm13" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- start booking -->
    <section class="inner-banner" style="background-image: url(img/banner/sub-page.png)">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="banner-content">
                        <h2>Booking</h2>
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
    <section class="section-spacing booking">
        <div class="container">
            <div class="row">
                <div class="booking-bg">
                   
                    <form class="row g-3" runat="server">
                         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <div class="col-sm-12">
                            <h2 class="form-hader">Book This Tour </h2>
                        </div>
                        <div class="col-md-6">
                            <%--<input type="text" class="form-control booking-from" id="inputAddress" placeholder="Enter your name">--%>
                            Name :<asp:TextBox ID="txtunsername" required="this field is required" runat="server" class="form-control booking-from" placeholder="Enter your name"></asp:TextBox>
                        </div>

                        <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                            Country :<asp:TextBox ID="txtcountry" required="this field is required" runat="server" placeholder="Enter Country Name." class="form-control"></asp:TextBox>

                        </div>


                        <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                           Email : <asp:TextBox ID="txtemail" required="this field is required" runat="server" placeholder="Enter email address" class="form-control"></asp:TextBox>

                        </div>

                         <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                           State : <asp:TextBox ID="txtstate" required="this field is required" runat="server" placeholder="Enter State No." class="form-control"></asp:TextBox>

                        </div>


                        <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                           Mobile No. <asp:TextBox ID="txtmob" required="this field is required" runat="server" placeholder="Enter Mobile No." class="form-control"></asp:TextBox>

                        </div>
                        
                       
                        <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                            City :<asp:TextBox ID="txtcity" required="this field is required" runat="server" placeholder="Enter City Name." class="form-control"></asp:TextBox>

                        </div>
                        <div class="col-md-6">
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                 
                            No. of Adult <asp:DropDownList ID="ddlparent" required="this field is required" runat="server" class="choose-option form-select" AutoPostBack="True" OnSelectedIndexChanged="ddlparent_SelectedIndexChanged">
                                
                               <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            </ContentTemplate>
                             
                        </asp:UpdatePanel>
                       
                        </div>

                            <%--<select id="guest" class="choose-option form-select">
                                
                                <option selected>Guests</option>
                                <option>Guests 1</option>
                                <option>Guests 2</option>
                                <option>Guests 3</option>
                            </select>--%>
                        

                         

                         <div class="col-md-6">
                             No. of Child :
                            <asp:DropDownList ID="ddlchild" runat="server" required="this field is required" class="choose-option form-select" AutoPostBack="True" OnSelectedIndexChanged="ddlchild_SelectedIndexChanged">
                               
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                            <%--<select id="guest" class="choose-option form-select">
                                
                                <option selected>Guests</option>
                                <option>Guests 1</option>
                                <option>Guests 2</option>
                                <option>Guests 3</option>
                            </select>--%>
                        </div>
                       
                                <div class="col-md-6">
                                    <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                                    <%--<asp:TextBox ID="TextBox1" runat="server" placeholder="Enter City Name." class="form-control"></asp:TextBox>--%>
                             Adult Price (Per) :<asp:Label ID="lblparent" required="this field is required" runat="server" Text="Label" class="form-control">  </asp:Label>

                                </div>
                            

                        <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                            <%--<asp:TextBox ID="TextBox1" runat="server" placeholder="Enter City Name." class="form-control"></asp:TextBox>--%>
                            Total Adult Price : <asp:Label ID="lbltotprice" required="this field is required" runat="server" Text="0" class="form-control"></asp:Label>

                        </div>
                         <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                            <%--<asp:TextBox ID="TextBox1" runat="server" placeholder="Enter City Name." class="form-control"></asp:TextBox>--%>
                             Child Price (Per) :<asp:Label ID="lblchild" required="this field is required" runat="server" Text="Label" class="form-control"></asp:Label>

                        </div>
                        <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                            <%--<asp:TextBox ID="TextBox1" runat="server" placeholder="Enter City Name." class="form-control"></asp:TextBox>--%>
                            Total Child Price : <asp:Label ID="lbltotalchild" required="this field is required" runat="server" Text="0" class="form-control"></asp:Label>

                        </div>
                         <div class="col-md-6">
                            <%--<input type="email" class="form-control" id="inputAddress2" placeholder="Enter email address">--%>
                            <%--<asp:TextBox ID="TextBox1" runat="server" placeholder="Enter City Name." class="form-control"></asp:TextBox>--%>
                            Total Price : <asp:Label ID="lblTotalprice" required="this field is required" runat="server" Text="0" class="form-control"></asp:Label>

                        </div>
                       <hr />
                        
                        <div class="col-12">
                            <%--<button type="submit" class="booking-bt btn btn-primary">Book Now</button>--%>
                            <asp:Button ID="btn_booknow" class="booking-bt btn btn-primary" runat="server" Text="Proceed For Payment " OnClick="btn_booknow_Click" />
                        </div>
                    </form>
                </div>
            </div>
            <div class="row">
                <div class="faq">
                    <div class="col-md-12">
                        <h2 class="faq-hedar">Frequently Asked Question</h2>
                    </div>
                    <div class="accordion accordion-flush" id="accordionFlushExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingOne">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne"> Can I book extra nights of hotel accommodation before or after my tour? </button>
                            </h2>
                            <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                                <div>
                                    <p class="faq-text"> Starting and ending hotels are listed on your travel voucher and in the Trip Details document. We use a variety of hotels en-route and so a complete list of hotels won't be provided until day 1 of your tour. If your family requires contact information, or in case of emergency, please have them phone 1-800-708- 7761. If our office is closed please refer to the emergency phone number that is found on the Trip Details document, this number can be reached 24 hours a day, 7 days a week.</p>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo"> Can you provide me with a list of the hotels we will be staying at? </button>
                            </h2>
                            <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                                <div>
                                    <p class="faq-text"> Starting and ending hotels are listed on your travel voucher and in the Trip Details document. We use a variety of hotels en-route and so a complete list of hotels won't be provided until day 1 of your tour. If your family requires contact information, or in case of emergency, please have them phone 1-800-708- 7761. If our office is closed please refer to the emergency phone number that is found on the Trip Details document, this number can be reached 24 hours a day, 7 days a week.</p>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree"> What vaccinations are recommended for this adventure? </button>
                            </h2>
                            <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                                <div>
                                    <p class="faq-text"> Starting and ending hotels are listed on your travel voucher and in the Trip Details document. We use a variety of hotels en-route and so a complete list of hotels won't be provided until day 1 of your tour. If your family requires contact information, or in case of emergency, please have them phone 1-800-708- 7761. If our office is closed please refer to the emergency phone number that is found on the Trip Details document, this number can be reached 24 hours a day, 7 days a week.</p>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="flush-headingfour">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapsefour" aria-expanded="false" aria-controls="flush-collapsefour"> What are your booking terms and conditions? </button>
                            </h2>
                            <div id="flush-collapsefour" class="accordion-collapse collapse" aria-labelledby="flush-headingfour" data-bs-parent="#accordionFlushExample">
                                <div>
                                    <p class="faq-text"> Starting and ending hotels are listed on your travel voucher and in the Trip Details document. We use a variety of hotels en-route and so a complete list of hotels won't be provided until day 1 of your tour. If your family requires contact information, or in case of emergency, please have them phone 1-800-708- 7761. If our office is closed please refer to the emergency phone number that is found on the Trip Details document, this number can be reached 24 hours a day, 7 days a week.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
    <!-- end booking -->
</asp:Content>
