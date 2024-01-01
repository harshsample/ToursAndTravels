<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="passport.aspx.cs" Inherits="Project.User.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="inner-banner" style="background-image: url(img/banner/sub-page.png)">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="banner-content">
                        <h2>Passport Details</h2>
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
    <section>
        <div class="Container">
        <div class="row">
        <div class="col-lg-12">
          <div class="card">
            
            <div class="card-body">
              <div class="table-responsive">
              <table id="example" class="table table-bordered" style="background-color:#009e9d">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Passport Details</th>
                        <th>Required For</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("no") %></td>
                                <td><%# Eval("details") %></td>
                                <td><%# Eval("requiredfor") %></td>


                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>

                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [passport]"></asp:SqlDataSource>
                </tbody>                
            </table>
            </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </section>
    
</asp:Content>
