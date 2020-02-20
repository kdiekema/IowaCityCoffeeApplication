<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="icCoffee._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" >
        <h1>Iowa City Coffee</h1>
        <p class="lead">A guide to coffee shops in Iowa City</p>
        <p class="lead">&nbsp;</p>
        <p class="lead">&nbsp;</p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2 class ="Gray">Iowa City, Iowa</h2>
            <p class="Gray">
 Iowa City is where small town hospitality meets big city amenities, where friendly meets adventurous. It's a place where everyone's welcome.  <p /> <p>
                <a class="btn btn-default" target="_blank" href="https://www.icgov.org/">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2 class="Gray">Coffee Shops </h2>
            <p class="Gray">
                Iowa City is home to local and nation-wide coffee shops. Click here to learn about the shops present in the area: 
            </p>
            <p>
                <a class="btn btn-default" target="_blank" href="../Shops">Find Shops &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2 class="Gray">Get involved</h2>
            <p class="Gray">
                To join the network of Iowa City residents and coffee shops, please sign up for our email list here:
            </p>
            <p>
                <a class="btn btn-default" target="_blank" href="../join">Sign Up &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
