<%@ Page Title="Edit Network" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editNetwork.aspx.cs" Inherits="icCoffee.Maintenance.editNetwork" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1> Network </h1>
    <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive">  
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="personID" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" Width="800px" Height="72px" BorderStyle="None" CellSpacing="2" HeaderStyle-HorizontalAlign="Center">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" >
            <ItemStyle Font-Underline="False" />
            </asp:CommandField>
            <asp:BoundField DataField="personID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="personID" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="firstName" HeaderText="First Name" SortExpression="firstName" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="lastName" HeaderText="Last Name" SortExpression="lastName" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="phone" HeaderText="Phone Number" SortExpression="phone" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="favorite" HeaderText="Favorite Coffee" SortExpression="favorite" >
            <HeaderStyle HorizontalAlign="Center" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#D9A25F" Font-Bold="True" ForeColor="#8C2C16" HorizontalAlign="Center" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
</asp:GridView>
                                                                    </div>  
                            </div>  
                        </div>  
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [kd_Network] WHERE [personID] = @personID" InsertCommand="INSERT INTO [kd_Network] ([firstName], [lastName], [email], [phone], [favorite]) VALUES (@firstName, @lastName, @email, @phone, @favorite)" SelectCommand="SELECT * FROM [kd_Network]" UpdateCommand="UPDATE [kd_Network] SET [firstName] = @firstName, [lastName] = @lastName, [email] = @email, [phone] = @phone, [favorite] = @favorite WHERE [personID] = @personID">
    <DeleteParameters>
        <asp:Parameter Name="personID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="firstName" Type="String" />
        <asp:Parameter Name="lastName" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter Name="favorite" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="firstName" Type="String" />
        <asp:Parameter Name="lastName" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="phone" Type="String" />
        <asp:Parameter Name="favorite" Type="String" />
        <asp:Parameter Name="personID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <br />
    <br />

</asp:Content>
