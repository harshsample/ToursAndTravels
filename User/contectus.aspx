<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="contectus.aspx.cs" Inherits="Project.User.WebForm14" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <section class="inner-banner" style="background-image: url(img/banner/sub-page.png)">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="banner-content">
                        <h2>Contect Us</h2>
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
     <section class="section-spacing contact">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="contact-info">
                        <div class="contact-icon">
                            <a href="#">
                                <i class="far fa-envelope"></i>
                            </a>
                            <p class="contact-text">Email Address: </p>
                        </div>
                        <div class="h-border"></div>
                        <div class="contact-sub-text">
                            <p>
                                <a href="mailto:contactinfo@gmail.com">contactinfo@gmail.com</a>
                            </p>
                            <p>
                                <a href="mailto:support@gmail.com">support@gmail.com</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="contact-info">
                        <div class="contact-icon">
                            <a href="#">
                                <i class="fas fa-phone-alt"></i>
                            </a>
                            <p class="contact-text">Phone Number: </p>
                        </div>
                        <div class="h-border"></div>
                        <div class="contact-sub-text">
                            <p>
                                <a href="#">+ 00 12345 67890</a>
                            </p>
                            <p>
                                <a href="#">+ 00 09876 54321</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row align-items-center contact-content">
                <div class="col-md-5 contact-img">
                    <img class="tilt-img" src="img/contact/contact-img.png" alt="img">
                </div>
                <div class="col-md-7">
                    <div class="contact-form">
                        <form runat="server">
                            <div class="mb-4">
                                <%--<input type="text" class="form-control" id="your_name" placeholder="Enter your name">--%>
                                <asp:TextBox ID="txtname" required="this field is required" runat="server" class="form-control" placeholder="Enter your name" ></asp:TextBox>
                            </div>
                            <div class="mb-4">
                                <%--<input type="email" class="form-control" id="email_address" placeholder="Enter email address">--%>
                                <asp:TextBox ID="txtemail" required="this field is required" runat="server" class="form-control"  placeholder="Enter your Email" ></asp:TextBox>
                            </div>
                            <div class="mb-3">
                               <%-- <textarea class="form-control" id="keyword" rows="6" placeholder="Type you keyword"></textarea>--%>
                                <asp:TextBox ID="txtdescription" required="this field is required" class="form-control" runat="server" placeholder="Enter Discription" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <%--<button type="submit" class="btn btn-primary">Send Message</button>--%>
                            <asp:Button ID="btn_submit" runat="server" Text="Send Message" class="btn btn-primary" OnClick="btn_submit_Click" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-12 contact-map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d3988.8270523294163!2d103.8527512!3d1.2772197!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1632647635261!5m2!1sen!2sbd" class="google-map" style="border: 0" allowfullscreen="" loading="lazy"></iframe>
        </div>
    </section>
    <!-- end contact -->
</asp:Content>
