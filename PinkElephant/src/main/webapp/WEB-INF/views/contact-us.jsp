<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ include file="header.jsp" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./css/home.css">
    <script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="./js/home.js"></script>
    <style>
        body {
            background-color: #fffcf3;
            font-family: AlbraTRIAL-Regular-Identity-H;
        }

        .contact-us {
            margin-top: -20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
              background-size: cover;
	    background-repeat: no-repeat; /* Prevent image from repeating */
	    height: 100vh; /* Set height to 100% of the viewport height */
        }

        .contact-us-left {
            flex: 1;
            max-width: 50%;
            padding: 20px;
            color: #f37173;
            border-radius: 15px;
            margin-left: 100px;
        }

        .contact-us-left-top {
            font-size: 2em;
            color: #f37173;
            margin-bottom: 100px;
        }

        .contact-us-left img {
            width: 100%;
            max-width: 200px;
            margin-left: -30px;
        }

        .contact-us-left-bottom {
            margin-top: 10px;
        }

        .contact-us-left-bottom p {
            color: #000;
        }

        .contact-us-right {
            flex: 1;
            max-width: 50%;
            padding: 20px;
            border-radius: 15px;
        }

        .contact-us-right p {
            font-size: 1.5em;
            color: #333;
            
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: flex-end;
            margin-right: 100px;
        }

        form input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid;
            border-radius: 30px;
            background-color: #fffcf3;
        }

        form input[type="submit"] {
            width: auto;
            padding: 10px 20px;
            background-color: #f37173;
            color: white;
            cursor: pointer;
        }

        form input[type="submit"]:hover {
            background-color: #d2595f;
        }
    </style>

    <script>
        $(document).ready(function () {
            // Assuming you have an ID for the submit button, e.g., "submitBtn"
            $("#submitBtn").on("click", function (e) {
                e.preventDefault(); // Prevent the default form submission

                // Validate phone number
                var phoneNo = $("#phoneNo").val();
                if (phoneNo.length !== 10) {
                    toastr.error("Please enter a valid 10-digit phone number.");
                    return;
                }
                
                // Validate email
                var email = $("#email").val();
                if (!isValidEmail(email)) {
                    toastr.error("Please enter a valid email address.");
                    return;
                }
                
                // Collect form data
                var formData = $("#contactForm").serialize();

                // Make an AJAX request to the controller
                $.ajax({
                    url: "sendEmailDetails",
                    method: "GET",
                    data: formData,
                    success: function (response) {
                        // Handle the response from the server
                        console.log(response);
                        if (response === true) {
                            console.log("Sent successfully..");
                            toastr.success("Email sent successfully!");
                            // Reset the form
                            document.getElementById("contactForm").reset();
                        } else {
                            toastr.error("Error sending email.");
                            console.log("Not Sent successfully..");
                        }
                    },
                    error: function (xhr, status, error) {
                        console.log('AJAX Error: ' + error);
                    }
                });
            });
            
            function isValidEmail(email) {
                var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                return emailRegex.test(email);
            }
        });
    </script>
</head>

<body>

    <div class="contact-us">
        <div class="contact-us-left">
            <div class="contact-us-left-top">
                <p>Lets make <br>something, <br>you and us.</p>
            </div>
            <div class="contact-us-left-bottom">
                <img src="./images/contactElephant.png" alt="Company Logo">
                <p>Prefer to talk to us: +91 9574634568 | hello@pinkelephant.com</p>
            </div>
        </div>
        <div class="contact-us-right">
            <p>A little bit of yourself.<br>How can we get back to you?</p>

            <form action="#" method="get" id="contactForm">
                <input type="text" id="name" name="name" placeholder="Your Name" required>
                <input type="text" id="company" name="company" placeholder="Company (Optional)">
                <input type="text" id="phoneNo" name="phoneNo" pattern="[0-9]{10}" placeholder="Phone Number*" required>
                <input type="email" id="email" name="email" placeholder="Email address*" required>
                <input type="submit" value="Submit" id="submitBtn">
            </form>
        </div>
    </div>
</body>

<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</html>
