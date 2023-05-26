<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="DentalClinicWebApp.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="bd-example">
  <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
      <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
          <img src="Images/Simle_diff.jpg"  class="img-responsive" alt="..." />
         <!--<img src="..." class="d-block w-100" alt="...">-->
        <div class="carousel-caption d-none d-md-block">
          <h5>First slide label</h5>
          <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
        </div>
      </div>
      <div class="carousel-item">
          <img src="Images/photo_smile.jpg" class="img-responsive" alt="..." />
        <!--<img src="..." class="d-block w-100" alt="...">-->
        <div class="carousel-caption d-none d-md-block">
          <h5>Second slide label</h5>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </div>
      </div>
      <div class="carousel-item">
          <img src="Images/child_smile.jpg" class="img-responsive" alt="..." />
       
        <div class="carousel-caption d-none d-md-block">
          <h5>Third slide label</h5>
          <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
        </div>
      </div>
    </div>
    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    <!--About us-->
 <div id="AboutUS">
    <h4 style="text-align:center; color:dodgerblue; font-family:Arial; font-size:xx-large;height: 10vh" ><b>ABOUT US</b></h4>
    <div class="container" >
<div class="abtimg">
    <img src="Images/doctor.png" height="500" width="400" />
    </div>
        <p id="paraAbtUs">Dr. UJAS SHAH attended M.P dental College in Vadodara where he earned his Becholure degree in the field of dentistry. He then completed an extensive three year master degree program , where he was awarded specialty certificates in both Periodontics and implantology. While doing master degree course he also completed his research on bone graft material which were used to increase the bone height and width for future implant placement and earned his Master’s degree in the field of periodontics and implantology.
            <br> Dr Ujas Became Dentist in VadodaraDuring master degree course Dr. Ujas participated in various studies of implants and periodontics .<br>He has done many national & international paper presentations and awarded Many certificates and prizes. He also attended many national courses and conferences on advanced implant surgery .He has many articles on national journal on his name then he started Vraj Dental Clinic which is now Best Dental Hospital in Vadodara</p>
</div>
</div>
    <!--Services we offered-->
 <div id="services">
     <h4 style="text-align:center; color:dodgerblue; font-family:Arial; font-size:xx-large;height: 10vh" ><b>DISCOVER THE DENTAL CLINIC </b></h4>
    <p style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; text-align:center">Our Patients are our first priority, we offer quality dental services with a team of specialists. More details about our services below.

