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