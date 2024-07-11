<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="addcart.aspx.cs" Inherits="Baby_Care_System.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder2">
        <div class="container-xxl py-5">
            <div class="container">
                
               
                <div class="bg-light rounded">
                   
                    
                            <center>
                                <p style="color:black;" class="display-2 animated slideInDown mb-4">Add to cart</p>
                            <div class="h-100 d-flex flex-column justify-content-center p-5" style="width: 60%;">
                               
                                <form>
                                   
                                    <div class="row g-3">
                                        
                                        <div class="col-sm-6">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtid" runat="server" class="form-control border-0" ReadOnly="True"/>
                                                    <asp:Label runat="server" Text="User Id" AssociatedControlID="txtid"></asp:Label>
                                                
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtem" runat="server" class="form-control border-0" ReadOnly="True"/>
                                                    <asp:Label runat="server" Text="User Email" AssociatedControlID="txtem"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtpid" runat="server" class="form-control border-0" ReadOnly="True"/>
                                                    <asp:Label runat="server" Text="Product Id" AssociatedControlID="txtpid"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtpcid" runat="server" class="form-control border-0" ReadOnly="True"/>
                                                    <asp:Label runat="server" Text="Category Id" AssociatedControlID="txtpcid"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtpnm" runat="server" class="form-control border-0" ReadOnly="True"/>
                                                    <asp:Label runat="server" Text="Product Name" AssociatedControlID="txtpnm"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtpri" runat="server" class="form-control border-0" ReadOnly="True"/>
                                                    <asp:Label runat="server" Text="Product Price" AssociatedControlID="txtpri"></asp:Label>
                                            </div>
                                        </div>
                                                <div class="col-12">
                                            <div class="form-floating">
                                                <asp:Panel ID="Panel1" runat="server" GroupingText="" BackColor="White" Font-Size="11pt" style="border-radius:8px;padding-top:10px" Height="60px">
                                                    <asp:Label ID="Label3" runat="server" Text="Quantity" style="margin-left:-270px"></asp:Label> &nbsp;&nbsp;&nbsp;
                                                <asp:DropDownList ID="dpque" runat="server" Width="200px" Height="25px" AutoPostBack="True" OnSelectedIndexChanged="dpque_SelectedIndexChanged">
                                                    <asp:ListItem>1</asp:ListItem>
                                                    <asp:ListItem>2</asp:ListItem>
                                                    <asp:ListItem>3</asp:ListItem>
                                                    <asp:ListItem>4</asp:ListItem>
                                                    <asp:ListItem>5</asp:ListItem>
                                                    <asp:ListItem>6</asp:ListItem>
                                                    <asp:ListItem>7</asp:ListItem>
                                                    <asp:ListItem>8</asp:ListItem>
                                                    <asp:ListItem>9</asp:ListItem>
                                                    <asp:ListItem>10</asp:ListItem>
                                                    </asp:DropDownList>
                                                    </asp:Panel>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating">
                                                <asp:TextBox ID="txtfpri" runat="server" class="form-control border-0" ReadOnly="True"/>
                                                    <asp:Label runat="server" Text="Final Price" AssociatedControlID="txtfpri"></asp:Label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <asp:Button ID="Button1" runat="server" Text="Add to cart" class="btn btn-primary w-100 py-3" OnClick="Button1_Click" />
                                            
                                        </div>
                                    </div>
                               
                                </form>
                               
                            </div>
                        </center>
                        </div>
                      
            </div>
        </div>

            </asp:Content>

