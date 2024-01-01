<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="tourguidedata.aspx.cs" Inherits="Project.User.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    



<!doctype html>
<html lang="en">
  
<!-- Mirrored from iqonic.design/themes/instadash/html/backend/auth-sign-up.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Dec 2020 10:33:48 GMT -->
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
    
      <div class="wrapper">
      <section class="login-content">
         <div class="container h-100">
            <div class="row align-items-center justify-content-center h-100">
               <div class="col-12">
                  <div class="row align-items-center">
                     <div class="col-lg-12">
                        <h2 class="mb-2">Sign Up</h2>
                        <p>Enter your personal details and start journey with us.</p>
                        <form runat="server">
                           <div class="row">
                              <div class="col-lg-6">
                                 <div class="floating-label form-group">
                                    <%--<input class="floating-input form-control" type="text" placeholder=" ">--%>
                                     <asp:TextBox ID="txttgname" required="this field is required" runat="server" class="floating-input form-control"  placeholder=" " OnTextChanged="txttgname_TextChanged"></asp:TextBox>
                                    <label>Name</label>
                                 </div>
                              </div>
                              
                              <div class="col-lg-6">
                                 <div class="floating-label form-group">
                                    <%--<input class="floating-input form-control" type="email" placeholder=" ">--%>
                                     <asp:TextBox ID="txttgemail" required="this field is required" runat="server" class="floating-input form-control"  placeholder=" "></asp:TextBox>
                                    <label>Email</label>
                                 </div>
                              </div>
                              <div class="col-lg-6">
                                 <div class="floating-label form-group">
                                   <%-- <input class="floating-input form-control" type="text" placeholder=" ">--%>
                                     <asp:TextBox ID="txtmobno" runat="server" required="this field is required"  class="floating-input form-control"  placeholder=" "></asp:TextBox>
                                    <label>Phone No.</label>
                                 </div>
                              </div>
                              <div class="col-lg-6">
                                 <div class="floating-label form-group">
                                    <%--<input class="floating-input form-control" type="password" placeholder=" ">--%>
                                     <asp:TextBox ID="txtpass" runat="server" required="this field is required" class="floating-input form-control"  placeholder=" " TextMode="Password"></asp:TextBox>
                                    <label>Password</label>
                                 </div>
                              </div>
                              <div class="col-lg-6">
                                 <div class="floating-label form-group">
                                    <input class="floating-input form-control" type="password" placeholder=" ">
                                    <label>Confirm Password</label>
                                 </div>
                              </div>
                                <div class="col-lg-6">
                                 <div class="floating-label form-group">
                                    <%--<input class="floating-input form-control" type="password" placeholder=" ">--%>
                                     
                                    <label>Upload Picture</label>
                                 </div>
                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                    <asp:Image ID="Image1" runat="server" Height="100px" Width="100px" />
                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                              </div>
                              <div class="col-lg-12">
                                 <div class="custom-control custom-checkbox mb-3">
                                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                                    <label class="custom-control-label" for="customCheck1">I agree with the terms 
                                 </div>
                              </div>
                           </div>
                           <%--<button type="submit" class="btn btn-primary">Sign Up</button>--%>
                            <asp:Button ID="btn_register" runat="server" Text="Register" class="btn btn-primary" OnClick="btn_register_Click" />
                           <p class="mt-3">
                              Already have an Account <a href="auth-sign-in.html" class="text-primary">Sign Iny">Sign In</a>
                           </p>
                        </form>
                     </div>
                    
                  </div>
               </div>
            </div>
         </div>
      </section>
      </div>
    
    <!-- Backend Bundle JavaScript -->
    <script src="../assets/js/backend-bundle.min.js"></script>
    
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

<!-- Mirrored from iqonic.design/themes/instadash/html/backend/auth-sign-up.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Dec 2020 10:33:48 GMT -->
</html>

    </label>

</asp:Content>
