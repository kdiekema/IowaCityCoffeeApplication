<%@ Page Title="Shops" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="shops.aspx.cs" Inherits="icCoffee.shops" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 style="color: #8C2C16"> Shops </h1>
    <p> 
    <p style="color: #BF622C; font-weight: bold; text-decoration: blink;"> 
        Select a shop to view their menu<div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive"> 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#D9A25F" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="shopID" DataSourceID="SqlDataSource1" Width="800px" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="shopName" HeaderText="Shop Name" SortExpression="shopName" >
            </asp:BoundField>
            <asp:BoundField DataField="address1" HeaderText="Address" SortExpression="address1" >
            </asp:BoundField>
            <asp:BoundField DataField="address2" HeaderText="Address 2" SortExpression="address2" >
            </asp:BoundField>
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" >
            </asp:BoundField>
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" >
            </asp:BoundField>
            <asp:BoundField DataField="zip" HeaderText="Zip Code" SortExpression="zip" >
            </asp:BoundField>
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" >
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" >
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#D9A25F" Font-Bold="True" ForeColor="#8C2C16" Wrap="False" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C2C16" Wrap="False" />
        <SelectedRowStyle BackColor="#BF622C" Font-Bold="True" ForeColor="#592C1C" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
                                    </div></div></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [kd_shops]"></asp:SqlDataSource>
    <div class="row">
        <div class="col-lg-12 ">
            <div class="table-responsive">
                <br />
                <br />
                <asp:GridView ID="GridView2" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="menuid" DataSourceID="SqlDataSource2" Width="591px">
                    <Columns>
                        <asp:BoundField DataField="item" HeaderText="Item" SortExpression="item" />
                        <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
                    </Columns>
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <HeaderStyle BackColor="#D9A25F" Font-Bold="True" ForeColor="#8C2C16" Wrap="False" />
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" HorizontalAlign="Center" Wrap="False" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FFF1D4" />
                    <SortedAscendingHeaderStyle BackColor="#B95C30" />
                    <SortedDescendingCellStyle BackColor="#F1E5CE" />
                    <SortedDescendingHeaderStyle BackColor="#93451F" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [kd_menus] WHERE ([shopID] = @shopID)">
                       <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="shopiD" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                </asp:SqlDataSource>
            
            </div>
        </div>
    </div>
    </p>
</asp:Content>