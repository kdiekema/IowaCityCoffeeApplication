<%@ Page Title="Add Review" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addreview.aspx.cs" Inherits="icCoffee.addreview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
        <h1 style="color: #8C2C16;">Add Reviews</h1>
        <p>&nbsp;</p>
    <formview id="form1" runat="server" class="form-horizontal" DefaultFocus="ShopDDL" DefaultButton="btnSubmit">
              <div class="form-group">
            <label class="control-label col-sm-3" style="color: #592C1C">Shop:</label>
            <div class="col-sm-5">
                <asp:DropDownList ID="ShopDDL" runat="server" DataSourceID="SqlDataSource1" DataTextField="shopName" DataValueField="shopID" Width="196px" Height="27px">

                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [kd_shops]"></asp:SqlDataSource>
            </div>
            <div class="col-sm-4">

                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ShopDDL" CssClass="text-danger" ErrorMessage="Must select a shop"></asp:RequiredFieldValidator>

            </div>
        </div>

                <div class="form-group">
            <label class="control-label col-sm-3" style="color: #592C1C; left: 0px; top: 22px;">Rating:</label>
            <div class="col-sm-5">
                <asp:RadioButtonList ID="rbReview" runat="server" Height="84px" RepeatDirection="Horizontal" Width="322px">
                    <asp:ListItem Value="1">1 Star</asp:ListItem>
                    <asp:ListItem Value="2">2 Stars</asp:ListItem>
                    <asp:ListItem Value="3">3 Stars</asp:ListItem>
                    <asp:ListItem Value="4">4 Stars</asp:ListItem>
                    <asp:ListItem Value="5">5 Stars</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rbReview" CssClass="text-danger" ErrorMessage="Must select a rating"></asp:RequiredFieldValidator>
           </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" style="color: #592C1C">Review:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtReview" runat="server" BackColor="#F2CEA2" BorderColor="#592C1C" BorderStyle="Solid" BorderWidth="1px" CssClass="form-control" MaxLength="250" TextMode="MultiLine" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtReview" CssClass="text-danger" ErrorMessage="Must enter a comment"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtReview" ErrorMessage="Please enter less than 250 words" ValidationExpression="^([\S\s]{0,250})$"></asp:RegularExpressionValidator>
            </div>
        </div>
        </div>
   <div class="form-group">
            <div class="col-sm-5">
             
               &nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn" OnClick="btnSubmit_Click" BackColor="#D9A25F" BorderColor="#592C1C" Font-Bold="True" ForeColor="#8C2C16" />
               
                <asp:Button ID="btnCancel" runat="server" Text="Clear" CssClass="btn"
                    CausesValidation="False" OnClick="btnCancel_Click" BackColor="#D9A25F" BorderColor="#592C1C" Font-Bold="True" ForeColor="#8C2C16"  />               
             
            </div>
            <div class="col-sm-4">
                <asp:Label ID="lbResult" runat="server" ForeColor="#592C1C"></asp:Label>
            </div>
        </div>  
</formview>
</asp:Content>