<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
    .footer-wrapper {
        flex-grow: 1;
    }

    .footer {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #f37372;
        color: #fff;
        padding: 10px;
        border-top-left-radius: 15px;
        border-top-right-radius: 15px;
        margin-top: auto;
    }

    .left,
    .right {
        display: flex;
        align-items: center;
    }

    .center {
        display: flex;
        align-items: center;
    }

    .footer img {
        width: 30px;
        margin: 0 10px;
    }

    .footer button {
        background-color: #f37372;
        color: #fff;
        border: none;
        padding: 8px 12px;
        border-radius: 5px;
        margin: 0 10px;
        cursor: pointer;
        text-decoration: none;
        font-size: 14px;
    }
    
    .footer button:hover{
    	color: #000;
    }
    
    @media (max-width: 768px) {
        .footer {
            flex-direction: column;
            text-align: center;
        }

        .left,
        .center,
        .right {
            margin-bottom: 10px;
        }

        .footer .left img{
        	display : none;
        }
     }
</style>
</head>
<body>
    <div class="footer-wrapper">
        <div class="footer">
            <div class="left">
                <!-- Your icon on the left -->
                <a href="/PinkElephant/">
                    <img src="./images/pinkelephantlogo.png" alt="pinkelephant" style="height:50px;width:auto;">
                </a>
            </div>
            <div class="center">
                <!-- Your centered text -->
                <p>
                    <button onclick="location.href='about'" type="button">ABOUT US</button>
                    <button onclick="location.href='about#team'" type="button">TEAM</button>
                    <button onclick="location.href='services#projects'" type="button">PROJECTS</button>
                    <button onclick="location.href='hiring'" type="button">HIRING</button>
                    <button onclick="location.href='contact-us'" type="button">GET IN TOUCH</button>
                </p>
            </div>
            <div class="right">
                <!-- Your social media icons on the right -->
                <button onclick="location.href='#'" type="button"><i class="fab fa-facebook fa-2x"></i></button>
                <button onclick="location.href='#'" type="button"><i class="fab fa-twitter fa-2x"></i></button>
                <button onclick="location.href='#'" type="button"><i class="fab fa-instagram fa-2x"></i></button>
                <button onclick="location.href='#'" type="button"><i class="fab fa-youtube fa-2x"></i></button>
                <!-- Add more social media icons as needed -->
            </div>
        </div>
    </div>
</body>
</html>
