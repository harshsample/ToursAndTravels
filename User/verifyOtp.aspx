<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="verifyOtp.aspx.cs" Inherits="Project.User.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <!doctype html>
<html lang="en">
  
<!-- Mirrored from iqonic.design/themes/instadash/html/backend/form-layout.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Dec 2020 10:29:03 GMT -->
<head>
    <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Insta Dash | Responsive Bootstrap 4 Admin Dashboard Template</title>
      
      <!-- Favicon -->
      <link rel="shortcut icon" href="http://iqonic.design/themes/instadash/html/assets/images/favicon.ico" />
      
      <link rel="stylesheet" href="../assets/css/backendf700.css?v=1.0.1">
      <link rel="stylesheet" href="../assets/vendor/%40fortawesome/fontawesome-free/css/all.min.css">
      <link rel="stylesheet" href="../assets/vendor/line-awesome/dist/line-awesome/css/line-awesome.min.css">
      <link rel="stylesheet" href="../assets/vendor/remixicon/fonts/remixicon.css">
      <link rel="stylesheet" href="../assets/vendor/%40icon/dripicons/dripicons.css">
      
      <link rel='stylesheet' href='../assets/vendor/fullcalendar/core/main.css' />
      <link rel='stylesheet' href='../assets/vendor/fullcalendar/daygrid/main.css' />
      <link rel='stylesheet' href='../assets/vendor/fullcalendar/timegrid/main.css' />
      <link rel='stylesheet' href='../assets/vendor/fullcalendar/list/main.css' />
      <link rel="stylesheet" href="../assets/vendor/mapbox/mapbox-gl.css">  </head>
  <body>
    <!-- loader Start -->
    <div id="loading">
          <div id="loading-center">
          </div>
    </div>
    <!-- loader END -->
    <!-- Wrapper Start -->
    <div class="wrapper">
      
      <div class="content-page">
      <div class="container-fluid">
         <div class="row">
            <div class="col-sm-6">
               <div class="card">
                  <div class="card-header d-flex justify-content-between">
                     <div class="header-title">
                        <h4 class="card-title">Verify OTP</h4>
                     </div>
                  </div>
                  <div class="card-body">
                    
                     <form runat="server">
                        <div class="form-group">
                           <label for="email">Enter OTP :</label>
                          <%-- <input type="email" class="form-control" id="email1">--%>
                            <asp:TextBox ID="txtverifyOtp" runat="server" required="this field is required" class="form-control" ></asp:TextBox>
                        </div>
                        <div class="form-group">
                           
                          <%-- <input type="email" class="form-control" id="email1">--%>
                           <a href="resendotp.aspx" class="text-primary">Resend-OTP</a>
                        </div>
                        
                        <%--<button type="submit" class="btn btn-primary">Submit</button>--%>
                         <asp:Button ID="btn_verify_otp" class="btn btn-primary" runat="server" Text="Verify" OnClick="btn_verify_otp_Click" />
                        <button type="submit" class="btn bg-danger">Cancel</button>

                     </form>
                  </div>
               </div>
               </div>
         </div>
      </div>
      </div>
    </div>
    <!-- Wrapper End-->
   
    <!-- Backend Bundle JavaScript -->
    <script data-cfasync="false" src="../../../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="../assets/js/backend-bundle.min.js"></script>
    
    <!-- Flextree Javascript-->
    <script src="../assets/js/flex-tree.min.js"></script>
    <script src="../assets/js/tree.js"></script>
    
    <!-- Table Treeview JavaScript -->
    <script src="../assets/js/table-treeview.js"></script>
    
    <!-- Masonary Gallery Javascript -->
    <script src="../assets/js/masonry.pkgd.min.js"></script>
    <script src="../assets/js/imagesloaded.pkgd.min.js"></script>
    
    <!-- Mapbox Javascript -->
    <script src="../assets/js/mapbox-gl.js"></script>
    <script src="../assets/js/mapbox.js"></script>
    
    <!-- Fullcalender Javascript -->
    <script src='../assets/vendor/fullcalendar/core/main.js'></script>
    <script src='../assets/vendor/fullcalendar/daygrid/main.js'></script>
    <script src='../assets/vendor/fullcalendar/timegrid/main.js'></script>
    <script src='../assets/vendor/fullcalendar/list/main.js'></script>
    
    <!-- SweetAlert JavaScript -->
    <script src="../assets/js/sweetalert.js"></script>
    
    <!-- Vectoe Map JavaScript -->
    <script src="../assets/js/vector-map-custom.js"></script>
    
    <!-- Chart Custom JavaScript -->
    <script src="../assets/js/customizer.js"></script>
    
    <!-- Chart Custom JavaScript -->
    <script src="../assets/js/chart-custom.js"></script>
    
    <!-- slider JavaScript -->
    <script src="../assets/js/slider.js"></script>
    
    <!-- app JavaScript -->
    <script src="../assets/js/app.js"></script>
  </body>

<!-- Mirrored from iqonic.design/themes/instadash/html/backend/form-layout.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Dec 2020 10:29:03 GMT -->
</html>
   
</asp:Content>
