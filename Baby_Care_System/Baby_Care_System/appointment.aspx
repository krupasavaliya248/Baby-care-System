<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="Baby_Care_System.appointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <!-- Page Header End -->
        <div class="container-xxl py-5 page-header position-relative mb-5">
            <div class="container py-5">
                <h1 class="display-2 text-white animated slideInDown mb-4">Appointment</h1>
                <nav aria-label="breadcrumb animated slideInDown">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item"><a href="#">Pages</a></li>
                        <li class="breadcrumb-item text-white active" aria-current="page">Appointment</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- Page Header End -->


        <!-- Appointment Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="bg-light rounded">
                    <div class="row g-0">
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                            <div class="h-100 d-flex flex-column justify-content-center p-5">
                                <h1 class="mb-4">Make Appointment</h1>
                                <form>
                                    <div class="row g-3">
                                        <div class="col-sm-6">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtgn" runat="server" CssClass="form-control border-0" Font-Bold="true"></asp:TextBox>
                                                <asp:Label ID="Label1" runat="server" Text="Gurdian Name" AssociatedControlID="txtgn" Font-Bold="true"></asp:Label>     
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-floating">
                                                <%--<input type="email" class="form-control border-0" id="gmail" placeholder="Gurdian Email">
                                                <label for="gmail">Gurdian Email</label>--%>
                                                <asp:TextBox ID="txtem" runat="server" CssClass="form-control border-0" Font-Bold="true"></asp:TextBox>
                                                <asp:Label ID="Label2" runat="server" Text="Gurdian Email" AssociatedControlID="txtem" Font-Bold="true"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-floating">
                                                <%--<input type="text" class="form-control border-0" id="cname" placeholder="Child Name">
                                                <label for="cname">Child Name</label>--%>
                                                <asp:TextBox ID="txtcn" runat="server" CssClass="form-control border-0" Font-Bold="true"></asp:TextBox>
                                                <asp:Label ID="Label3" runat="server" Text="Child Name" AssociatedControlID="txtcn" Font-Bold="true"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtca" runat="server" CssClass="form-control border-0" Font-Bold="true"></asp:TextBox>
                                                <asp:Label ID="Label4" runat="server" Text="Child Age" AssociatedControlID="txtcn" Font-Bold="true"></asp:Label>
                                                <%--<input type="text" class="form-control border-0" id="cage" placeholder="Child Age">
                                                <label for="cage">Child Age</label>--%>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtmess" runat="server" CssClass="form-control border-0" Font-Bold="true" TextMode="MultiLine"></asp:TextBox>
                                                <asp:Label ID="Label5" runat="server" Text="Leave a message here" AssociatedControlID="txtmess" Font-Bold="true"></asp:Label>

                                                <%--<textarea class="form-control border-0" placeholder="Leave a message here" id="message" style="height: 100px"></textarea>
                                                <label for="message">Message</label>--%>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary w-100 py-3" />
                                            <%--<button class="btn btn-primary w-100 py-3" type="submit">Submit</button>--%>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                <img class="position-absolute w-100 h-100 rounded" src="img/appointment.jpg" style="object-fit: cover;">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Appointment End -->


            </asp:Content>

