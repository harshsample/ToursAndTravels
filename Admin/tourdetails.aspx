<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="tourdetails.aspx.cs" Inherits="Project.Admin.WebForm5" %>
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
     <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Tours Ditails</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours & Travels </a></li>
                                    <li class="breadcrumb-item"><a href="javascript:void(0);">Tours Details</a></li>
                                   
                                </ol>
                            </div>
                            <a href="disptourdetails.aspx" class="white_btn3">Display Report</a>
                        </div>
                    </div>
                </div>
     
    <div>
      <div class="col-lg-12">
        <div class="card">
           <div class="card-body">
           <div class="card-title">Enter Tour Details Here...</div>
           <hr>
            <form runat="server">
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

                        <div class="form-group">
                            <label for="input-6">Select Tour Type</label>
                            <%--<input type="text" class="form-control form-control-rounded" id="input-6" placeholder="Enter Your Name">--%>
                            
                            <asp:DropDownList ID="ddltourtype" runat="server" class="form-control form-control-rounded" DataSourceID="SqlDataSource1" DataTextField="tourtype" DataValueField="ttid" AutoPostBack="True"></asp:DropDownList>

                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tourtype]"></asp:SqlDataSource>
                        </div>
                    </ContentTemplate>

                </asp:UpdatePanel>
           <div class="form-group">
            <label for="input-7">Place Name </label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-7" placeholder="Enter Your Email Address">--%>
               <asp:TextBox ID="placename" required="this field is required" class="form-control form-control-rounded" runat="server" placeholder="Enter Place Name"></asp:TextBox>
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
            <label for="input-9">Days</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-9" placeholder="Enter Password">--%>
               <asp:TextBox ID="days" required="this field is required" class="form-control form-control-rounded" runat="server"  placeholder="Enter Place Days"></asp:TextBox>
           </div>
           <div class="form-group">
            <label for="input-10">Discription</label>
            <%--<input type="text" class="form-control form-control-rounded" id="input-10" placeholder="Confirm Password">--%>
               <asp:TextBox ID="discription" required="this field is required" class="form-control form-control-rounded" runat="server"  placeholder="Enter Discription" OnTextChanged="discription_TextChanged"></asp:TextBox>
           </div>

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
               <asp:Button ID="btn_insertplace" runat="server" class="btn btn-primary btn-round px-5" Text="Insert" OnClick="btn_insertplace_Click" />
               <asp:Button ID="btn_updateplace" runat="server" Text="Update"   class="btn btn-success btn-round px-5" Visible="False" OnClick="btn_updateplace_Click" />
               <asp:Button ID="btn_cancel" runat="server" class="btn btn-danger btn-round px-5" Text="Cancel" />
          </div>

          </form>
         </div>
         </div>
      </div>
    </div>
</asp:Content>
