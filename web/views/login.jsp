<%-- 
    Document   : login
    Created on : Mar 5, 2024, 2:52:22 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Fruitables - Vegetable Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


    <!-- Customized Bootstrap Stylesheet -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet">
</head>
<body>
    <!--Header-->
    <jsp:include page="common/home/header.jsp"></jsp:include>


<section class="forms-section" style="margin-top:100px">
  <h1 class="section-title">Login & Sign up</h1>
  <div class="forms">
    <div class="form-wrapper is-active">
        <button type="button" class="switcher switcher-login" style="color: #81c408">
        Login
        <span class="underline"></span>
      </button>
        <form class="form form-login" action="./login?action=login" method="POST">
        <fieldset>
          <legend>Please, enter your email and password for login.</legend>
          <div class="input-block">
            <label for="login-email">Username</label>
            <input id="login-email" type="text" name="username" required>
          </div>
          <div class="input-block">
            <label for="login-password">Password</label>
            <input id="login-password" type="password" name="password" required>
          </div>
          <div style="color: red">
              ${errorLogin}
          </div>
        </fieldset>
        <button type="submit" class="btn-login">Login</button>
      </form>
    </div>
      
    <div class="form-wrapper">
      <button type="button" class="switcher switcher-signup" style="color: #81c408">
        Sign Up
        <span class="underline"></span>
      </button>
        <form class="form form-signup" action="./login?action=signup" method="POST">
        <fieldset>
          <legend>Please, enter your email, password and password confirmation for sign up.</legend>
          <div class="input-block">
            <label for="signup-username">Username</label>
            <input id="signup-email" type="text" name="username" required>
          </div>
          <div class="input-block">
            <label for="signup-email">E-mail</label>
            <input id="signup-email" type="text" name="email" required>
          </div>
          <div class="input-block">
            <label for="signup-password">Password</label>
            <input id="signup-password" type="password" name="password" required>
          </div>
        </fieldset>
          <div style="color: red">
              ${errorSignUp}
          </div>
        <button type="submit" class="btn-signup">Sign Up</button>
      </form>
    </div>
  </div>
</section>




        <!--Footer-->
    <jsp:include page="common/home/footer.jsp"></jsp:include>





        <!-- JavaScript Libraries -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/lib/easing/easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/waypoints/waypoints.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/lightbox/js/lightbox.min.js"></script>
    <script src="${pageContext.request.contextPath}/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
</body>  

</html>
