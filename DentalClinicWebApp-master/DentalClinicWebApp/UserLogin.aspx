<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="DentalClinicWebApp.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Login page-->
 <section class="vh-100">
  <div class="container-fluid h-custom">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-md-9 col-lg-6 col-xl-5">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
          class="img-fluid" alt="Sample image">
      </div>
      <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
        <form>
          <div class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
          </div>

          <!-- Email input -->
          <div class="form-outline mb-4">
                <label class="form-label" for="form3Example3">Email address</label>&nbsp;&nbsp;
              <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <br />
                <br />
                <label class="form-label" for="form3Example4">
                Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
&nbsp;<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
            
          
          </div>
              <br />
                Roles:&nbsp;&nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioButton1" runat="server" GroupName="RolesGroup" Text="Admin" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="RolesGroup"  Text="Staff"/>
                <br />
                <br /> 
          <div class="d-flex justify-content-between align-items-center">
            <!-- Checkbox -->
            <div class="form-check mb-0" style="left: -15px; top: -498px">
              <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3" />
              <label class="form-check-label" for="form2Example3">
                Remember me
              </label>
            </div>
          </div>
            <br/>
          <div class="text-center text-lg-start mt-4 pt-2">

              <asp:Button ID="Button1" runat="server" Text="Login" BorderColor="DodgerBlue" Width="127px" OnClick="LoginEvent"/> 
              <asp:Label ID="Label1" runat="server" ></asp:Label>
            
            <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? </p>
             <asp:LinkButton ID="LinkButton1" runat="server" OnClick="Register_loadPage">Register</asp:LinkButton>
          </div>
           
        </form>
      </div>
    </div>
  </div>
 
</section>
</asp:Content>
