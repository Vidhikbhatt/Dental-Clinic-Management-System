<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="DentalClinicWebApp.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
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
    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem Value="9:00 AM">9:00 AM</asp:ListItem>
        <asp:ListItem Value="9:30 AM">9:30 AM</asp:ListItem>
        <asp:ListItem Value="10:00 AM">10:00 AM</asp:ListItem>
        <asp:ListItem Value="10:30 AM">10:30 AM</asp:ListItem>
        <asp:ListItem Value="11:00 AM">11:00 AM</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="Label6" runat="server" Text="Message"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TextBox6" TextMode="MultiLine" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
    <br />
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
        </div>
    </form>
</body>
</html>
