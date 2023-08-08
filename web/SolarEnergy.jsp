<%-- 
    Document   : SolarEnergy
    Created on : 2 May, 2023, 6:34:31 PM
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
//            response.sendRedirect("ShivanyaHome.jsp");
             value = "Not Logged In";
        }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <link rel="stylesheet" href="SolarEnergy.css?version=1">
        <title>SHIVANYA|ENTERPRISES</title>

        <!-- FONT LINKS -->
        <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Work+Sans:wght@250&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Varela+Round&display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <div class="container1">
                <img src="ShivanyaEnterprises-logo.png" id="shivanyaenterprises-logo" alt="Shivanya Enterprises Logo">
                <h1 id="branding">ShivanyaEnterprises.com</h1>
                <div class="container2">
                    <ul>
<!--                        <li><a href="homepage.jsp">HOME</a></li>
                        <li><a href="#about">ABOUT</a></li>-->
                        <li><a href="#services">ENQUIRY</a></li>
<!--                        <li><a href="#contact">CONTACT</a></li>
                        <li class="links open-login">LOGIN</li>-->
                    </ul>  
                </div>
            </div>
        </header>
        
        
        <!--enquiry form-->
        <center>
            <div class="container">
                <div class="title" style="font-weight:bolder">ENQUIRY FORM</div>
                <div class="content">
                    <form action="InsertSolarEnquiry" method="post">
                        <div class="user-details">
                            <div class="input-box">
                                <span class="details">USERNAME</span>
                                <input type="text" name="username" value="<%=value%>" disabled>
                            </div>
                            <div class="input-box">
                                <span class="details">EMAIL</span>
                                <input type="text" name="email" value="" required>
                            </div>
                            <div class="input-box">
                                <span class="details">CONTACT NUMBER</span>
                                <input type="text" name="contactno" value="" required>
                            </div>
                            <div class="input-box">
                                <span class="details">ADDRESS</span>
                                <input type="text" name="address" value="" required>
                            </div>
                            <div class="type-details">
                                <span class="details">SERVICE TYPE</span>
                                <input type="text" name="servicetype" list="typename"  value="" required>
                                <datalist id="typename">
                                    <option value="Power Backup">
                                    <option value="Solar Water Heater">
                                    <option value="Solar Water Pump">
                                    <option value="Offgrid Solar">
                                    <option value="Solar Street Lights">
                                    <option value="Containerised Solar">
                                </datalist>
                            </div>
                            <div class="type-details">
                                <span class="details">TYPE OF CUSTOMER</span>
                                <input type="text" name="customertype" list="typenames"value="" required>
                                <datalist id="typenames">
                                    <option value="Residential">
                                    <option value="Commercial">
                                    <option value="Industrial">
                                    <option value="Individual">
                                </datalist>
                            </div>
                            <div class="type-details">
                                <center><span style="margin-left: 87px;" class="details">ROOF MATERIAL</span></center>
                                <input style="width:142%" type="text" name="roofmaterial" list="roofs" value="" required>
                                <datalist id="roofs">
                                    <option value="Plain Tile">
                                    <option value="Composite Slate">
                                    <option value="Pan Tile">
                                    <option value="Flat Roof">
                                </datalist>
                            </div>

                            <div class="type-details">
                                <span style="margin-left:50px;" class="details"> ORIENTATION</span>
                                <input style="width:90%;margin-left:40px" type="text" name="orientation" list="roof" value="" required>
                                <datalist id="roof">
                                    <option value="North facing">
                                    <option value="South facing">
                                    <option value="East facing">
                                    <option value="West facing">
                                </datalist>
                            </div>    
                            <div class="solar-details">
                                <span class="solar-title">Is the installation address your home or work address?</span>
                                <input type="radio" value="Home" name="installation" id="dot-1">
                                <input type="radio" value="Work" name="installation" id="dot-2">

                                <div class="category">
                                    <label for="dot-1">
                                        <span class="dot one"></span>
                                        <span class="solar">Home</span>
                                    </label>
                                    <label for="dot-2">
                                        <span class="dot two"></span>
                                        <span class="solar">Work</span>
                                    </label>
                                </div>
                            </div>
                            
                            <div class="type-details">
                                <center><span style="font-size:20px;" class="details">Got Questions?</span></center>
                                <!--<input style="width:142%" type="textarea" name="details" value="" required>-->
                                <textarea style="height: 100px;resize: none;width:645px;" name="description" ></textarea>                               
                            </div>

<!--                            <textarea id="w3review" name="w3review" rows="4" cols="50">
                            At w3schools.com you will learn how to make a website. They offer free tutorials in all web development technologies.
                            </textarea>-->

                            <div class="button">
                                <input type="submit" value="Submit">
                            </div>

                        </div>
      </form>
    </div>
  </div>
        </center>
    </body>
</html>
