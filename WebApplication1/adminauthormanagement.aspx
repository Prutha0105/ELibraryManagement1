﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminauthormanagement.aspx.cs" Inherits="WebApplication1.adminauthormanagement" %>
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
                        <center>
                           <h4>Author Details</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                         <center>                         <img width="100px" src="images/writer.png"/>
                         </center>
  
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-4">
                        <label>Author ID</label>
                        <div class="form-group">
                            <div class="input-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                             <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                        </div>
                            </div>

                     </div>
                     <div class="col-md-8">
                        <label>Author Name</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Author Name"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  
                  <div class="row">
                     <div class="col-md-4">
                        <asp:Button class="btn btn-success btn-block btn-lg" ID="Button3" runat="server" Text="Add" OnClick="Button3_Click" />
                   
                     </div>
                     <div class="col-md-4">
                        
                              <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />

                     </div>
                     <div class="col-md-4">
                        <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button1" runat="server" Text="Delete" OnClick="Button1_Click" />
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
                         
                           <h4>Author List</h4>
                         
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ELibraryConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [AuthorMaster]"></asp:SqlDataSource>
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="AuthorId" DataSourceID="SqlDataSource1">
                            <Columns>
                                <asp:BoundField DataField="AuthorId" HeaderText="AuthorId" ReadOnly="True" SortExpression="AuthorId" />
                                <asp:BoundField DataField="AuthorName" HeaderText="AuthorName" SortExpression="AuthorName" />
                            </Columns>
                         </asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</asp:Content>
