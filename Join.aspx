<%@ Page Title="Join" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="join.aspx.cs" Inherits="icCoffee.Join" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2 style="color: #8C2C16">Join the Network</h2>
    <br />
 <formview id="form1" runat="server" class="form-horizontal" DefaultFocus="txtEmail" DefaultButton="btnSubmit">
              <div class="form-group">
            <label class="control-label col-sm-3" style="color: #592C1C">First Name:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtFirstName" runat="server" BackColor="#F2CEA2" BorderColor="#592C1C" BorderStyle="Solid" BorderWidth="1px" CssClass="form-control"></asp:TextBox>  
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" CssClass="text-danger" ControlToValidate="txtFirstName" ErrorMessage="First Name is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="text-danger" ControlToValidate="txtFirstName" ErrorMessage="Alpha characters required" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-3" style="color: #592C1C">Last Name:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtLastName" runat="server" BackColor="#F2CEA2" BorderColor="#592C1C" BorderStyle="Solid" BorderWidth="1px" CssClass="form-control"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ControlToValidate="txtLastName" ErrorMessage="Last Name is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="text-danger" ControlToValidate="txtLastName" ErrorMessage="Alpha characters required" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
            </div> 
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" style="color: #592C1C">Email Address:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtEmail" runat="server" BackColor="#F2CEA2" BorderColor="#592C1C" BorderStyle="Solid" BorderWidth="1px" CssClass="form-control" TextMode="Email"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="text-danger" ControlToValidate="txtEmail" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
            </div>
        </div>
                <div class="form-group">
            <label class="control-label col-sm-3" style="color: #592C1C">Phone Number:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtPhone" runat="server" BackColor="#F2CEA2" BorderColor="#592C1C" BorderStyle="Solid" BorderWidth="1px" CssClass="form-control" TextMode="Phone"></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" CssClass="text-danger" ControlToValidate="txtPhone" ErrorMessage="Phone number is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" CssClass="text-danger"  ControlToValidate="txtPhone" ErrorMessage="Must be phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-3" style="color: #592C1C">Favorite Coffee Drink:</label>
            <div class="col-sm-5">
                <asp:TextBox ID="txtFave" runat="server" BackColor="#F2CEA2" BorderColor="#592C1C" BorderStyle="Solid" BorderWidth="1px" CssClass="form-control" ></asp:TextBox>
            </div>
            <div class="col-sm-4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" CssClass="text-danger" ControlToValidate="txtFave" ErrorMessage="Favorite drink is required"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" CssClass="text-danger" ControlToValidate="txtFave" ErrorMessage="Alpha characters required" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
            </div>
        </div>
        </div>
   <div class="form-group">
            <div class="col-sm-3">
                 </div>
               <div class="col-sm-4">
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
