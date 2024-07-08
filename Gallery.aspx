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
            margin-bottom: 20px; /* Remove default margin for headings */
            text-decoration: none; /* Remove underline from headings */
            color: #054305 !important;
            position: relative;
        }

        h2::after {
            content: '';
            display: block;
            width: 50px;
            height: 3px;
            background: #054305;
            margin: 10px auto 0; /* Center the underline */
        }

        .image-container {
            position: relative;
            width: 100%; /* Default to full width */
            margin: 2px; /* 2px space between images */
            transition: 1s;
        }

        .image {
            opacity: 1;
            display: block;
            width: 100%;
            height: auto;
            transition: .5s ease;
            backface-visibility: hidden;
            border: 5px solid #054305; /* Add border to images */
        }

        .image-container:hover .image {
            opacity: 0.3;
        }

        .image-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .image-container {
            flex: 1 1 calc(25% - 4px); /* 4 images per row with margin */
        }

        @media (max-width: 768px) {
            .image-container {
                flex: 1 1 calc(50% - 4px); /* 2 images per row with margin */
            }
        }

        @media (max-width: 576px) {
            .image-container {
                flex: 1 1 calc(100% - 4px); /* 1 image per row with margin */
            }
        }

        .button-container {
            text-align: center;
            margin-bottom: 20px;
        }

        @media (max-width: 768px) {
            .button-container {
                width: 50%; /* 2 buttons per row */
                margin-left: auto;
                margin-right: auto;
            }
        }

        @media (max-width: 576px) {
            .button-container {
                width: 100%; /* 1 button per row */
            }
        }
    .mainDiv{
        margin-left:auto;
   
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <img class="section" src="about.jpg" alt="About Image" style="padding:20px">
    </div>
    <h1 style="text-align:center; padding:20px ;color:#c6b452; font-size:36px; padding-top:50px; padding-bottom:50px"><b>All Galleries</b></h1>
    <div class="row" style="padding:20px">
        <div class="col-sm-6 col-md-3 mb-2 button-container">
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Hotel-id" style="text-decoration: none; color: white;">Hotel Rooms</a></button>
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Swimming-id" style="text-decoration: none; color: white;">Swimming Pool</a></button>
        </div>
        <div class="col-sm-6 col-md-3 mb-2 button-container">
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Cafe-id" style="text-decoration: none; color: white;">Cafe Fly</a></button>
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Sauna-id" style="text-decoration: none; color: white;">Sauna Bath</a></button>
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Corporate-id" style="text-decoration: none; color: white;">Corporate Lounge</a></button>
        </div>
        <div class="col-sm-6 col-md-3 mb-2 button-container">
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Dining-id" style="text-decoration: none; color: white;">Dining Hall</a></button>
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Game-id" style="text-decoration: none; color: white;">Game Room</a></button>
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Events-id" style="text-decoration: none; color: white;">Events</a></button>
        </div>
        <div class="col-sm-6 col-md-3 mb-2 button-container">
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Gym-id" style="text-decoration: none; color: white;">Gymnasium</a></button>
            <button class="btn btn-block custom-button-2 mb-2"><a href="#Garden-id" style="text-decoration: none; color: white;">Garden Area</a></button>
        </div>
    </div>
    <div class="mainDiv" style="padding:20px">
   <div id="Hotel-id" style="padding:20px">
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

                    </div>
                </div>

    <div id="Swimming-id">
        <h2><b>Swimming Pool</b></h2>
                <div class="row">
            <div class="image-container">
                <img src="sw1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sw2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sw3.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sw4.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sw5.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sw6.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sw7.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sw8.jpg" alt="Avatar" class="image">
            </div>
                    </div>
                </div>

    <div id="Cafe-id">
        <h2 ><b>Cafe Fly</b></h2>
            <div class="row">
            <div class="image-container">
                <img src="ca1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ca2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ca3.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ca4.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ca5.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ca6.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ca7.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ca8.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ca9.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ca10.jpg" alt="Avatar" class="image">
            </div>
    </div>

    <div id="Sauna-id">
        <h2><b>Sauna Bath</b></h2>
                <div class="row">
            <div class="image-container">
                <img src="sa1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sa2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sa3.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sa4.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sa5.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sa6.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="sa7.jpg" alt="Avatar" class="image">
            </div>

        </div>
    </div>

    <div id="Corporate-id">
        <h2 ><b>Corporate Lounge</b></h2>
                <div class="row">
            <div class="image-container">
                <img src="cr1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="cr2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="cr3.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="cr4.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="cr5.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="cr6.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="cr7.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="cr5.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="cr2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="cr1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="cr6.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="cr3.jpg" alt="Avatar" class="image">
            </div>
                        <!-- Add more images here -->
                    </div>
                </div>

    <div id="Dining-id">
        <h2><b>Dining Hall</b></h2>
                <div class="row">
            <div class="image-container">
                <img src="d1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="d2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="d3.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="d4.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="d5.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="d6.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="d7.jpg" alt="Avatar" class="image">
            </div>
                    </div>
                </div>

    <div id="Game-id">
        <h2><b>Game Room</b></h2>
                <div class="row">
            <div class="image-container">
                <img src="gm1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="gm2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="gm3.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="gm4.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="gm5.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="gm6.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="gm7.jpg" alt="Avatar" class="image">
        </div>
    </div>

    <div id="Events-id">
        <h2><b>Events</b></h2>
                <div class="row">
            <div class="image-container">
                <img src="e1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="e2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="e1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="e2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="e1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="e2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="e1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="e2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="e1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="e2.jpg" alt="Avatar" class="image">
            </div>
        </div>
    </div>

    <div id="Gym-id">
        <h2><b>Gymnasium</b></h2>
                <div class="row">
            <div class="image-container">
                <img src="j1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="j2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="j3.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="j4.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="j5.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="j6.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="j7.jpg" alt="Avatar" class="image">
            </div>
    </div>

    <div id="Garden-id">
        <h2><b>Garden Area</b></h2>
        
                <div class="row">
            <div class="image-container">
                <img src="ga1.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ga2.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ga3.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ga4.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ga5.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ga6.jpg" alt="Avatar" class="image">
            </div>
            <div class="image-container">
                <img src="ga7.jpg" alt="Avatar" class="image">
            </div>
        </div>
    </div>
        </div>
</asp:Content>
