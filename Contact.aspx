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
                max-width: 570px;
                height: auto;
                font-family: Arial, sans-serif;
                font-size: 1rem;
                color: gray;
                text-align: justify;
                margin-left:15%;
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

            h6 {
                color: #004101;
                font-family: Arial, sans-serif;
                font-size: 2.5rem;
                margin: 0 0 1rem 0;
            }

            @media (max-width: 768px) {
                h6 {
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
        <script>
            function showMessageSent() {
                alert("Message has been sent");
            }
        </script>
    </style>
    </head>

        <body>
            <>
        <img class="section" src="contact.png" alt="About Image">
            <br /> 
            <br /> 
            <br /> 
            <br /> 
            <br />
            <div class="col-sm-25">
            <h6><b><b>GET IN TOUCH</b></b></h6>
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

                <button class="btn btn-success btn-block mb-2" style="background-color:#004101">Send</button>
                
                
                <br />
                <br />
    </div>

        </body>
        </html>
    
</asp:Content>

