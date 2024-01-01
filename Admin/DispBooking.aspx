<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="DispBooking.aspx.cs" Inherits="Project.Admin.WebForm46" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row">
                    <div class="col-12">
                        <div class="page_title_box d-flex align-items-center justify-content-between">
                            <div class="page_title_left">
                                <h3 class="f_s_30 f_w_700 text_white">Booking</h3>
                                <ol class="breadcrumb page_bradcam mb-0">
                                    
                                   <li class="breadcrumb-item"><a href="javascript:void(0);">Display Booking</a></li>
                                </ol>
                            </div>
                           
                        </div>
                    </div>
                </div>



  <form runat="server">
             <asp:TextBox ID="txtsearch" runat="server"></asp:TextBox>
              <asp:Button ID="btn_search" runat="server" Text="Search" Class="btn btn-success" OnClick="btn_search_Click" />
       <asp:Button ID="btn_display" runat="server" Text="Display All" Class="btn btn-primary"  />
      <br /><p></p>
  <div class="row">
        <div class="col-lg-12">
          <div class="card">
            <div class="card-header"><i class="fa fa-table"></i> Data Exporting</div>
            
            <div class="card-body">
              <div class="table-responsive">
              <table id="example" class="table table-bordered">
                <thead>
                    <tr>
                        <th>Booking Id</th>
                        <th>User Name</th>
                        <th>Mobile No.</th>
                       <th>Email</th>
                        <th>Country</th>
                        <th>State</th>
                        <th>City</th>
                        <th>Date</th>
                        <th>Parent</th>
                        <th>Child</th>
                        <th>Parent Total</th>
                        <th>Child Total</th>
                        <th>Total Price</th>
                        <th>Tour Name</th>
                        <th>Status</th>
                         
                    </tr>
                </thead>
                <tbody>
                      
                    <asp:Repeater ID="Repeater1" runat="server" >
                        <ItemTemplate>
                            <tr>
                                <td><%#Eval("bid") %></td>
                                <td><%#Eval("uname") %></td>
                                <td><%#Eval("mob") %></td>
                                <td><%#Eval("email") %></td>
                                <td><%#Eval("country") %></td>
                                <td><%#Eval("state") %></td>
                                <td><%#Eval("city") %></td>
                                <td><%#Eval("date") %></td>
                                <td><%#Eval("parent") %></td>
                                <td><%#Eval("child") %></td>
                                <td><%#Eval("ptotal") %></td>
                                <td><%#Eval("ctotal") %></td>
                                <td><%#Eval("totalprice") %></td>
                                <td><%#Eval("placename") %></td>
                                <td><%#Eval("status") %></td>
                              
                                                
                            </tr>
                        </ItemTemplate>

                    </asp:Repeater>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT book_mstr.bid, book_mstr.uname, book_mstr.mob, book_mstr.email, book_mstr.country, book_mstr.state, book_mstr.city, book_mstr.date, book_mstr.parent, book_mstr.child, book_mstr.ptotal, book_mstr.ctotal, book_mstr.totalprice, book_mstr.tdid, book_mstr.status, tourdetails.placename FROM book_mstr INNER JOIN tourdetails ON book_mstr.tdid = tourdetails.tdid"></asp:SqlDataSource>
                </tbody>
               
            </table>
            </div>
            </div>
          </div>
        </div>
      </div>
       </form>
</asp:Content>
