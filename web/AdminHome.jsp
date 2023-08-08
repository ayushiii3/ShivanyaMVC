<%-- 
    Document   : AdminHome
    Created on : 7 May, 2023, 1:20:57 PM
    Author     : deshp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.addHeader("Pragma", "no-Cache");
        response.addHeader("Cache-Control", "no-Store");

        response.setHeader("Pragma", "no-Cache");
        response.setHeader("Cache-Control", "no-Store");

        String username = (String) session.getAttribute("username");

        if (username == null) {
            response.sendRedirect("LoadHome");
        }
        
    String password=(String)session.getAttribute("password");
    String aboutp1 = "";
                String aboutp2 = "";
                String services = "";
                String service1 = "";
                String service2 = "";
                String service3 = "";
                String service4 = "";
                String service5 = "";
                String address = "";
                String contactno = "";
                String email = "";
    
Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shivanyamvc", "root", "ayushi");
                        PreparedStatement p = con.prepareStatement("select * from homedetails");
                        ResultSet rs = p.executeQuery();
                        if(rs.next()){
                            
                            aboutp1 = rs.getString(2);
                aboutp2 = rs.getString(3);
                services = rs.getString(4);
                service1 = rs.getString(5);
                service2 = rs.getString(6);
                service3 = rs.getString(7);
                service4 = rs.getString(8);
                service5 = rs.getString(9);
                address = rs.getString(10);
                contactno = rs.getString(11);
                email = rs.getString(12);

    }  
                
%> 
<!DOCTYPE html>
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


header a {
    color: rgb(0, 0, 0);
    text-decoration: none;
    font-size: 16px;
}


header a:link,
header a:visited{
    color: rgb(0, 0, 0);
    border: 2px rgb(255, 255, 255) solid;
    padding: 10px;
    border-radius:5%;
    transition: border .5s;
}

header a:hover,
header a:active{
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
    margin-top:25px;
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

/*-------------------------------------button*/
.table_center{
  display:table-cell;
  vertical-align: middle;
  align-self: center;
}



 .table_center a{
  text-decoration:none;
  color:#000;
  margin:70px 130px;
  width:300px;
  height: 200px;
  display:inline-block;
  line-height:40px;
  font-size:30px;
  font-weight:900;
  letter-spacing:2px;
  text-transform:uppercase;
  background-color: #fff;
   border:5px solid #000;
   box-shadow:1px 1px 0, 2px 2px 0, 3px 3px 0, 4px 4px 0,5px 5px 0;
  position: relative;
}

 .table_center a:after{
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  height: 100%;
  width:100%;
   z-index: -1;
  background-color: #fff;
  transition: all 0.5s;
  -webkit-transition: all 0.5s;
  -moz-transition: all 0.5s;
  -ms-transition: all 0.5s;
  -o-transition: all 0.5s;
}
.table_center a:hover{
  background-color: transparent;
}
 .table_center a:hover:after{
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}

 .table_center a:active{
   top:5px;
   left:5px;
   box-shadow:0 0 0 0;
}

/*--------------------edit home form*/

.edithomeform{
    margin-top: 40px;
}
.edithomeform .head{
    font-weight: 600;
    padding-right: 130px;
    font-size:30px;
}
.signup-button{
    margin-top:20px;
    width: 50%;
    height: 50px;
    padding:5px;
    border:4px black solid;
    border-radius: 5px;
    background-color: #fff;
    
    color: black;
    font-size:18px;
    cursor: pointer;
}
.signup-button:hover{
    background: linear-gradient(135deg, #71b7e6, #9b59b6);
    color: black;
    border:2px solid black;            
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
                        <li><a href="DestroySession">LOGOUT</a></li>  
                            
                    </ul>  
                </div>
            </div>
        </header>
        
        <div class="table_center">
       <a href="#">
         QUERY OPERATIONS
       </a>
</div>
        <div class="table_center">
       <a href="#">
         ORDER OPERATIONS
       </a>
</div>
        <div class="table_center">
       <a href="#">
         USER REVIEWS
       </a>
</div>
        
        <!------------------edit home data form-->
        <center><h1>EDIT HOME DATA</h1></center>
        <center><hr style="width:20%;height:4px;color:black;background-color:black;"></center>
                        <form action="EditHomeData" method="post">
                            <center>
                            <table class="edithomeform">
                                <tr><td class="head">ABOUT PARA 1:</td><td><textarea style="height: 150px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="aboutp1" > <%=aboutp1%> </textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">ABOUT PARA 2:</td><td><textarea style="height: 150px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="aboutp2" ><%=aboutp2%></textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">SERVICES:</td><td><textarea style="height: 150px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="services" ><%=services%></textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">SERVICE 1:</td><td><textarea style="height: 150px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="service1" ><%=service1%></textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">SERVICE 2:</td><td><textarea style="height: 150px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="service2" ><%=service2%></textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">SERVICE 3:</td><td><textarea style="height: 150px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="service3" ><%=service3%></textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">SERVICE 4:</td><td><textarea style="height: 150px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="service4" ><%=service4%></textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">SERVICE 5:</td><td><textarea style="height: 150px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="service5" ><%=service5%></textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">ADDRESS:</td><td><textarea style="height: 150px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="address" ><%=address%></textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">CONTACT NO:</td><td><textarea style="height: 150px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="contactno" ><%=contactno%></textarea> </td> </tr><!-- comment -->
                                <tr><td class="head">EMAIL:</td><td><textarea style="height: 150px;resize: none;width:950px;border:2px solid black;border-radius: 10px;font-size:18px;" name="email" ><%=email%></textarea> </td> </tr>
                                
                                

                            </table>
                                <button type="submit" class="signup-button" name="btn2" value="UPDATE">UPDATE</button>
                            </center>
                        </form>
        
        
        
    </body>
</html>
