<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Certificate</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <style>
    @import url('https://fonts.googleapis.com/css?family=Open+Sans|Raleway:400,700|Merriweather:400,700');

    body {
      padding: 20px;
      background-color: #f4f4f4;
      font-family: 'Open Sans', sans-serif;
    }

    .pm-certificate-container {
      width: 800px;
      margin: 0 auto;
      background-color: white;
      padding: 30px;
      border: 5px solid #333; /* Outer border */
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
      position: relative;
      text-align: center;
    }

    .pm-certificate-header {
      margin-bottom: 30px;
    }

    .pm-certificate-header img {
      max-width: 150px;
      height: auto;
      margin-bottom: 20px;
    }

    .pm-certificate-title {
      font-size: 36px;
      font-weight: bold;
    }

    .pm-certificate-body {
      padding: 20px;
      margin-top: 20px;
    }

    .pm-name-text {
      font-size: 24px;
      font-weight: bold;
    }

    .pm-earned-text {
      font-size: 20px;
      font-style: italic;
    }
  </style>
</head>
<body>
<div class="container pm-certificate-container">
  <div class="pm-certificate-header">
    <img src="${pageContext.request.contextPath}/images/elearninglogo.png" alt="Logo"> <!-- Replace with your logo path -->
    <div class="pm-certificate-title">
      <h2>E-Learning Institute</h2>
    </div>
  </div>

  <div class="pm-earned-text mt-4">
    This is to certify that
  </div>

  <div class="pm-certificate-body">
    <div>
      <%
        HttpSession mark = (HttpSession) request.getSession();
        String coursenm = mark.getAttribute("CourseName").toString();
        String name = mark.getAttribute("Sname").toString();
      %>
      <div class="pm-name-text">
        <%= name %>
      </div>
      <div class="pm-earned-text mt-4">
        has successfully completed <%= coursenm %> course.
      </div>
    </div>
  </div>
</div>
</body>
</html>
