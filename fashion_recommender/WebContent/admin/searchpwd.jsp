<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<base href="${pageContext.request.contextPath}/admin/" >
    <title>Forgot Password | </title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="shortcut icon" href="img/logo1.ico"/>
    <!--Global styles -->
    <link type="text/css" rel="stylesheet" href="css/components.css"/>
    <link type="text/css" rel="stylesheet" href="css/custom.css"/>
    <!--End of Global styles -->
    <!--Plugin styles-->
    <link type="text/css" rel="stylesheet" href="css/bootstrapValidator.min.css"/>
    <link type="text/css" rel="stylesheet" href="css/animate.css"/>
    <!--End of Plugin styles-->
    <link type="text/css" rel="stylesheet" href="css/login.css"/>
</head>
<body>
<div class="preloader" style=" position: fixed;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  z-index: 100000;
  backface-visibility: hidden;
  background: #ffffff;">
    <div class="preloader_img" style="width: 200px;
  height: 200px;
  position: absolute;
  left: 48%;
  top: 48%;
  background-position: center;
z-index: 999999">
        <img src="img/loader.gif" style=" width: 40px;" alt="loading...">
    </div>
</div>
<div class="container wow fadeInDown" data-wow-delay="0.5s" data-wow-duration="2s">
    <div class="row">
        <div class="col-lg-8 push-lg-2 col-md-10 push-md-1 col-sm-10 push-sm-1 login_top_bottom">
            <div class="row">
                <div class="col-lg-8 push-lg-2 col-md-10 push-md-1 col-sm-12">
                    <div class="login_logo login_border_radius1">
                        <h3 class="text-xs-center">
                            <!--  <img src="img/logow.png" alt="josh logo" class="admire_logo">--><span class="text-white">  &nbsp;<br/>
                                Your username & password</span>
                        </h3>
                    </div>
                    <c:forEach items="${sessionScope.pwdlist}" var="i">
                    
                    <div class="bg-white login_content login_border_radius">
                        
                            <div class="form-group">
                            <input type="hidden" name="flag" value="login" >
                                <label for="username"> Username</label>
                                <div class="input-group">
                         				${i.username }
                                    <span class="input-group-addon">
                                        <i class="fa fa-key text-primary"></i>
                                    </span>
                                    
                                </div>
                            </div>
                            <!--</h3>-->
                            <div class="form-group">
                            <input type="hidden" name="flag" value="login" >
                                <label for="password"> Password</label>
                                <div class="input-group">
                         			${i.password}
                                    <span class="input-group-addon">
                                        <i class="fa fa-key text-primary"></i>
                                    </span>
                                    
                                </div>
                            </div>
                            
                        
                        
                                                
                    </div>
                    </c:forEach>
                    
                    <div class="form-group">
                                <div class="col-sm-9">
                                     <a href="addLogin.jsp" class="text-primary login_hover"><b>Back to Log In</b></a>
                                </div>
                            </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- global js -->
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/tether.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- end of global js-->
<!--Plugin js-->
<script type="text/javascript" src="js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="js/wow.min.js"></script>
<!--End of plugin js-->
<script type="text/javascript" src="js/login.js"></script>
</body>

</html>
