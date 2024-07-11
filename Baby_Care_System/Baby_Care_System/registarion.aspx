<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="registarion.aspx.cs" Inherits="Baby_Care_System.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="container-xxl py-5">
            <div class="container">
                
               
                <div class="bg-light rounded">
                   
                    
                            <center>
                                <p style="color:black;" class="display-2 animated slideInDown mb-4">Registration</p>
                            <div class="h-100 d-flex flex-column justify-content-center p-5" style="width: 60%;">
                               
                                <form>
                                   
                                    <div class="row g-3">
                                        <div class="col-sm-6">
                                            <div class="form-floating">

                                                <asp:TextBox ID="txtnm" runat="server" CssClass="form-control border-0" ></asp:TextBox>
                                                <asp:Label ID="Label1" runat="server" Text="Your Name" AssociatedControlID="txtnm"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtem" runat="server" CssClass="form-control border-0" ></asp:TextBox>
                                                <asp:Label ID="Label2" runat="server" Text="Your Email" AssociatedControlID="txtem"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-sm-6" style="width:586px">
                                            <div class="form-floating">

                                                <asp:TextBox ID="txtbnm" runat="server" CssClass="form-control border-0" ></asp:TextBox>
                                                <asp:Label ID="Label7" runat="server" Text="Baby Name" AssociatedControlID="txtbnm"></asp:Label>
                                                <br />
                                            </div>
                                        </div>
                                        <div class="col-12" style="margin-top:-8px">
                                            <div class="form-floating">
                                                <asp:Panel ID="Panel1" runat="server" GroupingText="" BackColor="White" Font-Size="11pt" style="border-radius:8px;padding-top:10px">
                                                    <asp:Label ID="Label3" runat="server" Text="Baby Gender" style="margin-left:-460px"></asp:Label>
                                                    <asp:RadioButtonList ID="radgen" runat="server" style="margin-left:-250px" RepeatDirection="Horizontal">
                                                        <asp:ListItem>Male &nbsp;&nbsp;&nbsp;&nbsp;</asp:ListItem>
                                                        
                                                        <asp:ListItem>Female</asp:ListItem>
                                                    </asp:RadioButtonList>

                                                </asp:Panel>
                                                
                                                
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-floating">

                                                <asp:TextBox ID="txtbir" runat="server" CssClass="form-control border-0" ></asp:TextBox>
                                                <asp:Label ID="Label4" runat="server" Text="Baby Birthday" AssociatedControlID="txtbir"></asp:Label>
                                                <br />
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtage" runat="server" CssClass="form-control border-0" ></asp:TextBox>
                                                <asp:Label ID="Label5" runat="server" Text="Baby Age" AssociatedControlID="txtage"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtpass" runat="server" CssClass="form-control border-0" TextMode="Password"  ></asp:TextBox>
                                                <asp:Label ID="Label6" runat="server" Text="Enter Password" AssociatedControlID="txtpass"></asp:Label>
                                            </div>
                                        </div>
                                        
                                        <div class="col-12">
                                            <%--<asp:Button ID="Button1" runat="server" Text="Submit" CssClass="" OnClick="Button1_Click" />--%>

                                            <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="btn btn-primary w-100 py-3" OnClick="Button2_Click" />
                                        </div>
                                    </div>
                                    <br />
                                    <br />
                               <h4><a href="login.aspx">Login Here</a></h4>
                                </form>
                               
                            </div>
                        </center>
                        </div>
                      
            </div>
        </div>
        <!-- Contact End -->

            </asp:Content>




<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder3">
                 <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Get In Touch</h3>
                        <p class="mb-2">
                            <i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
                        <p class="mb-2">
                            <i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                        <p class="mb-2">
                            <i class="fa fa-envelope me-3"></i>info@example.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a><a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a><a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a><a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Quick Links</h3>
                        <a class="btn btn-link text-white-50" href="about.aspx">About Us</a> <a class="btn btn-link text-white-50" href="contact.aspx">Contact Us</a> <a class="btn btn-link text-white-50" href="facility.aspx">Our Services</a> <a class="btn btn-link text-white-50" href="team.aspx">Terms & Condition</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Photo Gallery</h3>
                        <div class="row g-2 pt-2">
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/classes-1.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/classes-2.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/classes-3.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/classes-4.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/classes-5.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="img/classes-6.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h3 class="text-white mb-4">Newsletter</h3>
                        <p>
                            Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                        <div class="position-relative mx-auto" style="max-width: 400px;">
                            <input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">
                                SignUp
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">Your Site Name</a>, All Right Reserved. 
							
							<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                            <br>Distributed By: <a class="border-bottom" href="https://themewagon.com" target="_blank">ThemeWagon</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                <a href="index.aspx">Home</a> <a href="">Cookies</a> <a href="">Help</a> <a href="">FQAs</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>
            </asp:Content>





