<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="OnlineAppointment.aspx.cs" Inherits="DentalClinicWebApp.OnlineAppointment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label runat="server" Text="Appointment Form"></asp:Label>

        <br />
    <br />

        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Email"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Phone"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="AppointmentDate"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox4" TextMode="date" runat="server"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Text="AppointmentTime"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" >
        <asp:ListItem Value="9:00 AM">9:00 AM</asp:ListItem>
        <asp:ListItem Value="9:30 AM">9:30 AM</asp:ListItem>
        <asp:ListItem Value="10:00 AM">10:00 AM</asp:ListItem>
        <asp:ListItem Value="10:30 AM">10:30 AM</asp:ListItem>
        <asp:ListItem Value="11:00 AM">12:00 AM</asp:ListItem>
         <asp:ListItem Value="11:00 AM">5:00 PM</asp:ListItem>
         <asp:ListItem Value="11:00 AM">6:30 PM</asp:ListItem>
         <asp:ListItem Value="11:00 AM">7:30 AM</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Message"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox6" TextMode="MultiLine" runat="server" ></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnSubmit" runat="server" OnClick="BtnSubmit_Click" Text="Submit" />
<br />
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>

 
