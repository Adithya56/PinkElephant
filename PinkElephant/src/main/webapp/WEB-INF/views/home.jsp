<!DOCTYPE html>
<html>

<head>
    <title>Pink Elephant</title>
    
	<link rel="stylesheet" type="text/css" href="./css/home.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <!-- <script src="./js/home.js"></script> -->
 	<script src="https://code.jquery.com/jquery-3.7.0.min.js" integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g=" crossorigin="anonymous"></script>
  	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

    <script>
    $(document).ready(function () {
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



        // Start the slideshow
        nextSlide();
        // Create dots after starting the slideshow
        createDots();
        
        
    });
        <%--  var customerSession = {
            customer: '<%= session.getAttribute("customer") %>'
        }; --%>
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
        }
    </script>
</head>

<body>

    <header>
    <div class="header">
		<div class="header-top">
            <!-- Logo on the top left -->
           	<img src="./images/pinkelephantlogo.png" alt="logo" class="logo">

          	<!-- Menu button on the top right -->
			<button class="menu-button" onclick="toggleMenu()">
			    <div class="menu-icon"></div>
			    <div class="menu-icon"></div>
			</button>
  
		 	<!-- Menu card -->
	        <div class="overlay"></div>
	            <div class="menu-card">
	                <button class="close-button" onclick="closeMenu()">X</button>
	                <div class="menu-card-content">
		                <!-- Your buttons and content go here -->
		                <div class="menu-card-top">
			                <a href="#">Services</a>
			                <a href="#">About</a>
			                <a href="#">Team</a>
			                <a href="#">Blog</a>
		                </div>
		                <div class="menu-card-center">
		                	<p>+91 9574634568</br>hello@pinkelephant.com</br>Madhapur, Hyderabad</p>
		                </div>
		                <div class="menu-card-bottom">
			                <button>Vimeo</button>
			                <button>Instagram</button>
			                <button>Facebook</button>
			                <button>Youtube</button>
			            </div>
	            	</div>
	            </div>
          	</div>


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
			                        <img src="https://www.stuff.tv/wp-content/uploads/sites/2/2021/04/Stuff-Best-Laptop-Lead.png"  alt="Slide 1" onclick="#" style="height:400px; width:600px;"/>
			                    </div>
			                    <div class="slide">
			                        <img src="https://static1.makeuseofimages.com/wordpress/wp-content/uploads/2022/05/Apple-Earbuds-and-Sony-headphones-side-by-side.jpg" alt="Slide 2" onclick="#" style="height:400px; width:600px;"/>
			                    </div>
			                    <div class="slide">
			                        <img src="https://chamberhill.com/wp-content/uploads/2021/10/pexels-cottonbro-3945683-scaled.jpg" alt="Slide 3" onclick="#" style="height:400px; width:600px;"/>
			                    </div>
			                    <div class="slide">
			                        <img src="https://assets.thehansindia.com/h-upload/2022/04/30/1600x960_1289668-mobiles-11.jpg" alt="Slide 4" onclick="#" style="height:400px; width:600px;"/>
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

    <!-- Spinner -->
    <div id="spinner-container">
        <div id="spinner"></div>
    </div>


<br>
<div class="footer-wrapper">
    <div class="footer">
        <div class="left">
            <!-- Your icon on the left -->
            <img src="/images/pinkelephantlogo.jpg alt="pinkelephant">
        </div>
        <div class="center">
            <!-- Your centered text -->
            <p>
                <a href="#">ABOUT US</a> 
                <a href="#">TEAM</a> 
                <a href="#">PROJECTS</a> 
                <a href="#">HIRING</a> 
                <a href="#">GET IN TOUCH</a>
            </p>
        </div>
        <div class="right">
            <!-- Your social media icons on the right -->
            <a href="#" target="_blank"><i class="fab fa-facebook fa-2x"></i></a>
		    <a href="#" target="_blank"><i class="fab fa-twitter fa-2x"></i></a>
		    <a href="#" target="_blank"><i class="fab fa-instagram fa-2x"></i></a>
		    <a href="#" target="_blank"><i class="fab fa-youtube fa-2x"></i></a>
            <!-- Add more social media icons as needed -->
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>