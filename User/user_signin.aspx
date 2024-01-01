<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="user_signin.aspx.cs" Inherits="Project.User.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

    <!doctype html>
<html lang="en">
  
<!-- Mirrored from iqonic.design/themes/instadash/html/backend/auth-sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Dec 2020 10:33:47 GMT -->
<head>
    <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>Tours & Travels</title>
      
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
                     <div class="col-lg-6">
                        <h2 class="mb-2">Sign In</h2>
                        <p>To Keep connected with us please login with your personal info.</p>
                        <form runat="server" >
                           <div class="row">
                              <div class="col-lg-12">
                                 <div class="floating-label form-group">
                                   <%-- <input class="floating-input form-control" type="email" placeholder=" ">--%>
                                     <asp:TextBox ID="txtemail"  runat="server" class="floating-input form-control" placeholder=" "></asp:TextBox>
                                    <label>Email</label>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Email..." ControlToValidate="txtemail" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Email Properly.." ControlToValidate="txtemail" ForeColor="#FF3300" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                                 </div>
                              </div>
                              <div class="col-lg-12">
                                 <div class="floating-label form-group">
                                    <%--<input class="floating-input form-control" type="password" placeholder=" ">--%>
                                     <asp:TextBox ID="txtpass" class="floating-input form-control" placeholder=" "  runat="server" TextMode="Password"></asp:TextBox>
                                    <label>Password</label>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpass" ErrorMessage="Enter Password.."  ForeColor="#FF3300"></asp:RequiredFieldValidator>
                                 </div>
                              </div>
                              <div class="col-lg-6">
                                 <div class="custom-control custom-checkbox mb-3">
                                    <input type="checkbox" class="custom-control-input" id="customCheck1">
                                    <label class="custom-control-label" for="customCheck1">Remember Me</label>
                                 </div>
                              </div>
                              <div class="col-lg-6">
                                 <a href='forgotpassword.aspx' class="text-primary float-right">Forgot Password?</a>
                              </div>
                           </div>
                           <%--<button type="submit" class="btn btn-primary">Sign In</button>--%>
                            
                                <asp:Button ID="btn_user_signin" runat="server" class="btn btn-primary" Text="SignIn" OnClick="btn_user_signin_Click" />
                           
                            
                           <p class="mt-3">
                              Create an Account <a href="user_signup.aspx" class="text-primary">Sign Up</a>
                           </p>
                             <p class="mt-3">
                              Create Account As Tour Guider <a href="tourguidedata.aspx" class="text-primary">Sign Up</a>
                           </p>
                        </form>
                     </div>
                     <div class="col-lg-6 mb-lg-0 mb-4 mt-lg-0 mt-4">
                        <img src="../assets/images/login/01.png" class="img-fluid w-80" alt="">
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

<!-- Mirrored from iqonic.design/themes/instadash/html/backend/auth-sign-in.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 20 Dec 2020 10:33:48 GMT -->
</html>
</asp:Content>
