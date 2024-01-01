<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="adminprofile.aspx.cs" Inherits="Project.Admin.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="row">
      <div class="col-lg-12">
         <div class="card">
           <div class="card-body">
           <div class="card-title">Admin Profile</div>
           <hr>
            <form runat="server">
                <div class="avatar"><img class="mr-3 side-user-img " src="assets/images/avatars/avatar-13.png"  style="border-radius: 50px;" alt="user avatar">
                    
                </div>
                <asp:FileUpload ID="FileUpload1" runat="server" />
           <div class="form-group">
            <label for="input-1">Name</label>
            <input type="text" class="form-control" id="input-1" placeholder="Enter Your Name">
           </div>
           <div class="form-group">
            <label for="input-2">Email</label>
            <input type="text" class="form-control" id="input-2" placeholder="Enter Your Email Address">
           </div>
           <div class="form-group">
            <label for="input-3">Mobile</label>
            <input type="text" class="form-control" id="input-3" placeholder="Enter Your Mobile Number">
           </div>
           <div class="form-group">
            <label for="input-4">Password</label>
            <input type="text" class="form-control" id="input-4" placeholder="Enter Password">
           </div>
           <div class="form-group">
            <label for="input-5">Confirm Password</label>
            <input type="text" class="form-control" id="input-5" placeholder="Confirm Password">
           </div>
           <div class="form-group py-2">
             <div class="icheck-material-primary">
            <input type="checkbox" id="user-checkbox1" checked=""/>
            <label for="user-checkbox1">I Agree Terms & Conditions</label>
            </div>
           </div>
           <div class="form-group">
            <button type="submit" class="btn btn-primary px-5"><i class="icon-lock"></i> Register</button>
          </div>
          </form>
         </div>
         </div>
      </div>
           </div>
</asp:Content>
