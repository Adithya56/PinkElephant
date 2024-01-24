<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.pinkelephant.model.user.Award" %>
<%@ page import="java.util.Base64" %>
<%@ page import="java.nio.charset.StandardCharsets" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
 <style>
    .about-bottom-scroll {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-around;
        margin: 20px 0;
    }

    .award-card {
        flex-basis: calc(25.33% - 20px); /* 3 cards in each row with 20px margin between them */
        margin: 10px;
        border-radius: 20px;
        overflow: hidden;
       /*  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); */
    }

    .award-card-img {
        width: 100%;
        height: 150px;
        border-radius: 20px;
    }

    .award-card-content {
        padding: 10px;
        text-align: center;
        background-color: white;
        color:#000;
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
                List<Award> awardsData = (List<Award>) request.getAttribute("awardsData");
                for (Award award : awardsData) {
                    String base64Image = award.getBase64Image();
            %>
            <div class="award-card">
                <img src="data:image/jpeg;base64, <%= base64Image %>" width="240" height="200" class="award-card-img"/>
                <div class="award-card-content">
                    <h3><%= award.getTitle() %></h3>
                </div>
            </div>
            <% } %>
        </div>
    </div>
</body>
</html>
