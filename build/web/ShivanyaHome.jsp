<%-- 
    Document   : ShivanyaHome
    Created on : 1 May, 2023, 11:03:07 AM
    Author     : deshp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <link rel="stylesheet" href="ShivanyaHome.css?version=1">
        <title>SHIVANYA|ENTERPRISES</title>

        <!-- FONT LINKS -->
        <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@250&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
    </head>
    <body>

        <!--header section-->

        <header>
            <div class="container1">
                <img src="ShivanyaEnterprises-logo.png" id="shivanyaenterprises-logo" alt="Shivanya Enterprises Logo">
                <h1 id="branding">ShivanyaEnterprises.com</h1>
                <div class="container2">
                    <ul>
                        <li><a href="homepage.jsp">HOME</a></li>
                        <li><a href="#about">ABOUT</a></li>
                        <li><a href="#services">SERVICES</a></li>
                        <li><a href="#contact">CONTACT</a></li>
                        <li class="links open-login">LOGIN</li>
                    </ul>  
                </div>
            </div>
        </header>



        <dialog class="loginForm" id="loginForm">
            <li class="close-login">&times;</li>
            <center><h1>LOGIN</h1></center>
            <hr style="width:50%;height:2px;color:black;background-color:black;margin-bottom:40px">
            
            <div>
            <form action="CheckLogin" method="post" id="myform">
                <center>
                    
                <div class="row" style="margin-left:20px">
                    <div class="input-field col s11" style="padding:0px 13px;margin:0px;">
                        <input name="username" type="text" class="validate">
                        <label class="active" style="font-weight:900;font-size: 20px;color: #123c69;">Username</label>
                    </div>
                </div>

                <div class="row" style="margin-left:20px">
                    <div class="input-field col s11" style="padding:0px 13px;margin:0px;">
                        <input name="password" type="password" class="validate">
                        <label class="active" style="font-weight:900;font-size: 20px;color: #123c69;">Password</label>
                    </div>
                </div>

                <button  class="btn waves-effect waves-light" type="submit" style="margin-bottom: 20px;background-color: #123c69">Submit</button>
                <br><b>New User?</b><a class="openSignup"> Sign Up</a>
                </center>
            </form>
                </div>
            <div class="loader" style="display:none">
                            <div class="progress">
                                <div class="indeterminate"></div>
                            </div>
                        </div>

            
        </dialog>
        
        <dialog id="signupForm">
                            <button class="closeSignup">&times;</button>
                            <center><h1>SignUp</h1></center>
                            <hr style="width:40%;height:2px;color:black;background-color:black;margin-bottom:40px;">
                            <div>
            <form action="Signup" method="post" id="myform">
                <center>
                    
                <div class="row" style="margin-left:20px">
                    <div class="input-field col s11" style="padding:0px 13px;margin:0px;">
                        <input name="firstname" type="text" class="validate">
                        <label class="active" style="font-weight:900;font-size: 20px;color: #123c69;">First Name</label>
                    </div>
                </div>

                <div class="row" style="margin-left:20px">
                    <div class="input-field col s11" style="padding:0px 13px;margin:0px;">
                        <input name="lastname" type="text" class="validate">
                        <label class="active" style="font-weight:900;font-size: 20px;color: #123c69;">Last Name</label>
                    </div>
                </div>
                    
                    <div class="row" style="margin-left:20px">
                    <div class="input-field col s11" style="padding:0px 13px;margin:0px;">
                        <input name="username" type="text" class="validate">
                        <label class="active" style="font-weight:900;font-size: 20px;color: #123c69;">Username</label>
                    </div>
                </div>

                <div class="row" style="margin-left:20px">
                    <div class="input-field col s11" style="padding:0px 13px;margin:0px;">
                        <input name="password" type="password" class="validate">
                        <label class="active" style="font-weight:900;font-size: 20px;color: #123c69;">Password</label>
                    </div>
                </div>
                    
                    <div class="row" style="margin-left:20px">
                    <div class="input-field col s11" style="padding:0px 13px;margin:0px;">
                        <input name="cpassword" type="password" class="validate">
                        <label class="active" style="font-weight:900;font-size: 20px;color: #123c69;">Confirm Password</label>
                    </div>
                </div>
                    
                    <div class="row" style="margin-left:20px">
                    <div class="input-field col s11" style="padding:0px 13px;margin:0px;">
                        <input name="contactno" type="text" class="validate">
                        <label class="active" style="font-weight:900;font-size: 20px;color: #123c69;">Contact No</label>
                    </div>
                </div>

                <div class="row" style="margin-left:20px">
                    <div class="input-field col s11" style="padding:0px 13px;margin:0px;">
                        <input name="email" type="email" class="validate">
                        <label class="active" style="font-weight:900;font-size: 20px;color: #123c69;">E-mail</label>
                    </div>
                </div>

                <button  class="btn waves-effect waves-light" type="submit" style="margin-bottom: 20px;background-color: #123c69">Submit</button>
                
                </center>
            </form>
                </div>
                            
                        </dialog>


        <section id="purposes">
            <div class="container1">
                <h1>You've got us? Sit Back!<br>We believe in reducing costs for you!</h1>


                <aside>
                    <div class="branding">
                        <h2>SHIVANYA <br>ENTERPRISES</h2>
                        <hr>
                        <p>Marketing & Consulting</p>
                    </div>
                    <!--Contains animations-->
                    <div class="animationcontainer">
                        <div class="square">
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                        </div><br><br><br>
                        <div class="square">
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                        </div>
                        <div class="square">
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                        </div><br><br><br>
                        <div class="square">
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                        </div>
                        <div class="square">
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                        </div>
                        <div class="square">
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                            <div class="square6"></div>
                        </div>
                    </div> 
                </aside>
            </div>
        </section>
        
        <section id="dealsin">
            
                <h1>Deals In</h1>
                <hr>
                <div class="flexboxes">
                    <div class="box">
                        <h1><a href="#">Real Estate Consultancy</a></h1>
                        <img src="real-estate.png">
                    </div>
                    <div class="box">
                        <h1><a href="ConstructionMaterial.jsp">Eco-friendly Construction Material</a></h1>
                        <img src="brickwall.png">
                    </div>
                    <div class="box">
                        <h1><a href="SolarEnergy">Solar Energy <br> Solutions</a></h1>
                        <img src="solar-energy.png">
                    </div>
                </div>
            
        </section>
        <section id="about">
        <div class="container1">
            <h1>About Us</h1>
            <hr>
            
                
                <p>
                    ${aboutp1}
                    </p><p>
                        ${aboutp2}
                </p>
            
        </div>
    </section>
        
        <section id="services">
        <div class="container1">
            <h1>Services</h1>
            <hr>
            <p>
                ${services}<br><br>
            </p>
            <div class="flexboxes">
                <div class="box">
                    1.<br> ${service1}
                </div>
                <div class="box">
                    2.<br> ${service2}
                </div>
                <br>
                <div class="box">
                    3.<br>${service3}
                </div>
                <div class="box">
                    4.<br>${service4}
                </div>
                <br>
                <div class="box">
                    5.<br>${service5}
                </div>
            </div>  
        </div>
    </section>
        
        <section id="contact"class="footer">
    <center>
    <h1>Contact us</h1>
    <hr>
    <div class="imgLinks">
    <h1>Our Links: </h1>
                    <a href=""><img src="gmail_logo.png"></a>
                    <a href=""><img src="facebook_logo.png"></a>
                    <a href=""><img src="instagram_logo.png"></a>
                    <a href=""><img src="twitter_logo.png"></a>
                    <a href=""><img src="linkedin_logo.png"></a>
    </div>
    </center>
    <div class="footerBottom">
    <div class="footerDetails">
    <p><u>Address:</u> ${address}</p>
    <p><u>Contact No.: </u>${contactno}</p>
    <p><u>Email-id: </u>${email}</p>
    </div>
    <img  src="footer-art.png" class="footerArt">
    </div>
</section>

        <script src="https://code.jquery.com/jquery-3.6.4.min.js" 
                integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" 
                crossorigin="anonymous"></script><!-- comment -->
        
        <script src="ShivanyaHome.js">
            
        </script>
    </body>
</html>
