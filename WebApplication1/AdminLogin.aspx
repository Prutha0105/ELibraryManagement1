<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="WebApplication1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                 <center>
                                <img src="images/adminuser.png" width="150px"/>
                                 </center>
                            </div>
                        </div>
                        <div class="row">
                           <div class="col">
                                <center>
                                <h3>Admin Login</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Admin ID</label>
                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Admin ID"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox ID="TextBox2" TextMode="Password" class="form-control" runat="server" placeholder="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <center>
                                    <asp:Button ID="Button1" CssClass="btn btn-primary btn-success" runat="server" Text="Login" width="500px" margin="10px" OnClick="Button1_Click"/>
                                     </center>
                                   </div>

                                <div class="form-group">
                                        
                                </div>

                                <!--div class="form-group">
                                     
                                <asp:Button ID="Button2" runat="server" class="btn btn-close-white" Text="Sign Up" Width="500px" style="margin:auto"/>
                                          
                                        </div-->
                            </div>
                        </div>
                    </div>
                </div>


                <a href="Home.aspx"><< Back to Home</a>
                
                <br />
            </div>
        </div>
    </div>
</asp:Content>
