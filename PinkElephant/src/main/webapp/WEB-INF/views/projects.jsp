<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
        body {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        .posters {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

		.posters-top{
			margin-top: 50px;
			margin-bottom: -20px;
		}
		
		.posters-bottom {
			margin-top: -10px;
			margin-bottom: 20px;
		}
		
        .posters-top,
        .posters-bottom {
            display: flex;
            justify-content: space-around;
            padding: 20px;
            width: 100%;
            box-sizing: border-box;
        }

        .posters img {
            max-width: 100%;
            height: auto;
            display: block;
            margin-bottom: 0; /* No space between images */
        }
        #img1{
        	margin-left:150px;
        }
         #img3{
        	margin-right:150px;
        }
        #img4{
        	margin-left:200px;
        }
         #img6{
        	margin-right:200px;
        }
    </style>
</head>
<body>
    <div class="posters" id="projects">
        <div class="posters-top">
            <img id="img1" src="https://images.ottplay.com/images/hello-world-847.jpg?impolicy=ottplay-20210210&width=1200&height=675&format=webp&quality=50" alt="Image 1" style="height:200px ;width: 300px;">
            <img id="img2"  src="https://i.ytimg.com/vi/l9rjOPN7a38/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCrcHOLotR6i6IxFTQnCWE47-cVwA" alt="Image 3" style="height:200px ;width: 300px;">
            <img id="img3" src="https://d1vzdswwroofzl.cloudfront.net/wp-content/uploads/2016/03/Mudda-Pappu-Avakai-Telugu-YouTube-Series.jpg" alt="Image 4" style="height:200px ;width: 300px;">
        </div>
        <div class="posters-bottom">
            <img id="img4"  src="https://i.ytimg.com/vi/006lcgd6bIk/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLA8a448Y-1Onxd3EVOQ2xtMDBCFUQ" alt="Image 2" style="height:250px ;width: 300px;">
            <img id="img5" src="https://images.moviebuff.com/79ed47ff-66a3-4cea-8a42-61c78c7d5a9e?w=500" alt="Image 5" style="height:250px ;width:200px;">
            <img id="img6" src="https://i.ytimg.com/vi/K_qevXCW1uY/maxresdefault.jpg" alt="Image 6" style="height:250px ;width: 300px;">
        </div>
    </div>
</body>
</html>
