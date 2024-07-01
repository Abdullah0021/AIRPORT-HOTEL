﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AIRPORT_HOTEL.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <style>
    .list-unstyled li:hover a {
        color: #c6b452 !important; /* Change color to gold on hover */
    }
</style>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>     
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
    </head>
    <body>
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="./1.jpg" height="500px" width="300px" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="./2.jpg" height="500px" width="300px" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="./3.jpg" height="500px" width="300px" alt="Third slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="./4.jpg" height="500px" width="300px" alt="Fourth slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="./5.jpg" height="500px" width="300px" alt="Fifth slide">
                </div>
                <div class="carousel-item">
                     <img class="d-block w-100" src="./6.jpg" height="500px" width="300px" alt="Sixth slide">
                </div>
                <div class="carousel-item">
                    <img class="d-block w-100" src="./7.jpg" height="500px" width="300px" alt="eventh slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <br>
        <br>
          <div class="container">
      <div class="row">
          <div class="col-sm-4" style="margin-bottom:20px;">
              <h4 style="color:#054305; margin-left:40px; margin-bottom:10px;"><b><b>FEATURED CONVENIENCE</b></b></h4>
              <h5 style="color:#c6b452; margin-left:40px;">ALL CONVENIENCE</h5>
          </div>
          
          <div class="row" style="margin-right:40px;">
             
              <div class="col-sm-4" style="width:200px" >
                   <ul class="list-unstyled">
                  <li><a  class="nav-link text-secondary d-flex align-items-center" href="Access-internet.aspx"> <i class="fas fa-wifi" style="color: #054305; margin-right: 5px;"></i>Access Internet </a></li>
                 <li> <a class="nav-link text-secondary d-flex align-items-center" href="Swimming-Pool.aspx"><i class="fas fa-swimming-pool" style="color: #054305; margin-right: 5px;"></i>Swimming Pool</a></li>
                  <li><a class="nav-link text-secondary d-flex align-items-center" href="Gymnasium.aspx"><i class="fas fa-weight" style="color: #054305; margin-right:10px;"></i>Gymnasium</a></li>
                 <li> <a class="nav-link text-secondary d-flex align-items-center" href="Transportation.aspx"><i class="fas fa-bus" style="color: #054305; margin-right:5px;"></i>Transportation</a></li>
                  </ul>
               </div>

              <div class="col-sm-4" style="width:200px">
                   <ul class="list-unstyled">
                <li>  <a class="nav-link text-secondary d-flex align-items-center" href="Cafe-Fly.aspx"><i class="fas fa-coffee" style="color: #054305; margin-right: 5px;"></i>Cafe Fly</a></li>
                 <li> <a class="nav-link text-secondary d-flex align-items-center" href="Events.aspx"><i class="fas fa-cocktail" style="color: #054305; margin-right: 5px;"></i>Events</a></li>
                 <li> <a class="nav-link text-secondary d-flex align-items-center" href="Restaurant.aspx"><i class="fas fa-hamburger" style="color: #054305; margin-right: 5px;"></i>Restaurant</a></li>
                 <li> <a class="nav-link text-secondary d-flex align-items-center" href="Game-room.aspx"><i class="fas fa-gamepad" style="color: #054305; margin-right: 5px;"></i>Game Room</a></li>                         
              </ul>
                  </div>
              <div class="col-sm-4" style="width:200px" >
                <ul class="list-unstyled">
                 <li> <a class="nav-link text-secondary d-flex align-items-center" href="Car-parking.aspx"><i class="fas fa-parking" style="color: #054305; margin-right: 5px;"></i>Car Parking</a></li>
                 <li> <a class="nav-link text-secondary d-flex align-items-center" href="Room-service.aspx"><i class="fas fa-hotel" style="color: #054305; margin-right: 5px;"></i>Room Service</a></li>
                 <li> <a class="nav-link text-secondary d-flex align-items-center" href="Netflix.aspx"><i class="fa fa-video" style="color: #054305; margin-right: 5px;"></i>Netflix</a></li>
                <li>  <a class="nav-link text-secondary d-flex align-items-center" href="Sauna-bath.aspx"><i class="fa fa-bath" style="color: #054305; margin-right: 5px;"></i>Sauna Bath</a></li>
                  </ul>
                  </div>
          </div>
      </div>
  </div>
        <br />
        <br />
        <br />
        
     <div class="row" style="margin:auto;">
    <div class="col-sm-4" style="width:400px;">
        <img src="e1.jpg" style="width:100%; height:350px;" />
        <br />
        <h7 style="color:#054305; font-size:23px;"><b>EVENTS</b></h7>
        <p style="font-size:large; color:gray;">
            Need a venue for your memorable events Airport Hotel has the perfect venue to make your events beautiful and memorable. A beautiful banquet for your birthdays , wedding ,anniversary or any other event.
        </p>
    </div>

    <div class="col-sm-4" style="width:400px;">
        <img src="c1.jpg" style="width:100%; height:350px; margin-right:30px;" />
        <br />
        <h8 style="color:#054305; font-size:23px;"><b>CAFETERIA</b></h8>
        <p style="font-size:large; color:gray;">
            A café in the center of the hotel next to reception a cute space with artistic interior with the Unforgettable taste of Alacarte menu, roasted (Italian brand) Coffee beans brewing in the Italian machinery for cappuccino
        </p>
    </div>

    <div class="col-sm-4" style="width:400px;">
        <img src="d1.jpg" style="width:100%; height:350px;" />
        <br />
        <h9 style="color:#054305; font-size:23px;"><b>DINING HALL</b></h9>
        <p style="font-size:large; color:gray;">
            Breakfast, Lunch or Dinner is served in the dinning hall at the specific time period mentioned with updated menus of hygienic and healthy food
        </p>
    </div>
</div>

        <br />
        <br />
        <br />

        <div class="row" style="margin:auto;">
    <div class="col-sm-4" style="width:400px;">
        <img src="s1.jpg" style="width:100%; height:400px;" />
        <br />
        <h7 style="color:#054305; font-size:23px;"><b>SWIMMING POOL</b></h7>
        <p style="font-size:large; color:gray;">
            Outdoor Swimming Pool is the sort of relaxation and fun for people of all ages. Airport hotel Karachi facilitates its guests with the hygienic and a wide swimming pool.
        </p>
    </div>
    
    <div class="col-sm-4" style="width:400px;">
        <img src="s2.jpg" style="width:100%; height:400px; margin-right:30px;" />
        <br />
        <h8 style="color:#054305; font-size:23px;"><b>SAUNA & STEAM BATH</b></h8>
        <p style="font-size:large; color:gray;">
            Blow off your tensions and enjoy the relaxing session of sauna now since the blood vessels relax and dilate in a sauna, blood flow increases, and the experience.
        </p>
    </div>
    
    <div class="col-sm-4" style="width:400px;">
        <img src="g1.jpg" style="width:100%; height:400px;" />
        <br />
        <h9 style="color:#054305; font-size:23px;"><b>GYMNASIUM</b></h9>
        <p style="font-size:large; color:gray;">
            All the latest equipment’s to keep you in track of your fitness routines with the guidance of skilled trainer because the fitness of your health come first and there should be no lack for people who workout regular.
        </p>
    </div>
</div>

        <br />
        <br />
        <br />


    </body>
    </html>

</asp:Content>
