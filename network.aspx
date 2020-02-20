<%@ Page Title="Network" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="network.aspx.cs" Inherits="icCoffee.network" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="color: #8C2C16">The Network</h2>
     <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive"> 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="personID" DataSourceID="SqlDataSource1" Width="888px">
        <Columns>
            <asp:BoundField DataField="personID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="personID" />
            <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" />
            <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
            <asp:BoundField DataField="phone" HeaderText="Phone Number" SortExpression="phone" />
            <asp:BoundField DataField="favorite" HeaderText="Favorite Drink" SortExpression="favorite" />
        </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#D9A25F" Font-Bold="True" ForeColor="#8C2C16" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510"  HorizontalAlign="Center" Wrap="False" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
                                    </div></div></div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [kd_Network]"></asp:SqlDataSource>
    <br />


</asp:Content>
