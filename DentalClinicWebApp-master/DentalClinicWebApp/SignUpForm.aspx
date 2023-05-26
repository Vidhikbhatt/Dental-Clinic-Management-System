<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUpForm.aspx.cs" Inherits="DentalClinicWebApp.SignUpForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:floralwhite;text-align:center;">
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-md-offset-3">
    <h2>Signup Form</h2>
    <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
    &nbsp;&nbsp;
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />
    <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
    &nbsp;
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br /><br />
    <asp:Label ID="lblPassword" runat="server" Text="Password:"></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                Roles:&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioButton1" runat="server" GroupName="RolesGroup" Text="Admin" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="RolesGroup"  Text="Staff"/>
                <br />
                <br /><br />
    <asp:Button ID="btnSignup" runat="server" Text="Signup" OnClick="btnSignup_Click" />
</div>
           </div>
        </div>
        </div>
</asp:Content>

