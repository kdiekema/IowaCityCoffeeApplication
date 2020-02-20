<%@ Page Title="Edit menu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editmenus.aspx.cs" Inherits="icCoffee.Manager.menus" %>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <h1> &nbsp;Menus </h1>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="shopName" DataValueField="shopID" Height="26px" Width="171px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=bais-mssql.database.windows.net;Initial Catalog=f19-msci3120;Persist Security Info=True;User ID=f19-msci3120-usr;Password=6S39eSBe8v5uGeamDQzyWDl8yKu6wBkQNXlNXcgcQHG" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [shopID], [shopName] FROM [kd_shops]"></asp:SqlDataSource>
    <br />
    <br />
     <div class="row">  
       <div class="col-lg-12 ">  
           <div class="table-responsive"> 
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="menuid" DataSourceID="SqlDataSource3" Width="591px">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="menuid" HeaderText="Menu ID" InsertVisible="False" ReadOnly="True" SortExpression="menuid" />
            <asp:BoundField DataField="shopid" HeaderText="Shop ID" SortExpression="shopid" />
            <asp:BoundField DataField="item" HeaderText="Item" SortExpression="item" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
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
       <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [kd_menus] WHERE ([shopID] = @shopID)" DeleteCommand="DELETE FROM [kd_menus] WHERE [menuid] = @menuid" InsertCommand="INSERT INTO [kd_menus] ([shopid], [item], [price]) VALUES (@shopid, @item, @price)" UpdateCommand="UPDATE [kd_menus] SET [shopid] = @shopid, [item] = @item, [price] = @price WHERE [menuid] = @menuid">
       <SelectParameters>
               
                    <asp:ControlParameter ControlID="DropDownList1" Name="shopID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
           <DeleteParameters>
            <asp:Parameter Name="menuid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="shopid" Type="Int32" />
            <asp:Parameter Name="item" Type="String" />
            <asp:Parameter Name="price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="shopid" Type="Int32" />
            <asp:Parameter Name="item" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="menuid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="menuid" DataSourceID="SqlDataSource1" Height="50px" Width="153px" DefaultMode="Insert" OnItemInserted="DetailsView1_ItemInserted">
        <EditRowStyle BackColor="#D9A25F" Font-Bold="False" ForeColor="#8C2C16" />
        <Fields>
            <asp:BoundField DataField="menuid" HeaderText="Menu ID" InsertVisible="False" ReadOnly="True" SortExpression="menuid" >
             <HeaderStyle BackColor="#D9A25F" Wrap="False" />
                 </asp:BoundField>
            <asp:BoundField DataField="shopid" HeaderText="Shop ID" InsertVisible="False" ReadOnly="True" SortExpression="shopid"  >
             <HeaderStyle BackColor="#D9A25F" Wrap="False" />
                 </asp:BoundField>
            <asp:BoundField DataField="item" HeaderText="Item   " SortExpression="item" >
             <HeaderStyle BackColor="#D9A25F" Wrap="False" />
                 </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price   " SortExpression="price" >
             <HeaderStyle BackColor="#D9A25F" Wrap="False" />
                 </asp:BoundField>
            <asp:CommandField ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor=#8C2C16 />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [kd_menus] WHERE [menuid] = @menuid" InsertCommand="INSERT INTO [kd_menus] ([shopid], [item], [price]) VALUES (@shopid, @item, @price)" SelectCommand="SELECT * FROM [kd_menus]" UpdateCommand="UPDATE [kd_menus] SET [shopid] = @shopid, [item] = @item, [price] = @price WHERE [menuid] = @menuid">
        <DeleteParameters>
            <asp:Parameter Name="menuid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="shopid" PropertyName="SelectedValue" Type="Int32" />
            <asp:Parameter Name="item" Type="String" />
            <asp:Parameter Name="price" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="shopid" Type="Int32" />
            <asp:Parameter Name="item" Type="String" />
            <asp:Parameter Name="price" Type="String" />
            <asp:Parameter Name="menuid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
<br />

</asp:Content>