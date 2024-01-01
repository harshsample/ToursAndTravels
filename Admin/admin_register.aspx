<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_register.aspx.cs" Inherits="Project.Admin.admin_register" %>



<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from codervent.com/bulona/demo/authentication-signup2.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Feb 2019 05:33:50 GMT -->
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Tours & Travels</title>
  <!--favicon-->
  <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">
  <!-- Bootstrap core CSS-->
  <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- animate CSS-->
  <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
  <!-- Icons CSS-->
  <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
  <!-- Custom Style-->
  <link href="assets/css/app-style.css" rel="stylesheet"/>
  
</head>

<body>

<!-- start loader -->
   <div id="pageloader-overlay" class="visible incoming"><div class="loader-wrapper-outer"><div class="loader-wrapper-inner" ><div class="loader"></div></div></div></div>
   <!-- end loader -->

<!-- Start wrapper-->
 <div id="wrapper">

	   <div class="card-authentication2 mx-auto my-3">
	    <div class="card-group">
	    

	    	<div class="card mb-0">
	    		<div class="card-body">
	    			<div class="card-content p-3">
	    				<div class="text-center">
					 		<img src="assets/images/tours.png" alt="logo icon" style="width:100px">
					 	</div>
					 <div class="card-title text-uppercase text-center py-3">Sign Up</div>
					    <form runat="server">
						  <div class="form-group">
						   <div class="position-relative has-icon-left">
							  <label for="exampleInputName" class="sr-only">Name</label>
							  <%--<input type="text" id="exampleInputName" class="form-control" placeholder="Name">--%>
							   <asp:TextBox ID="txtaname" runat="server" class="form-control" placeholder="Enter Name" ></asp:TextBox>
							   <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Name..." ControlToValidate="txtaname" ForeColor="#FF3300"></asp:RequiredFieldValidator>
							  <div class="form-control-position">
								  <i class="icon-user"></i>
							  </div>
						   </div>
						  </div>
							
						  <div class="form-group">
						   <div class="position-relative has-icon-left">
							  <label for="exampleInputEmailId" class="sr-only">Email ID</label>
							 <%-- <input type="text" id="exampleInputEmailId" class="form-control" placeholder="Email ID">--%>
							   <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email ID" ></asp:TextBox>
							   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter Email.." ControlToValidate="txtemail" ForeColor="#FF3300"></asp:RequiredFieldValidator>
							   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Proper Email.." ControlToValidate="txtemail" ForeColor="#FF3300" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
							  <div class="form-control-position">
								  <i class="icon-envelope-open"></i>
							  </div>
						   </div>
						  </div>
						  <div class="form-group">
						   <div class="position-relative has-icon-left">
							  <label for="exampleInputPassword" class="sr-only">Password</label>
							 <%-- <input type="text" id="exampleInputPassword" class="form-control" placeholder="Password">--%>
							   <asp:TextBox ID="txtpass" runat="server" class="form-control" placeholder="Password"></asp:TextBox>
							   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtpass" ErrorMessage="Please Enter Password.." ForeColor="#FF3300"></asp:RequiredFieldValidator>
							  <div class="form-control-position">
								  <i class="icon-lock"></i>
							  </div>
						   </div>
						  </div>
						  <div class="form-group">
						   <div class="position-relative has-icon-left">
							  <label for="exampleInputRetryPassword" class="sr-only">Confrim Password</label>
							  <input type="password" id="exampleInputRetryPassword" class="form-control" placeholder="Retry Password" >
							  <div class="form-control-position">
								  <i class="icon-lock"></i>
							  </div>
						   </div>
						  </div>
							 <div class="form-group">
						   <div class="position-relative has-icon-left">
							  <label for="exampleInputRetryPassword" class="sr-only">Mobile No</label>
							  <%--<input type="password" id="exampleInputRetryPassword" class="form-control" placeholder="Retry Password">--%>
							   <asp:TextBox ID="txt_mob" runat="server"  class="form-control" placeholder="Enter Mobile No." ></asp:TextBox>
							   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Mobile No.." ControlToValidate="txt_mob" ForeColor="#FF3300"></asp:RequiredFieldValidator>
							  <div class="form-control-position">
								  <i class="icon-lock"></i>
							  </div>
						   </div>
						  </div>
						  <div class="form-group">
						   <div class="icheck-material-primary">
			                <input type="checkbox" id="user-checkbox" checked="" />
			                <label for="user-checkbox">I Accept terms & conditions</label>
						  </div>
						 </div>
						<%-- <button type="button" class="btn btn-primary btn-block waves-effect waves-light">Sign Up</button>--%>
							<asp:Button ID="btn_admin_register" class="btn btn-primary btn-block waves-effect waves-light" runat="server" Text="SignUp" OnClick="btn_admin_register_Click" />
						 <div class="text-center pt-3">
						 <p>or Sign up with</p>
						 <div class="form-row mt-4">
						  <div class="form-group mb-0 col-6">
						   <button type="button" class="btn bg-facebook text-white btn-block"><i class="fa fa-facebook-square"></i> Facebook</button>
						 </div>
						 <div class="form-group mb-0 col-6 text-right">
						  <button type="button" class="btn bg-twitter text-white btn-block"><i class="fa fa-twitter-square"></i> Twitter</button>
						 </div>
						</div>

						 <hr>

						 <p class="text-dark">Already have an account? <a href="admin_signin.aspx"> Sign In here</a></p>
						 </div>
					</form>
				 </div>
				</div>
	    	
	     </div>
	    </div>
    
     <!--Start Back To Top Button-->
    <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
    <!--End Back To Top Button-->
	
	<!--start color switcher-->
   <div class="right-sidebar">
    <div class="switcher-icon">
      <i class="zmdi zmdi-settings zmdi-hc-spin"></i>
    </div>
    <div class="right-sidebar-content">

      <p class="mb-0">Gaussion Texture</p>
      <hr>
      
      <ul class="switcher">
        <li id="theme1"></li>
        <li id="theme2"></li>
        <li id="theme3"></li>
        <li id="theme4"></li>
        <li id="theme5"></li>
        <li id="theme6"></li>
      </ul>

      <p class="mb-0">Gradient Background</p>
      <hr>
      
      <ul class="switcher">
        <li id="theme7"></li>
        <li id="theme8"></li>
        <li id="theme9"></li>
        <li id="theme10"></li>
        <li id="theme11"></li>
        <li id="theme12"></li>
      </ul>
      
     </div>
   </div>
  <!--end color cwitcher-->
	
	</div><!--wrapper-->
	
  <!-- Bootstrap core JavaScript-->
  <script src="assets/js/jquery.min.js"></script>
  <script src="assets/js/popper.min.js"></script>
  <script src="assets/js/bootstrap.min.js"></script>
	
  <!-- sidebar-menu js -->
  <script src="assets/js/sidebar-menu.js"></script>
  
  <!-- Custom scripts -->
  <script src="assets/js/app-script.js"></script>
 
</body>

<!-- Mirrored from codervent.com/bulona/demo/authentication-signup2.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Feb 2019 05:33:50 GMT -->
</html>
