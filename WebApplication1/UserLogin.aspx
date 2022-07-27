<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="WebApplication1.UserLogin" %>
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
                                <img src="images/generaluser.png" width="150px"/>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                <h3>User Login</h3>
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
                                    <label>User ID</label>
                                    <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="User ID"></asp:TextBox>
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

                                <div class="form-group">
                                    <center>
                                <a href="UserSignUppage.aspx">
                                    <asp:Button ID="Button2" runat="server" class="btn btn-info btn-block" Text="Sign Up" Width="500px" style="margin:auto" OnClick="Button2_Click"/>
                                    </a>
                                         </center>
                                        </div>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="Home.aspx"><< Back to Home</a>
            </div>
        </div>
    </div>
</asp:Content>
