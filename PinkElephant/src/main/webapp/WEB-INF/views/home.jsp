<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>Pink Elephant</title>
	<link rel="stylesheet" type="text/css" href="./css/home.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
  	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
	<script>
		function scrollToProjects() {
		    // Use JavaScript to scroll to the "projects" section
		    var projectsSection = document.getElementById('projects');
		    
		    if (projectsSection) {
		        projectsSection.scrollIntoView({ behavior: 'smooth' });
		    }
		}
	</script>
</head>

<body>
    <header>
    <div class="header">
			<!-- Combined header-left and header-right in a single div -->
          	<div class="header-content">
                <!-- Left side of the header with some content -->
                <div class="header-left">
                    <p>We are filmmakers,</br> storytellers and </br> adventurers.</p>
                    <button class="projects" onclick="scrollToProjects()">Projects</button>
                </div>

	            <!-- Right side of the header with slides -->
	            <div class="header-right">
			        <div class="container">
			            <!-- Slideshow -->
			            <div id="transitionSlideShowPage">
			                <div class="slideshow-container">
			                    <div class="slide active">
			                        <img src="https://images.ottplay.com/images/hello-world-847.jpg?impolicy=ottplay-20210210&width=1200&height=675&format=webp&quality=50"  alt="Slide 1" onclick="#" style="height:300px; width:500px;"/>
			                    </div>
			                    <div class="slide">
			                        <img src="https://i.ytimg.com/vi/006lcgd6bIk/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLA8a448Y-1Onxd3EVOQ2xtMDBCFUQ" alt="Slide 2" onclick="#" style="height:300px; width:500px;"/>
			                    </div>
			                    <div class="slide">
			                        <img src="https://i.ytimg.com/vi/l9rjOPN7a38/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCrcHOLotR6i6IxFTQnCWE47-cVwA" alt="Slide 3" onclick="#" style="height:300px; width:500px;"/>
			                    </div>
			                    <div class="slide">
			                        <img src="https://d1vzdswwroofzl.cloudfront.net/wp-content/uploads/2016/03/Mudda-Pappu-Avakai-Telugu-YouTube-Series.jpg" alt="Slide 4" onclick="#" style="height:300px; width:500px;"/>
			                    </div>
			                    <!-- Add sliding dots container within the slideshow container -->
			                    <div id="slideDots"></div>
			                </div>
			            </div>
			         </div>
	        	</div>
	        </div>
	    </div>
    </header>
	<main>
		<div class="aboutus-main">
			<div class="aboutus-content">
				<div class="aboutus-left">
					<div class="aboutus-title"><h2>About Us</h2></div>
					<div class="aboutus-desc"><p>We make films and campaigns that we care about. From in-house passion projects to
					high-end commercials with some of the best agencies and production companies around.
					We've built a community of established and upcoming talent ready to do their best work yet.</p>
					</div>
					<div class="aboutus-viewmorebtn">
						<button class="viewmorebtn">view more</button>
					</div>
				</div>
				<div class="aboutus-right">
					<img alt="pinkelephanticon" src="./images/pereel.png" >
				</div>
			</div>
		</div>
		
		<div class="divisions-main">
			<div class="divisions-top">
				<h2 class="divisions-heading">Our Divisions</h2>
			</div>
			<div class="divisions-row">
				<div class="divisions-box-1">
					<div class="divisions-box-img">
						<img src="https://i.ytimg.com/vi/l9rjOPN7a38/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCrcHOLotR6i6IxFTQnCWE47-cVwA" alt="films" style="height: 200px ;width: 300px;">
					</div>
					<div class="divisions-box-title">
						<h3 class="divisions-category">Films</h3>
						<p>to the portfolio</p>
					</div>
				</div>
				<div class="divisions-box-2">
					<div class="divisions-box-img">
						<img id="img3" src="https://d1vzdswwroofzl.cloudfront.net/wp-content/uploads/2016/03/Mudda-Pappu-Avakai-Telugu-YouTube-Series.jpg" alt="Image 4" style="height:200px ;width: 300px;">
					</div>
					<div class="divisions-box-title">
						<h3 class="divisions-category">Webseries</h3>
						<p>to the portfolio</p>
					</div>
				</div>
				<div class="divisions-box-3">
					<div class="divisions-box-img">
						<img id="img2"  src="https://images.ottplay.com/images/hello-world-847.jpg?impolicy=ottplay-20210210&width=1200&height=675&format=webp&quality=50" alt="Image 3" style="height:200px ;width: 300px;">
					</div>
					<div class="divisions-box-title">
						<h3 class="divisions-category">Experiment Films</h3>
						<p>to the portfolio</p>
					</div>
				</div>
			</div>
		</div>
		
		<div class="story-main">
			<div class="story-left">
				<p>There is a story behind every door.</p>
			</div>
			<div class="story-right">
				<button class="idea">Have any idea?</button>
			</div>
		</div>
		<%@ include file="projects.jsp" %>
	</main>
<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>