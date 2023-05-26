<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OTPForm.aspx.cs" Inherits="DentalClinicWebApp.OTPForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
      <asp:Panel ID="Panel1" runat="server" Height="194px" Visible="False">
          Send OTP to user Mobile number to verify Mobile Number
          <br />
          <br />
          <asp:Label ID="Label2" runat="server" Text="Enter OTP"></asp:Label>
          <asp:TextBox ID="txtOtp" runat="server"></asp:TextBox>
          <br />
          <br />
          <asp:Button ID="txtVerify" runat="server" Text="Verify" OnClick="VerifyCode"/>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
          <br />
      </asp:Panel>
      <br />
      <br />
      <br />
      <br />

</asp:Content>
