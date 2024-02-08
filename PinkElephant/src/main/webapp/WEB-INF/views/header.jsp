<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="com.pinkelephant.model.user.SocialMedia"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Iterator"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">

	<title>Pink Elephant Pictures</title>
	<link rel="icon" href="./images/pinkelephanticon.jpeg" type="image/jpeg">
	
	<link rel="stylesheet" type="text/css" href="./css/home.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
	<script	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<script src="./js/home.js"></script>
</head>

<body>
	
	<% 
         List<SocialMedia> socialMediaList = (List<SocialMedia>)request.getAttribute("socialMedia"); 
         String phoneNumber=(String)request.getAttribute("phoneNumber");
         String address=(String)request.getAttribute("address");
     %>
	
	<div class="header-top">
		<!-- Logo on the top left -->
		<a href="/PinkElephant/"> <img
			src="./images/pinkelephanticon.jpeg" alt="logo" class="logo">
		</a>

		<!-- Menu button on the top right -->
		<button class="menu-button" onclick="toggleMenu()">
			<div class="menu-icon"></div>
			<div class="menu-icon"></div>
		</button>

		<!-- Menu card -->
		<div class="overlay"></div>
		<div class="menu-card">
			<!--  <button class="home-button" onclick="closeMenu">Home</button> -->
			<button class="close-button" onclick="closeMenu()">X</button>
			<div class="menu-card-content">
				<!-- Your buttons and content go here -->
				<div class="menu-card-top">
					<a href="services" id="services">Services</a> <a href="about"
						id="about">About</a> <a href="about#team">Team</a> <a href="#">Blog</a>
					<a href="/PinkElephant/">Home</a>
				</div>
				<div class="menu-card-center">
					<p>
						<%=phoneNumber %></br>hello@pinkelephant.com</br><%=address %>
					</p>
				</div>
				<div class="menu-card-bottom">
					<% 
			            if(socialMediaList != null) {
			                Iterator<SocialMedia> iterator = socialMediaList.iterator();
			                while(iterator.hasNext()) {
			                    SocialMedia socialMedia = iterator.next();
       				 %>
						<a href="<%= socialMedia.getUrl() %>" target="_blank">
							<button><%= socialMedia.getPlatform() %></button>
						</a>
					<%
			                }
			            }
        			%>
				</div>
			</div>
		</div>
	</div>
</body>

<script	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</html>