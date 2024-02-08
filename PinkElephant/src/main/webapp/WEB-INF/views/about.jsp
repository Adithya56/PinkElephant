<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="./css/home.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
  	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
    <script src="./js/home.js"></script>
    
    <style>
    
    	body{
    		background-color: #fffcf3;
    		font-family: AlbraTRIAL-Regular-Identity-H;
    	}
		.about-top {
		  text-align: center;
		  padding: 20px;
		  color: #f37372;
		}
		
		.about-head {
		  font-size: 3.5em;
		  margin-bottom: 5px; /* Adjust the margin to reduce space between about-head and about-desc */
		}
		
		.about-desc {
		  font-size: 1.5em;
		  margin-top: 5px;
		  margin-bottom: 5px; /* Adjust the margin to reduce space between about-desc and button */
		}
		
		.about-view-reel {
		  background-color: #fffcf3;
		  color: black;
		  padding: 10px 50px;
		  font-size: 1em;
		  border: 1px solid;
		  cursor: pointer;
		  transition: background-color 0.3s, color 0.3s;
		  border-radius: 30px;
		}
		
		.about-view-reel:hover {
		  background-color: #f37372;
		  color: #fff;
		}
		
		.about-center-left{
			margin-left:50px;
		}
		.about-center-left-head {
		  font-size: 2.5em;
		  margin-bottom: 2px; /* Adjust the margin to reduce space between about-center-left-head and about-center-left-desc */
		  color: #f37372;
		}
		
		.about-center-left-desc {
		  font-size: 0.8em;
		  font-family: Arial;
		}
		
		.about-bottom {
		  text-align: center;
		  padding: 20px;
		  color: #f37372;
		}
		
		.about-bottom h2 {
		  font-size: 2em; /* Set the desired font size */
		}
    	
    </style>
</head>
<body>
	<div class="about-top" id="about-top">
		<p class="about-head">About</p>
		<p class="about-desc">Award-winning full-service</br>content creation studio.</p>
		<button class="about-view-reel">View reel</button>
	</div>
	<div class="about-center" id="team">
		<div class="about-center-left">
			<p class="about-center-left-head">The people</br>behind</br>Pink Elephant</br>Pictures</p>
			<p class="about-center-left-desc">We make films and campaigns that we care about.</br>From in-house passion projects to high-end</br>commercials with some of the best agencies and</br>production companies around. We've built a</br>community of established and upcoming talent</br>ready to do their best work yet.</p>
		</div>
		<div class="about-center-right">
		
		</div>
	</div>
	<div class="about-bottom" id="about-bottom">
		<h2>Awards and recognitions</h2>
		<div class="about-bottom-scroll">
			<%@ include file="awards.jsp" %>
		</div>
	</div>
<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>