</p>
    <table >
        <tr>
            <td>
                 <img src="Service%20logo%20Images/braces-aligners-icon.png" height="100" width="100"/>
                <p>BRACES & ALIGNERS</p>

            </td>
            <td>
                  <img src="Service%20logo%20Images/childrens-dentistry-icon.png" height="100" width="100" />
                <p>KIDS DENTISTRY</p>
            </td>
            <td>
                 <img src="Service%20logo%20Images/crowns-bridges-icon.png" height="100" width="100"/>
                <p>BRIDGES & CROWNS</p>
            </td>
            <td>
                <img src="Service%20logo%20Images/dental-implant-icon.png" height="100" width="100"/>
                <p>DENTAL IMPLANT</p>
            </td>
            <td>
                <img src="Service%20logo%20Images/dentures-icon.png" height="100" width="100"/>
                <p>DENTURES</p>
            </td>
            <td>
                <img src="Service%20logo%20Images/filling-icon.png" height="100" width="100"/>
                <p>DENTAL FILLING</p>
            </td>
        </tr>
        <tr>
            <td>
                <img src="Service%20logo%20Images/laminates.png" height="100" width="100"/>
                <p>LAMINATION</p>
            </td>
            <td>
                <img src="Service%20logo%20Images/mouth-ulcers-icon.png" height="100" width="100"/>
                <p>MOUTH ULCERS</p>
            </td>
            <td>
                <img src="Service%20logo%20Images/root-canal-icon.png" height="100" width="100" />
                <p>ROOT CANAL</p>
            </td>
            <td>
                <img src="Service%20logo%20Images/smile-makeover-icon.png" height="100" width="100"/>
                <p>SMILE MAKEOVER</p>
            </td>
            <td>
                <img src="Service%20logo%20Images/teeth-removal-icon.png" height="100" width="100"/>
                <p>WISDOM TEETH REMOVAL</p>
            </td>
             <td>
                <img src="Service%20logo%20Images/teeth-whitening-icon.png" height="100" width="100"/>
                <p> TEETH WHITENING</p>
            </td>

            </tr>

    </table>
    </div>   
    <!--Button book now-->
   <h4 style="text-align:center; color:dodgerblue; font-family:Arial; font-size:xx-large; height: 10vh"><b>BOOK YOUR APPOINTMENT</b></h4>

   
    <section>
         <h4 style="text-align:center; color:dodgerblue; font-family:Arial; font-size:xx-large;  height: 20vh">
        <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="DodgerBlue" BorderStyle="Solid" ForeColor="Black" Height="64px" Text="Book Now" Width="283px " OnClick="BookApp"/>
    </h4>
    </section>

    <!--Why e-smile dental clinic-->
    <h4 style="text-align:center; color:dodgerblue; font-family:Arial; font-size:xx-large"><b>WHY ISMILE TEETH CARE CENTRE?</b></h4>
    <p style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; text-align:center">All of our treatments and services are provided in a comfortable hygienic environment and adhere to high-quality standards.</p>
    <table class="newTable">

     <tr>
         <td>
    <img src="Images/pexels-photo-3845759.jpeg" style="border-radius: 50%; width: 200px; height: 200px"/>
          <h4>Individualized Dental Care</h4>
             <p>
                  Our mission is to provide you with personalized care. We are a team dedicated to improving and maintaining your oral health. Whether you need preventative care, cosmetic dentistry, or oral surgery, you will be in great hands.
             </p>
  </td>
         <td>
             <img src="Images/Latest.jpeg" style="border-radius: 50%; width: 200px; height: 200px" />
             <h4>The Latest Technology</h4>
             <p>
                  We provide quality and personalized oral health care using the latest dental technology. By using the latest research and tools, we make sure your time with us is as comfortable and as efficient as possible.
             </p>
         </td>
         <td>
             <img src="Images/doc_check.jpg"  style="border-radius: 50%; width: 200px; height: 200px" />
             <h4>Experienced Dental Professionals</h4>
             <p>We offer broad array of services. Our team has the professional experience to realize that there is no such thing as one-size-fits-all treatment, so we never use a one-size-fits-all approach to your dental plan.</p>
         </td>
       </tr> 
    </table>

   <!--Testimonials-->
    <div id="Review">
      <h4 style="text-align:center; color:dodgerblue; font-family:Arial; font-size:xx-large"><b>TESTIMONIALS</b></h4>
    <div class="container-m">
    <div class="row">
        <div class="col-md-4">
            <div class="card"> <i class="fa fa-quote-left u-color"></i>
                <p>Excellent doctor!!!Very thorough and caring. I'm terribly afraid of the dentist and she's very sensitive to that and goes the extra mile to make you feel comfortable. Love her!</p>
               
                <div class="d-flex justify-content-between align-items-center">
                    <div class="user-about"> <span class="font-weight-bold d-block">Alex Smith</span> <span class="u-color">Student</span>
                        <div class="d-flex flex-row mt-1"> <i class="fa fa-star u-color"></i> <i class="fa fa-star u-color"></i> <i class="fa fa-star-o u-color"></i> <i class="fa fa-star-o u-color"></i> <i class="fa fa-star-o u-color"></i> </div>
                    </div>
                    <div class="user-image"> <img src="https://i.imgur.com/UUW3zLx.jpg" class="rounded-circle" width="70"> </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card"> <i class="fa fa-quote-left u-color"></i>
                <p>No pain or problems with my extractions and she goes above and beyond the call of duty to make sure you understand what you should do with your teeth and mouth so you do not have future health risks. I found her to be very professional and truly caring about your oral health.</p>
                <div class="d-flex justify-content-between align-items-center">
                    <div class="user-about"> <span class="font-weight-bold d-block">Sophia T.</span> <span class="u-color">Manager</span>
                        <div class="d-flex flex-row mt-1"> <i class="fa fa-star u-color"></i> <i class="fa fa-star u-color"></i> <i class="fa fa-star u-color"></i> <i class="fa fa-star-o u-color"></i> <i class="fa fa-star-o u-color"></i> </div>
                    </div>
                    <div class="user-image"> <img src="https://i.imgur.com/o5uMfKo.jpg" class="rounded-circle" width="70"> </div>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card"> <i class="fa fa-quote-left u-color"></i>
                <p>Awesome Dentist... He is Very professional and Straightforward of what needs to be done... I live 40miles away but I’m more comfortable coming to this Dental clinic than the One across my Street... I highly recommend Arrow Smile Dental to my friends..</p>
                <div class="d-flex justify-content-between align-items-center">
                    <div class="user-about"> <span class="font-weight-bold d-block">Mike Vincent</span> <span class="u-color">Designer</span>
                        <div class="d-flex flex-row mt-1"> <i class="fa fa-star u-color"></i> <i class="fa fa-star u-color"></i> <i class="fa fa-star u-color"></i> <i class="fa fa-star u-color"></i> <i class="fa fa-star-o u-color"></i> </div>
                    </div>
                    <div class="user-image"> <img src="https://i.imgur.com/At1IG6H.png" class="rounded-circle" width="70"> </div>
                </div>
            </div>
        </div>
    </div>
</div>
        </div>
    <!--Contact us-->
    <div id="info">
    <h4 style="text-align:center; color:dodgerblue; font-family:Arial; font-size:xx-large; height: 10vh"><b>CONTACT US</b></h4>
     
    <div class="row" style="border:none; background:white; height:360px; width:auto;">
		<div class="col-xs-8">
			<img src="Images/doc_check.jpg" style="height:300px; margin-left:-15px;" />
		</div>
        <div class="mydiv">
		<!--<div class="col-xs-4">-->
            <h5 style="text-align:left">ADDRESS</h5>
    <p style="font-size:30px">
        18/GF, Red Coral,Opp Gada Circle, Harni Road, Vadodara, Gujarat.
    </p>
    <h5 style="text-align:left">Contact Us on-</h5>
    <p style="font-size:20px;text-align:left;">+91-8852147851</p>			
		</div>
 <%-- <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   Timing
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="#">Mon 10:00 am – 08:30 pm</a>
    <a class="dropdown-item" href="#">Tue 10:00 am – 08:30 pm</a>
    <a class="dropdown-item" href="#">Wed 10:00 am – 08:30 pm</a>
     <a class="dropdown-item" href="#">Thurs 10:00 am – 08:30 pm</a>
      <a class="dropdown-item" href="#">Fri 10:00 am – 08:30 pm</a>
  <a class="dropdown-item" href="#">Sat 10:00 am – 08:30 pm</a>
      <a class="dropdown-item" href="#"><b>Sunday Closed</b></a>
 
     <h5>Afternoon Break Hours
<br />
1.30 PM to 4.30 PM</h5>
       </div>--%>
</div>
 </div>
    
      </div> 
   



</asp:Content>
