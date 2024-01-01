<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="addgallary.aspx.cs" Inherits="Project.Admin.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
     <div class="col-lg-12">
        <div class="card">
           <div class="card-body">
           <div class="card-title">Add Gallary</div>
           <hr>
            <form runat="server">
           <div class="form-group">
               <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <label for="input-6">Place Name :</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-6" placeholder="Enter Your Name">--%>
               <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                   <ContentTemplate>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tourdetails]"></asp:SqlDataSource>
                         <asp:DropDownList ID="ddlplacename" runat="server" class="form-control form-control-rounded" DataTextField="placename" DataValueField="tdid" DataSourceID="SqlDataSource1" AutoPostBack="True" required="this field is required"></asp:DropDownList>
                   </ContentTemplate>
               </asp:UpdatePanel>
              
           </div>
           <div class="form-group">
            <label for="input-7">Gallary : </label>
               <asp:FileUpload ID="FileUpload1" runat="server" OnDataBinding="FileUpload1_DataBinding"  AllowMultiple="true" />
           </div>
          
           <div class="form-group">
            <%--<button type="submit" class="btn btn-primary btn-round px-5"><i class="icon-lock"></i> Register</button>--%>
               <asp:Button ID="btn_addgallary" runat="server" Text="Submit"  class="btn btn-primary btn-round px-5" OnClick="btn_addgallary_Click" />
          </div>
                <div class="form-group">
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </div>
          </form>
         </div>
         </div>
      </div>
    </div><!--End Row-->
</asp:Content>
