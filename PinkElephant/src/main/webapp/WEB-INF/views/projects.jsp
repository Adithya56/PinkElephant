<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.pinkelephant.model.user.Films" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <style>
    .about-bottom{
    margin-left: 50px;
    margin-right: 50px;
    }
    
        .about-bottom-scroll {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            margin: 100px 0;
        }

        .award-card {
            flex-basis: calc(33.33% - 10px); /* One-third of the available width with 10px margin between cards */
            margin: 5px;
            border-radius: 20px;
            overflow: hidden;
            text-align: center; /* Center the content within the .award-card */
        }

        .award-card-img {
            width: 70%; /* Use 100% width to make sure the image fills the container */
            height: auto;
            border-radius: 20px;
            margin: 0 auto; /* Center the image horizontally */
        }

        .award-card-content {
            padding: 10px;
            text-align: center;
            background-color: #f5f5f5;
            border-radius: 0 0 20px 20px;
        }

        h3 {
            margin: 0;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="about-bottom" id="about-bottom">
        <div class="about-bottom-scroll" id="awardsContainer">
            <%
                List<Films> awardsData = (List<Films>) request.getAttribute("awardsData");
                for (int i = 0; i < awardsData.size(); i++) {
                    Films award = awardsData.get(i);
                    String base64Image = award.getBase64Poster();
            %>
            <div class="award-card">
                <img src="data:image/jpeg;base64, <%= base64Image %>" class="award-card-img"/>
            </div>
            <% } %>
        </div>
    </div>
</body>
</html>
