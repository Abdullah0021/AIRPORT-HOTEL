<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="AIRPORT_HOTEL.Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
          .custom-button-2 {
            background-color: #054305; /* Example color for second button */
            color: white;
            width: 100%;
            text-decoration: none; /* Remove underline from links */
            padding: 10px; /* Add padding to buttons */
            border: none; /* Remove border from buttons */
            border-radius: 5px; /* Add rounded corners to buttons */
            cursor: pointer; /* Change cursor to pointer on hover */
        }
       .custom-button-2:hover {
            background-color: #033305; /* Change background color on hover */
        }
       .custom-button-2 a {
            color: white;
            text-decoration: none; /* Remove underline from links */
        }
       .section {
            width: 100%;
            height: auto;
        }
        h2 {
            text-align: center;
            font-size: 36px;
            padding-top: 50px;
            margin-bottom: 0; /* Remove default margin for headings */
            text-decoration: none; /* Remove underline from headings */
            color : #054305 !important;
        }
        .image-container {
            position: relative;
            width: 24%; /* 4 images per row */
            margin: 2px; /* 2px space between images */
            float: left;
        }
        .image {
            opacity: 1;
            display: block;
            width: 100%;
            height: auto;
            transition: .5s ease;
            backface-visibility: hidden;
            border: 10px solid #054305; /* Add border to images */
        }
        .image-container:hover .image {
            opacity: 0.3;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <img class="section" src="about.jpg" alt="About Image">
    </div>
    <h1 style="text-align:center; color:#c6b452; font-size:36px; padding-top:50px; padding-bottom:50px"><b>All Galleries</b></h1>
    <div class="row" style="margin-right:40px;">
        <div class="col-sm-2 mb-1" style="margin-left:200px;">
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Hotel-id" style="text-decoration: none; color: white;">Hotel Rooms</a></button>
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Swimming-id" style="text-decoration: none; color: white;">Swimming Pool</a></button>
        </div>
        <div class="col-sm-2 mb-1">
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Cafe-id" style="text-decoration: none; color: white;">Cafe Fly</a></button>
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Sauna-id" style="text-decoration: none; color: white;">Sauna Bath</a></button>
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Corporate-id" style="text-decoration: none; color: white;">Corporate Lounge</a></button>
        </div>
        <div class="col-sm-2 mb-1">
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Dining-id" style="text-decoration: none; color: white;">Dining Hall</a></button>
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Game-id" style="text-decoration: none; color: white;">Game Room</a></button>
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Events-id" style="text-decoration: none; color: white;">Events</a></button>
        </div>
        <div class="col-sm-2 mb-3">
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Gym-id" style="text-decoration: none; color: white;">Gymnasium</a></button>
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Garden-id" style="text-decoration: none; color: white;">Garden Area</a></button>
        </div>
    </div>

   <div id="Hotel-id">
        <h2><b>Hotel Rooms</b></h2>
        <div class="row">
            <div class="image-container">
                <img src="sr1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sr2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sr3.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sr4.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sr5.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sr6.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sr7.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
    <img src="sr1.jpg" alt="Avatar" class="image">
</div>
<div class="image-container">
    <img src="sr2.jpg" alt="Avatar" class="image">
</div>
<div class="image-container">
    <img src="sr3.jpg" alt="Avatar" class="image">
</div>
<div class="image-container">
    <img src="sr4.jpg" alt="Avatar" class="image">
</div>
<div class="image-container">
    <img src="sr5.jpg" alt="Avatar" class="image">
</div>
<div class="image-container">
    <img src="sr6.jpg" alt="Avatar" class="image">
</div>
<div class="image-container">
    <img src="sr7.jpg" alt="Avatar" class="image">
</div>
            <!-- Add more images here -->
        </div>
    </div>

    <div id="Swimming-id">
        <h2><b>Swimming Pool</b></h2>
    </div>

    <div id="Cafe-id">
        <h2 ><b>Cafe Fly</b></h2>
    </div>

    <div id="Sauna-id">
        <h2><b>Sauna Bath</b></h2>
    </div>

    <div id="Corporate-id">
        <h2 ><b>Corporate Lounge</b></h2>
    </div>

    <div id="Dining-id">
        <h2><b>Dining Hall</b></h2>
    </div>

    <div id="Game-id">
        <h2><b>Game Room</b></h2>
    </div>

    <div id="Events-id">
        <h2><b>Events</b></h2>
    </div>

    <div id="Gym-id">
        <h2><b>Gymnasium</b></h2>
    </div>

    <div id="Garden-id">
        <h2><b>Garden Area</b></h2>
    </div>
</asp:Content>