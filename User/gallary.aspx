<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.Master" AutoEventWireup="true" CodeBehind="gallary.aspx.cs" Inherits="Project.User.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="inner-banner" style="background-image: url(img/banner/sub-page.png)">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div class="banner-content">
                        <h2>Gallery</h2>
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
    <!-- end banner -->
    <!-- start destination -->


    <section class="section-spacing booking inverse-bg destinations row " data-cues="slideInLeft">
        <div>
            <div class="container  booking-bg">
                <div class="row">

                    <form class="row g-3" runat="server">
                        <div class="col-sm-12">
                            <h2 class="form-hader">Place Name </h2>
                        </div>

                     
                                 <div class="col-md-12">


                            <%--<select id="country" class="choose-option form-select form-control-rounded" >
                                <option selected>Country</option>
                                <option>United States</option>
                                <option>France</option>
                                <option>UK</option>
                            </select>--%>
                            <asp:DropDownList runat="server" ID="ddlplacename" DataSourceID="SqlDataSource1" class="choose-option form-select form-control-rounded" DataTextField="placename" DataValueField="tdid" AutoPostBack="True"></asp:DropDownList>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tourdetails]"></asp:SqlDataSource>

                        </div>


                        <p></p>

                        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource4">


                            <ItemTemplate>


                                <%-- <div class="col-md-4 col-12">
                                <div class="destination-item item">
                                    <a href="tours.html">
                                        <img src='../Gallary/<%#Eval("gallary")%>' alt="" style="height: 150px; width: 500px" />
                                        <div class="info-overlay">
                                            <h4><%#Eval("placename") %></h4>

                                        </div>


                                    </a>
                                </div>--%>
                                <%--  </div>--%>

                                <div class="col-md-4 col-12">
                                    <div class="destination-item item">
                                        <a href="../Gallary/<%#Eval("gallary")%>" class="fancybox" data-fancybox="gallary1">
                                            <img src='../Gallary/<%#Eval("gallary")%>' alt="" style="height: 150px; width: 500px" />
                                            <div class="info-overlay">
                                                <h4><%#Eval("placename") %></h4>

                                            </div>
                                        </a>
                                    </div>
                                </div>

                            </ItemTemplate>
                        </asp:Repeater>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource4" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT pname_gallary.gid, pname_gallary.tdid, pname_gallary.gallary, tourdetails.placename FROM pname_gallary INNER JOIN tourdetails ON pname_gallary.tdid = tourdetails.tdid WHERE (pname_gallary.tdid = @tdid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlplacename" PropertyName="SelectedValue" Name="tdid" Type="Int32"></asp:ControlParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [tourdetails] WHERE ([tdid] = @tdid)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlplacename" PropertyName="SelectedValue" Name="tdid" Type="Int32"></asp:ControlParameter>
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT tourdetails.placename, pname_gallary.* FROM pname_gallary INNER JOIN tourdetails ON pname_gallary.tdid = tourdetails.tdid"></asp:SqlDataSource>

                            

                       
                    </form>
                </div>
            </div>
        </div>

    </section>

</asp:Content>
