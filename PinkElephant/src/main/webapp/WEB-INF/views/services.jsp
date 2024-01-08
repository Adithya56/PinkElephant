<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html>
<head>
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
    body {
        font-family: AlbraTRIAL-Regular-Identity-H;
        margin: 0;
        padding: 0;
        background-color: #fffcf3; /* Set background color for the body */
    }

    .creative,
    .pre-production,
    .production,
    .post-production {
        margin-bottom: 10px;
    }

    .creative, .pre-production, .production, .post-production {
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .creative-l, .pre-production-l, .production-l, .post-production-l,
    .creative-r, .pre-production-r, .production-r, .post-production-r {
        flex: 1;
    }
    

    p {
        margin: 0;
    }

	.post-production-show,
	.production-show,
	.pre-production-show,
	.creative-show {
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    background-color: #fff;
	    color: #000;
	    border: 1px solid #000; /* Add a border to the button */
	    cursor: pointer;
	    display: flex;
	    align-items: center;
	    justify-content: center;
	    transition: background-color 0.3s ease; /* Add a smooth transition effect */
	}

	.fa-solid{
		color:#000;
	}
	
	 .post-production-show:hover, .production-show:hover, .pre-production-show:hover, .creative-show:hover {
        background-color: #f37271;
        color: #000;
    }
    .services-main {
	    display: flex;
	    justify-content: space-between;
	    align-items: stretch;
	    width: 100vw;
	}

 	.services-top {
        margin-bottom: 20px;
        padding: 0;
    }
    
    .services-top h1{
    	color: #f37271;
    	 margin-bottom: -20px; 
    }
     .services-top p{
     	font-size: 12px;
	}
		
	.services-left {
	    margin-left: 100px;
	    flex: 1;
	    padding: 10px;
	    box-sizing: border-box;
	}
	
	.services-right {
	    flex: 1;
	    box-sizing: border-box;
	}
	
	.services-bottom {
	    display: flex;
	    font-size: 25px;
	    flex-direction: column;
	}
	
	/* Add a wrapper for services-left and services-right */
	.services-wrapper {
	    display: flex;
	}
	
	.services-right {
	    background-color: #fff;
	    display: flex;
	    flex-direction: column;
	    align-items: center;
	    padding: 20px;
	    box-sizing: border-box;
	    margin-right: 100px;
	    background-repeat: no-repeat; /* Add this line to prevent background repetition */
	    border-radius: 30px;
	    background-size: cover; /* Add this line for background image to cover the container */
	}

	 .services-right-top,
        .services-right-bottom {
            text-align: left;
            margin-right: auto;
        }
	
	
	/* Apply media query for responsiveness */
	@media (max-width: 768px) {
	    .services-wrapper {
	        flex-direction: column;
	    }
	
	    .services-right {
	        width: 100%;
	    }
	}

</style>

    <script>
    $(document).ready(function () {
        // Initialize with "Creative" button clicked
        var parentClassName = 'Creative';
	    $(".creative-show").addClass("active").css("background-color", "#f37271");
	    $(".creative-show, .pre-production-show, .production-show, .post-production-show").on("click", function () {
	        // Remove active class from all buttons
	        $(".creative-show, .pre-production-show, .production-show, .post-production-show").removeClass("active").css("background-color", "#fff");
	
	        // Add active class to the clicked button and set its background color to pink
	        $(this).addClass("active").css("background-color", "#f37271");

	
	        parentClassName = capitalizeFirstLetter($(this).closest("div").parent().attr("class"));
	        $(this).css("background-color", "#f37271");
	        // Update content and background image when a button is clicked
	        $(".category-head").html(parentClassName);
	        setBackgroundImage(parentClassName);
	        getServices(parentClassName);
	    });
	
	    // Initial content and background image setup
	    $(".category-head").html(parentClassName);
	    setBackgroundImage(parentClassName);
	    getServices(parentClassName);
	    
	    function capitalizeFirstLetter(str) {
	        return str.charAt(0).toUpperCase() + str.slice(1);
	    }
	    
        function getServices(className) {
            // Assuming your backend sends an array list as a response
            $.ajax({
                type: "POST", // or "POST", depending on your server configuration
                url: "getServices", // Replace with your backend endpoint
                data: { className: className }, // Pass className as data
                success: function (response) {
                    displayDataOfServices(response, className);
                },
                error: function (error) {
                    console.error("Error fetching data from the server:", error);
                }
            });
        }

        function displayDataOfServices(data, className) {
            var container = $(".services-top-bottom");
            container.empty(); // Clear existing content

            // Iterate over the array list and append each item to the container
            for (var i = 0; i < data.length; i++) {
                var itemHTML = "<div class='" + className + "-item'>" + data[i] + "</div>";
                container.append(itemHTML);
            }
        }

        function setBackgroundImage(className) {
            var imageUrl;

            // Set image URL based on the clicked button
            switch (className) {
                case "Creative":
                    imageUrl = "./images/creative.jpg";
                    break;
                case "Pre-production":
                    imageUrl = "url_to_pre_production_image.jpg";
                    break;
                case "Production":
                    imageUrl = "url_to_production_image.jpg";
                    break;
                case "Post-production":
                    imageUrl = "url_to_post_production_image.jpg";
                    break;
                default:
                    imageUrl = ""; // Set a default image or leave it empty
            }

            // Set the background image of services-right
            $(".services-right").css("background-image", "url(" + imageUrl + ")");
        }
    });
</script>

	</head>
<body>
	<div class="services-main">
		<div class="services-left">
			<div class="services-top">
				<h1>What we offer</h1></br>
				<p>We do original video, photography, interactive formats,</br> and films, leveraging an agile, craft production approach,</br> in-house post-production facilities and a close-knit network</p>
			</div>
			<div class="services-bottom">
			    <div class="creative">
			        <div class="creative-l">
			            <p>Creative</p>
			        </div>
			        <div class="creative-r">
			            <button class="creative-show">></button>
			        </div>
			    </div>
			    <div class="pre-production">
			        <div class="pre-production-l">
			            <p>Pre-production</p>
			        </div>
			        <div class="pre-production-r">
			            <button class="pre-production-show">></button>
			        </div>
			    </div>
			    <div class="production">
			        <div class="production-l">
			            <p>Production</p>
			        </div>
			        <div class="production-r">
			            <button class="production-show">></button>
			        </div>
			    </div>
			    <div class="post-production">
			        <div class="post-production-l">
			            <p>Post-production</p>
			        </div>
			        <div class="post-production-r">
			            <button class="post-production-show">></button>
			        </div>
			    </div>
			</div>
		</div>
		<div class="services-right">
			<div class="services-right-top" style="text-align: left;">
	    		<h2 class="category-head"></h2>
			</div>
			
			<div class="services-right-bottom" style="text-align: left;">
			    <!-- Your content goes here -->
			</div>
		</div>
	</div>
</body>
<%@ include file="footer.jsp" %>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</html>