﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpublishermanagement.aspx.cs" Inherits="WebApplication1.adminpublishermanagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                   <div class="row">
                     <div class="col">
                         
                           <h4>Publisher Details</h4>
                         
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         
                           <img width="100px" src="images/publisher.png"/>
                         
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Publisher ID</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                             <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button4" runat="server" Text="Go" />
                        </div>
                            </div>

                     </div>
                     <div class="col-md-8">
                        <label>Publisher Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Publisher Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-md-4">
                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button3" runat="server" Text="Add" />
                   
                     </div>
                     <div class="col-md-4">
                        
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button2" runat="server" Text="Update" />

                     </div>
                     <div class="col-md-4">
                        <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button1" runat="server" Text="Delete" />
                     </div>
                  </div>
             
               </div>
            </div>
            <a href="Home.aspx"><< Back to Home</a><br><br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                         
                           <h4>Publisher List</h4>
                         
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
