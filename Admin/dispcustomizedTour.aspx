<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="dispcustomizedTour.aspx.cs" Inherits="Project.Admin.WebForm48" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
      <div class="col-lg-12">
        <div class="card">
           <div class="card-body">
           <div class="card-title">Enter Tour Details Here...</div>
           <hr>
            <form runat="server">
                     
           <div class="form-group">
            <label for="input-7">User Name
            </label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtuname" required="this field is required" class="form-control form-control-rounded" runat="server" placeholder="Enter user Name"></asp:TextBox>
           </div>
                
           <div class="form-group">
            <label for="input-7">Place Name </label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="placename" required="this field is required" class="form-control form-control-rounded" runat="server" placeholder="Enter Place Name"></asp:TextBox>
           </div>
                <div class="form-group">
            <label for="input-7">Parent </label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtparent" required="this field is required" class="form-control form-control-rounded" runat="server" placeholder="Enter Place Name"></asp:TextBox>
           </div>
                <div class="form-group">
            <label for="input-7">Child </label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtchild" required="this field is required" class="form-control form-control-rounded" runat="server" placeholder="Enter Place Name"></asp:TextBox>
           </div>
                <div class="form-group">
            <label for="input-7">Start Date </label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtsdate" required="this field is required" class="form-control form-control-rounded" runat="server" placeholder="Enter Place Name"></asp:TextBox>
           </div>
                <div class="form-group">
            <label for="input-7">End Date </label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtedate" required="this field is required" class="form-control form-control-rounded" runat="server" placeholder="Enter Place Name"></asp:TextBox>
           </div>
                <div class="form-group">
            <label for="input-7">Days </label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="txtdays" required="this field is required" class="form-control form-control-rounded" runat="server" placeholder="Enter Place Name"></asp:TextBox>
           </div>

           <div class="form-group">
            <label for="input-8">Place Image</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-8" placeholder="Enter Your Mobile Number">--%>
          
                <div class="fallback">
                    <asp:FileUpload ID="FileUpload1"  runat="server" />
                    <asp:Label ID="Label2" runat="server" Text="" ></asp:Label>
                    <asp:Image ID="Image1" runat="server" Width="100px" Height="100px"/>
                </div>
           </div>
           <div class="form-group">
            

                 <div class="form-group">
            <label for="input-10">Adult Price</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-10" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtadultprice" required="this field is required" class="form-control form-control-rounded" runat="server"  placeholder="Enter Price" ></asp:TextBox>
           </div>

                <div class="form-group">
            <label for="input-10">Childern Price</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-10" placeholder="Confirm Password">--%>
               <asp:TextBox ID="txtchildrenprice" required="this field is required" class="form-control form-control-rounded" runat="server"  placeholder="Enter Price" ></asp:TextBox>
           </div>
          
           <div class="form-group">
            <%--<button type="submit" class="btn btn-primary btn-round px-5"><i class="icon-lock"></i> Register</button>--%>
              
               <asp:Button ID="btn_updateplace" runat="server" Text="Update"   class="btn btn-success btn-round px-5" OnClick="btn_updateplace_Click" />
               <asp:Button ID="btn_cancel" runat="server" class="btn btn-danger btn-round px-5" Text="Cancel" />
          </div>

          </form>
         </div>
         </div>
      </div>
    </div>
</asp:Content>
