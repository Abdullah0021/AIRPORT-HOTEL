<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="AIRPORT_HOTEL.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <style>
        .line {
            width: 160px; /* Adjust the width to match the distance between the letters 'R' and 'I' */
            border-top: 3px solid #c6b452;
            margin: 0 auto;
            transform: translateX(7px); /* Adjust to align perfectly */
        }
        .section {
            width: 100%;
            height: auto;
        }
        .center {
            text-align: center;
        }
    </style>
    </head>

        <body>
            <div>
        <img class="section" src="about.jpg" alt="About Image">
        <div class="center">
            <br />
            <br />
            <div class="line"></div>
            <br />
            <h6 style="color:#004101; font-family:Arial; font-size:30px;"><b><b>INTRODUCTION:</b></b></h6>
        </div>
                <br />
        <p style="font-size:large; font-family:Arial; text-align:center">
            Airport Hotel, Skyrooms (Private) Limited is an immaculate historical featured a diverse holiday place for tourists to stay at economical way. Airport Hotel, Skyrooms (Private) Limited was incorporated as a limited company in May, 1975 subsequently acquired by Pakistan International Airlines Corporation Limited (PIACL) in 1973. Airport Hotel was established in 1955 built by the British Overseas Airlines Corporation (BOAC) formerly known as Speed Bird House.
        </p>
                <br />
        <p style="font-size:large; font-family:Arial; text-align:center">
            The Airport Hotel is having a total of 310 rooms consist on six different blocks including 02 spacious suites and 13 estate of the art latest Corporate Club rooms with mini bar facility. Airport Hotel is situated five minutes from Quaid e Azam Mohammad Ali Jinnah International Airport on a beautifully landscaped site with 9 big & small extensive courtyards.
        </p>
                <br />
        <p style="font-size:large; font-family:Arial; text-align:center">
            The hotel main features <b>Café-Fly, Corporate Lounge, Gym, Game Room</b> and all day <b>Dining Restaurant</b> with <b>Live Breakfast</b>. The hotel vaunts an outdoor <b>Swimming pool, Sauna, Steam Bath and Jacuzzi.</b>
        </p>
                <br />
                <br />
                <br />
    </div>

        </body>
        </html>
    
</asp:Content>
