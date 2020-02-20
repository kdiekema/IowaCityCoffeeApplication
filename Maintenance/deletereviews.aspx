<%@ Page Title="Delete Reviews" Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="deletereviews.aspx.cs" Inherits="icCoffee.Maintenance.reviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Censor reviews<br /> 
         </h2>
      
                                    <br />
                                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="shopName" DataValueField="shopID" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Visible="False">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [kd_shops]"></asp:SqlDataSource>
                                    <br />
                                    <br />
     <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive"> 
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="reviewID" DataSourceID="SqlDataSource3" Width="800px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" BorderStyle="None" CellSpacing="2" AllowSorting="True">
                       <Columns>
                           <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="shopID" HeaderText="Shop ID" SortExpression="shopID" >
                           <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                           <asp:BoundField DataField="rating" HeaderText="Rating" SortExpression="rating">
                           <ItemStyle HorizontalAlign="Center" />
                           </asp:BoundField>
                           <asp:BoundField DataField="review" HeaderText="Review" SortExpression="review">
                           <ItemStyle HorizontalAlign="Left" />
                           </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#D9A25F" Font-Bold="True" ForeColor="#8C2C16" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [kd_Review]" DeleteCommand="DELETE FROM [kd_Review] WHERE [reviewID] = @reviewID" InsertCommand="INSERT INTO [kd_Review] ([shopID], [rating], [review]) VALUES (@shopID, @rating, @review)" UpdateCommand="UPDATE [kd_Review] SET [shopID] = @shopID, [rating] = @rating, [review] = @review WHERE [reviewID] = @reviewID">
                                        <DeleteParameters>
                                            <asp:Parameter Name="reviewID" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="shopID" Type="Int32" />
                                            <asp:Parameter Name="rating" Type="Double" />
                                            <asp:Parameter Name="review" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="shopID" Type="Int32" />
                                            <asp:Parameter Name="rating" Type="Double" />
                                            <asp:Parameter Name="review" Type="String" />
                                            <asp:Parameter Name="reviewID" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                    </div></div></div>
         <div class="row">  
                            <div class="col-lg-12 ">  
                                <div class="table-responsive"> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="reviewID" DataSourceID="SqlDataSource1" Width="800px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" BorderStyle="None" CellSpacing="2" AllowSorting="True" Visible="False">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle Font-Underline="True" HorizontalAlign="Center" />
                </asp:CommandField>
                <asp:BoundField DataField="rating" HeaderText="Rating" SortExpression="rating" >
                <HeaderStyle HorizontalAlign="Center" Wrap="False" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="review" HeaderText="Review" SortExpression="review" >
                <HeaderStyle HorizontalAlign="Center" />
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#D9A25F" Font-Bold="True" ForeColor="#8C2C16" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
                                    </div></div></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [kd_Review] WHERE [reviewID] = @reviewID" InsertCommand="INSERT INTO [kd_Review] ([shopID], [rating], [review]) VALUES (@shopID, @rating, @review)" SelectCommand="SELECT * FROM [kd_Review] WHERE ([shopID] = @shopID)" UpdateCommand="UPDATE [kd_Review] SET [shopID] = @shopID, [rating] = @rating, [review] = @review WHERE [reviewID] = @reviewID">
             <SelectParameters>
               
                    <asp:ControlParameter ControlID="DropDownList1" Name="shopID" PropertyName="SelectedValue" Type="String" />

                </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="reviewID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="shopID" Type="Int32" />
                <asp:Parameter Name="rating" Type="Double" />
                <asp:Parameter Name="review" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="shopID" Type="Int32" />
                <asp:Parameter Name="rating" Type="Double" />
                <asp:Parameter Name="review" Type="String" />
                <asp:Parameter Name="reviewID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    <br />
    &nbsp;&nbsp;&nbsp;
    <br />
    &nbsp;

</asp:Content>
