﻿    <%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Baby_Care_System.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
        <!-- Page Header End -->
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">Contact Us</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Pages</a></li>
                        <li class="breadcrumb-item text-white active" aria-current="page">Contact Us</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Contact Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">Get In Touch</h1>
                    <p>Eirmod sed ipsum dolor sit rebum labore magna erat. Tempor ut dolore lorem kasd vero ipsum sit
                        eirmod sit. Ipsum diam justo sed rebum vero dolor duo.</p>
                </div>
                <div class="row g-4 mb-5">
                    <div class="col-md-6 col-lg-4 text-center wow fadeInUp" data-wow-delay="0.1s">
                        <div class="bg-light rounded-circle d-inline-flex align-items-center justify-content-center mb-4" style="width: 75px; height: 75px;">
                            <i class="fa fa-map-marker-alt fa-2x text-primary"></i>
                        </div>
                        <h6>123 Street, New York, USA</h6>
                    </div>
                    <div class="col-md-6 col-lg-4 text-center wow fadeInUp" data-wow-delay="0.3s">
                        <div class="bg-light rounded-circle d-inline-flex align-items-center justify-content-center mb-4" style="width: 75px; height: 75px;">
                            <i class="fa fa-envelope-open fa-2x text-primary"></i>
                        </div>
                        <h6>info@example.com</h6>
                    </div>
                    <div class="col-md-6 col-lg-4 text-center wow fadeInUp" data-wow-delay="0.5s">
                        <div class="bg-light rounded-circle d-inline-flex align-items-center justify-content-center mb-4" style="width: 75px; height: 75px;">
                            <i class="fa fa-phone-alt fa-2x text-primary"></i>
                        </div>
                        <h6>+012 345 6789</h6>
                    </div>
                </div>
                <div class="bg-light rounded">
                    
                       <center>
                            <div class="h-100 d-flex flex-column justify-content-center p-5" style="width:60%">
                                <p class="mb-4">The contact form is currently inactive. Get a functional and working contact form with Ajax & PHP in a few minutes. Just copy and paste the files, add a little code and you're done. 
                                <form>
                                    <div class="row g-3">
                                        <div class="col-sm-6">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtnm" runat="server" CssClass="form-control border-0" ></asp:TextBox>
                                                <asp:Label ID="Label1" runat="server" Text="Your Name" AssociatedControlID="txtnm"></asp:Label>
                                                <%--<input type="text" class="form-control border-0" id="name" placeholder="Your Name">
                                                <label for="name">Your Name</label>--%>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtem" runat="server" CssClass="form-control border-0" ></asp:TextBox>
                                                <asp:Label ID="Label2" runat="server" Text="Your Email" AssociatedControlID="txtem"></asp:Label>
                                                <%--<input type="email" class="form-control border-0" id="email" placeholder="Your Email">
                                                <label for="email">Your Email</label>--%>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtsub" runat="server" CssClass="form-control border-0" TextMode="MultiLine" ></asp:TextBox>
                                                <asp:Label ID="Label3" runat="server" Text="Subject" AssociatedControlID="txtsub"></asp:Label>
                                                <%--<input type="text" class="form-control border-0" id="subject" placeholder="Subject">
                                                <label for="subject">Subject</label>--%>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtmess" runat="server" CssClass="form-control border-0" TextMode="MultiLine" ></asp:TextBox>
                                                <asp:Label ID="Label4" runat="server" Text="Leave a message here" AssociatedControlID="txtnm"></asp:Label>
                                                <%--<textarea class="form-control border-0" placeholder="Leave a message here" id="message" style="height: 100px"></textarea>
                                                <label for="message">Message</label>--%>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <asp:Button ID="Button1" runat="server" Text="Send Message" CssClass="btn btn-primary w-100 py-3" OnClick="Button1_Click" />
                                            <%--<button class="btn btn-primary w-100 py-3" type="submit">Send Message</button>--%>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                
                            </div>
                        </div>
                    </div>
               </center>
        </div>
        <!-- Contact End -->
     </asp:Content>
