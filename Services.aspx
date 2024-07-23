<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="AIRPORT_HOTEL.Services" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <html>
    <head>
    <style>

    .carousel-container {
       display: flex;
       align-items: center;
    }
    .carousel-inner img {
        width: 50%;
        height: 300px;            
        object-fit: cover;

    }

    @media (max-width: 991px) {
        .carousel-container {
            margin-top: 20px;
        }
    }
    .section {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding: 20px;
        text-align: center;
    }
</style>
        </head>
        <body>
            <br />
            <%--services image code --%>
            <img class="section" style="slide-inner;width:100%;height:75s0px;" src="services.png" alt="Services Image"/>
            <br />
            <br />
            <br />


             <%--suit rooms code --%>
        <div class="section" style="background-color: #004101; width: auto; padding: 20px;">
    <div class="row">
        <div class="col-lg-5 col-12 order-lg-1 order-2">
            <h7 style="color: #c6b452; font-size: 23px; margin-bottom: 10px;"><b>SUITE ROOMS</b></h7>
            <hr style="border: 0; height: 3px; background-color: #c6b452; margin: 10px 0;" />
            <p style="font-size: large; color: white; margin: 0;">
                Luxurious yet comfortable rooms at prime prices in five different categories: Standard, Deluxe, Executive, Cooperative Club, and Suites. 
                The furnished rooms with marble bathrooms, LEDs, and splits, along with the facility of service and high-speed internet access. All you want is here, with room service, laundry, and housekeeping for deep cleaning of the rooms.
            </p>
        </div>
        <div class="col-lg-7 col-12 order-lg-2 order-1 carousel-container">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="2000">
                <div class="carousel-inner" >
                    <div class="carousel-item active" style="width:auto;height:300px;">
                        <img class="d-block w-100" src="sr1.jpg" alt="First slide" style="border: 2px solid #c6b452;">
                    </div>
                    <div class="carousel-item" style="width:auto;height:300px;">
                        <img class="d-block w-100" src="sr2.jpg" alt="Second slide" style="border: 2px solid #c6b452;">
                    </div>
                    <div class="carousel-item" style="width:auto;height:300px;">
                        <img class="d-block w-100" src="sr3.jpg" alt="Third slide" style="border: 2px solid #c6b452;">
                    </div>
                    <div class="carousel-item" style="width:auto;height:300px;">
                        <img class="d-block w-100" src="sr4.jpg" alt="Fourth slide" style="border: 2px solid #c6b452;">
                    </div>
                    <div class="carousel-item" style="width:auto;height:300px;">
                        <img class="d-block w-100" src="sr5.jpg" alt="Fifth slide" style="border: 2px solid #c6b452;">
                    </div>
                    <div class="carousel-item" style="width:auto;height:300px;">
                        <img class="d-block w-100" src="sr6.jpg" alt="Sixth slide" style="border: 2px solid #c6b452;">
                    </div>
                    <div class="carousel-item" style="width:auto;height:300px;">
                        <img class="d-block w-100" src="sr7.jpg" alt="Seventh slide" style="border: 2px solid #c6b452;">
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
            <br />
            <br />
            <br />
   </body>
   </html>
</asp:Content>
