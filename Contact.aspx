<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AIRPORT_HOTEL.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <style>
            .section {
                width: 100%;
                height: auto;
                flex: auto;
            }
        
            .col-sm-25 {
                max-width: 500px;
                height: auto;
                font-family: Arial, sans-serif;
                font-size: 1rem;
                color: gray;
                text-align: justify;
                margin-left:12.5%;
                padding: 1rem;
                box-sizing: border-box;
                flex: auto;
            }

            .field-label {
                font-size: 1.25rem;
                color: darkgray;
                flex: auto;
            }
            .field-lable-1 {
                font-size: 1.25rem;
                color: darkgray;
                height:300px;
                flex: auto;
            }

            .txtholder {
                width: 100%;
                height: auto;
                vertical-align: middle;
                padding: 0.5rem;
                box-sizing: border-box;
                flex: auto;
            }

            h7 {
                color: #004101;
                font-family: Arial, sans-serif;
                font-size: 2.5rem;
                margin: 0 0 1rem 0;
            }
            h8 {
                color: #004101;
                font-family: Arial, sans-serif;
                font-size: 1.5rem;
                text-align:left;
                
            }

            @media (max-width: 768px) {
                h7 {
                    font-size: 2rem;
                }
                h8 {
                    font-size: 2rem;
                }

                .field-label {
                    font-size: 1rem;
                }

                .field-label-1 {
                    font-size: 1rem;
                }
            }

            .textarea-holder {
                width: 100%;
                max-width: 570px;
                height: 100px;
            }
        </style>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>     
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-jLKHWMZowWgw1nU1O2ZgbRmjVprQ6l9lnzM/7OV9mcz3AI5WdmnVvW7e6sX9d2uM" crossorigin="anonymous">
        <script>
            function showMessageSent() {
                alert("Message has been sent");
            }
        </script>
    </head>
    <body>
        <img class="section" src="contact.png" alt="About Image">
        <br /> 
        <br /> 
        <br /> 
        <br /> 
        <br />
        <div class="row">
            <div class="col-sm-25">
                <h7><b>GET IN TOUCH</b></h7>
                <br />
                <p>
                    Let’s get to know what your thoughts is because your opinion matters drop your queries via form below we are here to answer 
                    all your questions if you are unable to find any information pick up your phone and send us a message via form below or call us. 
                    We will try our best to touchback with you an early time possible.
                </p>
                <label class="field-lable;"><b>Name</b></label>
                <br />
                <input size="1" type="text" name="[name]" id="field-name" placeholder="Name" class="txtholder" />
                <br />
                <br />

                <label class="field-lable;"><b>Email</b></label>
                <br />
                <input size="1" type="text" name="[email]" id="field-email" placeholder="Email" class="txtholder" />
                <br />
                <br />

                <label class="field-lable;"><b>Subject</b></label>
                <br />
                <input size="1" type="text" name="[subject]" id="field-subject" placeholder="Subject" class="txtholder" />
                <br />
                <br />

                <label class="field-lable-1;"><b>Message</b></label>
                <br />
                <textarea name="message" id="field-message" placeholder="Message" class="textarea-holder"></textarea>
                <br />
                <br />

                <button class="btn btn-success btn-block mb-2" style="background-color:#004101" onclick="showMessageSent()">Send</button>
            </div>                
            <br />
            <br />

            <div class="col-sm-25">
                <h8><b>Email us:</b></h8>
                <br />
                <ul class="list-unstyled">
                    <li><a class="nav-link text-secondary d-flex align-items-center" href="https://mail.google.com/mail/u/0/#inbox?compose=new"><i class="fas fa-envelope" style="color: #054305; margin-right: 15px;"></i>Info@localhost</a></li>
                    <li><a class="nav-link text-secondary d-flex align-items-center" href="https://mail.google.com/mail/u/0/#inbox?compose=new"><i class="fas fa-envelope" style="color: #054305; margin-right: 15px;"></i>receptioniststaff2@gmail.com</a></li>
                </ul>  

                <h8><b>Telephone:</b></h8>
                <ul class="list-unstyled">
                    <li><a class="nav-link text-secondary d-flex align-items-center"><i class="fas fa-phone" style="color: #054305; margin-right:15px;"></i>02134570141</a></li>
                    <li><a class="nav-link text-secondary d-flex align-items-center"><i class="fas fa-phone" style="color: #054305; margin-right:15px;"></i>02134603737</a></li>
                </ul>

                <h8><b>Cell no:</b></h8>
                <ul class="list-unstyled">
                    <li><a class="nav-link text-secondary d-flex"><i class="fas fa-mobile-alt" style="color: #054305; margin-right:15px;"></i>0333 2247509</a></li>
                    <li><a class="nav-link text-secondary d-flex"><i class="fas fa-mobile-alt" style="color: #054305; margin-right:15px;"></i>0300 2926206</a></li>
                    <li><a class="nav-link text-secondary d-flex"><i class="fas fa-mobile-alt" style="color: #054305; margin-right:15px;"></i>0332 8801133</a></li>
                    <li><a class="nav-link text-secondary d-flex"><i class="fas fa-mobile-alt" style="color: #054305; margin-right:15px;"></i>0317 0286813</a></li>
                </ul>

                <h8><b>Follow us on:</b></h8>
                <div class="row" style="margin-left:15px;">
                    <a href="https://www.facebook.com/" class="text-secondary-dark mr-3"><i class="fab fa-facebook"></i></a>
                    <a href="https://www.youtube.com/" class="text-secondary-dark mr-3"><i class="fab fa-youtube" style="color:red"></i></a>
                    <a href="https://www.instagram.com/" class="text-secondary-dark mr-3"><i class="fab fa-instagram" style="color: #feda75"></i></a>
                </div>
            </div>
        </div>
    </body>
    </html>
</asp:Content>
