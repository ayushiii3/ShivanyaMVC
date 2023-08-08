<%-- 
    Document   : LoggedIn
    Created on : 1 May, 2023, 3:34:24 PM
    Author     : deshp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        response.addHeader("Pragma", "no-Cache");
        response.addHeader("Cache-Control", "no-Store");

        response.setHeader("Pragma", "no-Cache");
        response.setHeader("Cache-Control", "no-Store");

        String value = (String) session.getAttribute("username");

        if (value == null) {
            response.sendRedirect("ShivanyaHome.jsp");
        }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHIVANYA|ENTERPRISES</title>
        <style>
            body{
    font-family: 'Work Sans', sans-serif;
    font-size: 15px;
    line-height: 1.5;
    padding:0;
    margin:0;
    background-color: #ffffff;
}

/*...................................... global */

.container1{
    width:90%;
    margin: auto;
    overflow: hidden;
}

ul{
    margin:0;
    padding: 0;
}

h1{
    margin:0px;
    padding:0;
}

h2 {
    margin:0px;
    padding:0px;
}
            /* .....................................header */
header{
    background:#ffffff;
    color: rgb(0, 0, 0);
    padding-top:10px;
    min-height:70px;
    border-bottom: black 2px solid;
}

#shivanyaenterprises-logo{
    height:70px;
    width: auto;
    float:left;
    margin-bottom: 10px;
}

#branding{
    font-size:25px;
    font-weight: bolder;
    width:290px;
    height: 40px;
    float:left;
    margin-top:25px;
    margin-left:20px;
}

header ul{
    margin-bottom: 30px;
}

header .hello {
    color: rgb(0, 0, 0);
    text-decoration: none;
    font-size: 16px;
}


header .hello:link,
header .hello:visited{
    color: rgb(0, 0, 0);
    border: 2px rgb(255, 255, 255) solid;
    padding: 10px;
    border-radius:5%;
    transition: border .5s;
}

header .hello:hover,
header .hello:active{
    border: 2px rgb(0, 0, 0) solid;
}

header li {
    display:inline;
    padding: 0 5px 0 5px;
    margin:1px;
    font-weight:bolder;
}

header .container2{
    float: right;
    /*margin-top:25px;*/
    /* animation: move-down 1s; */
    
}

.links{
    display:inline;
    margin-left: 10px;
    padding: 12px 8px 12px 8px;
    background-color: rgb(191, 214, 240);
    border:2px black solid;
    /*border-radius:5px;*/
    font-weight: bold;
    transition: border .3s;
    transition: background-color .7s;
}
.links:hover{
    border:2px black solid;
    /*border-radius:5px;*/
    cursor: pointer;
    background-color:#123c69;
    color:white;
}

@keyframes move-down{
    from{transform: translateY(-50px);}
    to{transform: translateY(0px);}
}
/*--------------------------------profile menu*/
.display-picture{
  margin-left: auto;
  
}
.display-picture img{
    margin-bottom:-15px;
  width: 50px;
  border-radius: 50%;
  border:2px solid #fff;
}
.display-picture img:hover{
border:2px solid #000;
}

.card{
  transition: 0.5s ease;
}

.card ul{
  display: flex;
  align-items: flex-start;
  flex-direction: column;
  background: #000;
  position: absolute;
  top: 4rem;
  right:3rem;
border-radius: 10px;
padding: 10px 50px 10px 20px;
list-style-type: none;
}
.card ul li{
 
  padding: 5px 0;
  color: #FFF;
  font-size: 14px;
}
.hidden{
  display: none;
}
a{
  text-decoration: none;
  color:#fff;
}


/* -----------purposes section--------- */

#purposes{
    min-height: 450px;
    background-color: rgb(191, 214, 240);
}

#purposes .container1{
    min-height: 450px;
    /* background-color: #b9e7f1; */

}

#purposes h1{
    float:left;
    width:850px;
    height:auto;
    font-size: 50px;
    font-weight:900;
    /* font-family: 'Pacifico'; */
    padding-top: 20px;
    margin-top:100px;
    animation: move-heading 1.5s;
}
@keyframes move-heading{
    from{transform:translateX(-500px);}
    to{transform:translateX(0px);}
}

