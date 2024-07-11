<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Baby_Care_System.login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <div class="container-xxl py-5">
            <div class="container">
                
               
                <div class="bg-light rounded">
                   
                    
                            <center>
                                <p style="color:black;" class="display-2 animated slideInDown mb-4">Login</p>
                            <div class="h-100 d-flex flex-column justify-content-center p-5" style="width: 60%;">
                               
                                <form>
                                   
                                    <div class="row g-3">
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtnm" runat="server" CssClass="form-control border-0" ></asp:TextBox>
                                                
                                                <asp:Label ID="Label3" runat="server" Text="Enter your Name" AssociatedControlID="txtnm"></asp:Label>
                                                <%--<input type="text" class="form-control border-0" id="subject" placeholder="Subject">
                                                <label for="subject">Subject</label>--%>
                                            </div>
                                        </div>
                                        
                                       
                                        
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtpass" runat="server" CssClass="form-control border-0" TextMode="Password"  ></asp:TextBox>
                                                <asp:Label ID="Label6" runat="server" Text="Enter Password" AssociatedControlID="txtpass"></asp:Label>
                                            </div>
                                        </div>
                                        
                                        <div class="col-12">
                                            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-primary w-100 py-3" OnClick="Button1_Click" />
                                        </div>
                                    </div>
                               <br />
                                    <br />
                                    <h4><a href="registarion.aspx">Registartion Here</a></h4>
                                </form>
                            </div>
                        </center>
                        </div>
                      
            </div>
        </div>
        <!-- Contact End -->

            </asp:Content>

