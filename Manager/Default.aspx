<%@ Page Title="Edit Shops" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="icCoffee.Manager.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> Shops </h1>
    <div class="row">  
       <div class="col-lg-12 ">  
           <div class="table-responsive"> 
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="shopID" DataSourceID="SqlDataSource2" Width="885px" style="margin-right: 14px">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="shopID" HeaderText="Shop ID" InsertVisible="False" ReadOnly="True" SortExpression="shopID" />
            <asp:BoundField DataField="shopName" HeaderText="Shope Name" SortExpression="shopName" />
            <asp:BoundField DataField="address1" HeaderText="Address" SortExpression="address1" />
            <asp:BoundField DataField="address2" HeaderText="Address 2" SortExpression="address2" />
            <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
            <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
            <asp:BoundField DataField="zip" HeaderText="Zip" SortExpression="zip" />
            <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#D9A25F" Font-Bold="True" ForeColor="#8C2C16" Wrap="False" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510"  HorizontalAlign="Center" Wrap="False" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
               </div></div></div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=bais-mssql.database.windows.net;Initial Catalog=f19-msci3120;Persist Security Info=True;User ID=f19-msci3120-usr;Password=6S39eSBe8v5uGeamDQzyWDl8yKu6wBkQNXlNXcgcQHG" DeleteCommand="DELETE FROM [kd_shops] WHERE [shopID] = @shopID" InsertCommand="INSERT INTO [kd_shops] ([shopName], [address1], [address2], [city], [state], [zip], [phone], [email]) VALUES (@shopName, @address1, @address2, @city, @state, @zip, @phone, @email)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [kd_shops]" UpdateCommand="UPDATE [kd_shops] SET [shopName] = @shopName, [address1] = @address1, [address2] = @address2, [city] = @city, [state] = @state, [zip] = @zip, [phone] = @phone, [email] = @email WHERE [shopID] = @shopID">
        <DeleteParameters>
            <asp:Parameter Name="shopID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="shopName" Type="String" />
            <asp:Parameter Name="address1" Type="String" />
            <asp:Parameter Name="address2" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="zip" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="shopName" Type="String" />
            <asp:Parameter Name="address1" Type="String" />
            <asp:Parameter Name="address2" Type="String" />
            <asp:Parameter Name="city" Type="String" />
            <asp:Parameter Name="state" Type="String" />
            <asp:Parameter Name="zip" Type="String" />
            <asp:Parameter Name="phone" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="shopID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <br />

</asp:Content>
