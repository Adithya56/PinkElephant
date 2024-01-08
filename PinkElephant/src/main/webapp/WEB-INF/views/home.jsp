<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>

<head>
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
<%--     $(document).ready(function () {
        var slides = $('.slide');
        var currentSlide = 0;

        // Function to show the current slide
        function showSlide() {
    	    // Hide all slides
    	    slides.removeClass('active');
    	    // Show the current slide
    	    slides.eq(currentSlide).addClass('active');
    	    // Update dots
    	    updateDots();
    	}


        // Function to move to the next slide
        function nextSlide() {
            currentSlide++;
            if (currentSlide >= slides.length) {
                currentSlide = 0;
            }
            showSlide();
            // Call nextSlide after 3 seconds
            setTimeout(nextSlide, 3000);
        }

       // Function to create sliding dots
	    function createDots() {
	        var dotsContainer = document.getElementById('slideDots');
	        for (var i = 0; i < slides.length; i++) {
	            var dot = document.createElement('span');
	            dot.className = 'dot';
	            dot.setAttribute('data-slide', i);
	            dot.onclick = function () {
	                currentSlide = parseInt(this.getAttribute('data-slide'));
	                showSlide();
	            };
	            dotsContainer.appendChild(dot);
	        }
	        updateDots();
	    }
	
	    // Function to update sliding dots based on the current slide
	   function updateDots() {
		    var dots = document.getElementsByClassName('dot');
		
		    // Ensure that currentSlide is within bounds
		    if (currentSlide >= 0 && currentSlide < dots.length) {
		        for (var i = 0; i < dots.length; i++) {
		            dots[i].classList.remove('activeDot');
		        }
		
		        // Check if dots[currentSlide] is defined before adding the class
		        if (dots[currentSlide]) {
		            dots[currentSlide].classList.add('activeDot');
		        }
		    }
		}

	// Function to handle Services button click and redirect to services.jsp
	    function redirectToServicesPage() {
		    console.log("Redirecting to services.jsp");
		    window.location.href = "services";
		}


	    $('#services').on('click', function (e) {
	        e.preventDefault();
	        console.log("Services link clicked");
	        redirectToServicesPage();
	    });


        // Start the slideshow
        nextSlide();
        // Create dots after starting the slideshow
        createDots();
        
        
    });
         var customerSession = {
            customer: '<%= session.getAttribute("customer") %>'
        };
        function toggleMenu() {
            var menuCard = document.querySelector('.menu-card');
            var overlay = document.querySelector('.overlay');
            menuCard.classList.toggle('open');
            overlay.classList.toggle('open-overlay');
        }

        function closeMenu() {
            var menuCard = document.querySelector('.menu-card');
            var overlay = document.querySelector('.overlay');
            menuCard.classList.remove('open');
            overlay.classList.remove('open-overlay');
        } --%>
        
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
                    <button class="projects" onclick="#">Projects</button>
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
				<h2 class="divisions-heading">Our divisions</h2>
			</div>
			<div class="divisions-row">
				<div class="divisions-box-1">
					<div class="divisions-box-img">
					
					</div>
					<div class="divisions-box-title">
						<h3 class="divisions-category">Films</h3>
						<p>to the portfolio</p>
					</div>
				</div>
				<div class="divisions-box-2">
					<div class="divisions-box-img">
					
					</div>
					<div class="divisions-box-title">
						<h3 class="divisions-category">Webseries</h3>
						<p>to the portfolio</p>
					</div>
				</div>
				<div class="divisions-box-3">
					<div class="divisions-box-img">
					
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
		
	</main>
<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>