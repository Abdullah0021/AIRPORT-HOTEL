<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Career.aspx.cs" Inherits="AIRPORT_HOTEL.Career" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    <html>
    <head>
        <style>
            .section {
                width: 100%;
                height: 700px;
                margin-bottom: 50px; 
            }

            .col-sm-25 {
                max-width: 75%;
                font-family: Arial, sans-serif;
                font-size: 1rem;
                color: gray;
                padding: 50px 20px 150px;
                margin: auto;
                box-sizing: border-box;
            }

            h7 {
                color: #004101;
                font-family: "Montserrat", Sans-serif;
                font-size: 37px;
                margin: 0 0 1rem 0;
                text-align:center;
            }

            .form-group {
                margin-bottom: 1rem;
            }

            .form-row {
                display: flex;
                justify-content: space-between;
                flex-wrap: wrap;
            }

            .form-row .form-group {
                flex: 0 0 48%;
                min-width: 100%;
                box-sizing: border-box;
            }

            @media (min-width: 576px) {
                .form-row .form-group {
                    min-width: 48%;
                }
            }

            .btn-block {
                display: block;
                width: 100%;
            }

            .custom-file {
                margin-top: 1rem;
                margin-bottom: 1rem;
            }

            label {
                font-weight: bold;
                color: #000; 
            }
        </style>

        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>     
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-jLKHWMZowWgw1nU1O2ZgbRmjVprQ6l9lnzM/7OV9mcz3AI5WdmnVvW7e6sX9d2uM" crossorigin="anonymous">
        
        <script>
            function showMessageSent() {
                alert("Message has been submitted");
            }
        </script>
    </head>
    <body>
        <img class="section" src="career.jpg" alt="About Image">
        <div class="row">
            <div class="col-sm-25">
                <h7><b>WE WELCOME PROFICIENT, DEDICATED, CAPABLE CANDIDATES TO BECOME PART OF OUR TEAM.</b></h7>
                <p>
                    We propose competitive career boosting opportunities with a positive working environment with the bright packages and fringe benefits. 
                    We do not believe in any kind of diversity each employ and deserving applicants will be considered for employment without any disrespect to race, color, religion, gender, national origin, or disability status, or any other characteristics protected by law.
                    <br />
                    Please initially communicate with us regarding and possible open position via completing the form below.
                </p>
                    <div class="form-row">
                        <div class="form-group">
                            <label for="field-name">Name</label>
                            <input type="text" class="form-control" id="field-name" placeholder="Name">
                        </div>
                        <div class="form-group">
                            <label for="field-last-name">Last</label>
                            <input type="text" class="form-control" id="field-last-name" placeholder="Last">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="field-email">Email</label>
                        <input type="email" class="form-control" id="field-email" placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label for="field-phone">Phone number</label>
                        <input type="tel" class="form-control" id="field-phone" placeholder="Phone number">
                    </div>
                    <div class="form-group">
                        <label for="field-subject">Subject</label>
                        <input type="text" class="form-control" id="field-subject" placeholder="Subject">
                    </div>
                    <div class="form-group">
                        <label for="field-gender">Gender</label>
                        <select class="form-control" id="field-gender">
                            <option>Male</option>
                            <option>Female</option>
                            <option>Other</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="field-position">Position Apply for</label>
                        <input type="text" class="form-control" id="field-position" placeholder="Position Apply for">
                    </div>
                    <div class="form-group">
                        <label for="field-intro">Introduce yourself</label>
                        <textarea class="form-control" id="field-intro" rows="3" placeholder="Introduce yourself"></textarea>
                    </div>
                    <div class="form-group custom-file">
                        <input type="file" class="custom-file-input" id="customFile">
                        <label class="custom-file-label" for="customFile">Choose file</label>
                    </div>
                    <button type="submit" class="btn btn-success btn-block mb-2" style="background-color:#004101" onclick="showMessageSent()">Submit</button>
            </div>   
        </div>
    </body>
    </html>
</asp:Content>
