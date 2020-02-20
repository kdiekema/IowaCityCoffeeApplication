<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="icCoffee.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2 class ="Title"><%: Title %></h2>
   <div class ="col-md-4">
       <br />
   <img src="Images/espresso-ground-coffee-beans-1296x728.jpg" width ="377" style="height: 273px" />
    </div>
    <div class="col-md-8">
    <h1> What we do: </h1>
    <p class="colors">This website creates a network of coffee enthusiasts and managers of coffee shops. Coffee enthusiats are able to connect with members of the network from Iowa City that are interested in finding great new local coffee shops. They can view shop information including popular menu items and reviews from other members of the network. 
    </p>

        <h3>Terms of use: </h3>
    <p> We ask that you be respectful of the coffee shops as they are all independently owned and rely on Iowa City business. Additionally, being a member of the Iowa City Coffee Network provides access to contact information for other members. By signing up for the network, you must agree to be responsible and respectful with the information you recieve or else your access will be revoked. </p>

  
        <h4>More Information: </h4>
             <p class="colors">For all customer reviews and more detailed information about coffee shops, we recommend using resources like yelp or exploring each shop's websites</p>
     <a class="btn btn-default" target="_blank" href="https://www.yelp.com/search?find_desc=Coffee+%26+Tea&find_loc=Iowa+City%2C+IA&ns=1">Yelp &raquo;</a>

        </div>
  

</asp:Content>