.listcontainer{
    margin:0;
    width:710px;
    height:auto;
}

.arrow{
    margin-top:10px;
    height:40px;
    width:auto;
    float:left;
}

#purposes li{
    list-style-type: none;
    font-weight:bolder;
    font-size:40px;
    margin:20px;
    padding-left:40px;
    transition: transform .5s ease;
    transform: translateX(-5px);
}

#purposes li:hover{
    transform: translateX(40px);
}

aside{
    float:right;
}

#purposes .branding{
    margin-top:30px;
    margin-right: 19px;
    width:350px;
    font-size:30px;
    text-align:center;
    font-family: 'Varela Round', sans-serif;
    color:black;
}

aside h2{
    font-weight: 500;
}

#purposes hr{
    height:3px;
    background:black;
    border:none;
    border-radius:5px;
    margin:0;
}

#purposes .branding p{
    font-size: 25px;
    margin-top:10px;
    margin-bottom:10px;
    font-family: 'Work Sans', sans-serif;
    font-weight:600;
}

.animationcontainer{
    float:right;
    margin-right:40px;
}

.square{
    display:inline-block;
    height:55px;
    width:100px;
    border: 0px;
    background-color: #123c69;
    margin-top:0px;
    margin-left:2px;
    float:right;
    animation: twirl 2s infinite ;
}

@keyframes twirl{
    0% {
        transform:rotateY(0);  
    }
    100% {
        transform: rotateY(360deg);  
    }
}

.square6{
    margin-top:2px;
    margin-left:4px;
    background-color: rgb(255, 255, 255);
    display: inline-block;
    height:21px;
    width:25px;
    animation:twirl1 3s infinite;
}

@keyframes twirl1{
    0% {
        transform:rotateX(0);
    }
    100% {
        transform: rotateX(360deg);
    }
}

/* -------------------deals in section------------------------ */

#dealsin h1{
    text-align:center;
    font-weight: bold;
    font-size: 30px;
    padding: 20px 0 5px 0;
}

#dealsin hr{
    width:150px;
    height:3px;
    border:none;
    border-radius:5px;
    background: black;
    text-align:center;
}

.flexboxes {
    display:flex;
    color:black;
}

#dealsin .flexboxes .box{
    margin:4% 5%;
    border-radius:3px;
    text-align: center;
    flex:1;
    background:rgb(191, 214, 240);
    box-shadow: -20px 20px 0px #123c69; 
}


#dealsin .flexboxes h1 a {
    font-weight: bold;
    border:none;
    color:black;
    text-decoration: none;
}



        </style>
    </head>
    <body>
        <header>
            <div class="container1">
                <img src="ShivanyaEnterprises-logo.png" id="shivanyaenterprises-logo" alt="Shivanya Enterprises Logo">
                <h1 id="branding">ShivanyaEnterprises.com</h1>
                <div class="container2">
                    <ul>
                        <li><a class="hello" href="homepage.jsp">HOME</a></li>
                        <li><a class="hello"href="#about">ABOUT</a></li>
                        <li><a class="hello"href="#services">SERVICES</a></li>
                        <li><a class="hello"href="#contact">CONTACT</a></li>
                        <li><a href="#" class="display-picture"><img src="profile-logo.jpg" alt=""></a></li>
                        
                    </ul>  
                </div>
            </div>
        </header>
        <div class="card hidden"><!--ADD TOGGLE HIDDEN CLASS ATTRIBUTE HERE-->
                            <ul><!--MENU-->
                                <li><a href="Dashboard">DASHBOARD</a></li>
                                <li><a href="#">MY ENQUIRIES</a></li>
                                <li><a href="#">MY ORDERS</a></li>
                                <li><a href="DestroySession">LOGOUT</a></li>
                            </ul>
                        </div>
        
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
        
        <script>
            let card = document.querySelector(".card"); //declearing profile card element
            let displayPicture = document.querySelector(".display-picture"); //declearing profile picture

            displayPicture.addEventListener("click", function() { //on click on profile picture toggle hidden class from css
            card.classList.toggle("hidden")})
        </script>

    </body>
</html>
