<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Scheduling.aspx.cs" Inherits="DentalClinicWebApp.Scheduling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <link href="Scripts/jquery.timepicker.css" rel="stylesheet" />
    
    <script src="Scripts/jquery-3.6.4.min.js"></script>
    <script src="Scripts/jquery.timepicker.min.js"></script>
    <asp:Label ID="Label8" runat="server" Text="Scheduling /Rescheduling Appointment" ForeColor="#0099FF" Font-Size="X-Large" Font-Bold="True"></asp:Label>
     <br />
     <br />
    <asp:Label ID="Label1" runat="server" Text="Enter Patient Id"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPatientId" runat="server"></asp:TextBox>
     <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" Text="search" OnClick="SearchBtn" BorderColor="#3399FF"/>
     <br />
     <br />
     <asp:Label ID="Label2" runat="server" Text="Patient Fname :"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
     <br />
    <br />
     <asp:Label ID="Label3" runat="server" Text="Patient Last name"></asp:Label>
    &nbsp;:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtLname" runat="server"></asp:TextBox>
     <br />
    <br />
     <asp:Label ID="Label4" runat="server" Text="Patient EmailId"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Text="Book Time Slot"></asp:Label>
     <br />
    <br />
     <asp:Label ID="Label6" runat="server" Text="Select the date"></asp:Label>
&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="txtdob" runat="server" TextMode="date" ></asp:TextBox>
      &nbsp;<asp:Label ID="Label7" runat="server" Text="From"></asp:Label>

    <asp:TextBox ID="TextBox1" runat="server" class="disableTimeRangesExample"></asp:TextBox>
      &nbsp;&nbsp;&nbsp;&nbsp; To<asp:TextBox ID="TextBox2" runat="server" class="disableTimeRangesExample"></asp:TextBox>
&nbsp;<script>
          $(document).ready(function () {
              $('.disableTimeRangesExample').timepicker({
                  'disableTimeRanges': [
                      ['12am', '9am'],
                      ['1pm', '5pm'],
                      ['9pm', '11:59pm']
                  ]
              });
          });
      </script>&nbsp;&nbsp;&nbsp;<br />
     &nbsp;<br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="BtnSchedule" BorderColor="#3399FF"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Send sms" BorderColor="#3399FF" OnClick="SendSms"/>
     <br />
     <br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="SchedulingId" DataSourceID="SqlDataSource1" Height="143px" Width="562px" AllowPaging="True" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
         <Columns>
             <asp:BoundField DataField="SchedulingId" HeaderText="SchedulingId" InsertVisible="False" ReadOnly="True" SortExpression="SchedulingId" />
             <asp:BoundField DataField="MyDate" HeaderText="MyDate" SortExpression="MyDate" DataFormatString="{0:MM/dd/yyyy}"/>
             <asp:BoundField DataField="TimeFrom" HeaderText="TimeFrom" SortExpression="TimeFrom" />
             <asp:BoundField DataField="TimeTo" HeaderText="TimeTo" SortExpression="TimeTo" />
             <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
             <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
             <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo" />
             </Columns>        
         <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
         <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
         <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
         <RowStyle BackColor="White" ForeColor="#003399" />
         <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
         <SortedAscendingCellStyle BackColor="#EDF6F6" />
         <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
         <SortedDescendingCellStyle BackColor="#D6DFDF" />
         <SortedDescendingHeaderStyle BackColor="#002876" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PatientConnectionString %>" SelectCommand="SELECT ScheduleTable1.SchedulingId, ScheduleTable1.MyDate, ScheduleTable1.TimeFrom, ScheduleTable1.TimeTo, PatientAppTable.FirstName, PatientAppTable.LastName, PatientAppTable.PhoneNo FROM ScheduleTable1 INNER JOIN PatientAppTable ON ScheduleTable1.PatientId = PatientAppTable.PatientId"></asp:SqlDataSource>
     <br />
</asp:Content>
