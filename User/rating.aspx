<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="rating.aspx.cs" Inherits="Project.User.WebForm20" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <style type="text/css">
.ratingStar {
    font-size: 0pt;
    width: 13px;
    height: 12px;
    margin: 0px;
    padding: 0px;
    cursor: pointer;
    display: block;
    background-repeat: no-repeat;
}

.filledRatingStar {
    background-image: url(image/FilledStar.jpg);

}

.emptyRatingStar {
    background-image: url(image/EmptyStar.jpg);
}

.savedRatingStar {
    background-image: url(image/SavedStar.jpg);
}
</style>
     <section class="inner-banner" style="background-image: url(img/banner/sub-page.png)">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="banner-content">
                        <h2>Rating Our Tour</h2>
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
               
            </div>
            <div class="row align-items-center contact-content">
                <div class="col-md-5 contact-img">
                    <img class="tilt-img" src="img/contact/contact-img.png" alt="img">
                </div>
                <div class="col-md-7">
                    <div class="contact-form">
                        <form runat="server">
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <div class="mb-4">
                                <%--<input type="text" class="form-control" id="your_name" placeholder="Enter your name">--%>
                                User Name<asp:TextBox ID="txtname" required="this field is required" runat="server" class="form-control" placeholder="Enter your name" ></asp:TextBox>
                            </div>
                           
                            <div class="mb-3">
                               <%-- <textarea class="form-control" id="keyword" rows="6" placeholder="Type you keyword"></textarea>--%>
                               Description <asp:TextBox ID="txtdescription" required="this field is required" class="form-control" runat="server" placeholder="Enter Discription" TextMode="MultiLine"></asp:TextBox>
                            </div>
                          <div class="mb-3">
                               <%-- <textarea class="form-control" id="keyword" rows="6" placeholder="Type you keyword"></textarea>--%>
                             Rating :<cc1:Rating ID="Rating1" runat="server" CurrentRating="0" MaxRating="5" StarCssClass="ratingStar" WaitingStarCssClass="savedRatingStar" FilledStarCssClass="filledRatingStar" EmptyStarCssClass="emptyRatingStar"></cc1:Rating></h2>
                           </div>
                            <br />
                            <%--<button type="submit" class="btn btn-primary">Send Message</button>--%>
                            <asp:Button ID="btn_rating" runat="server" Text="Send Message" class="btn btn-primary" OnClick="btn_rating_Click"  />
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
