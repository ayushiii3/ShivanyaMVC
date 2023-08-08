<%-- 
    Document   : Dashboard
    Created on : May 2, 2023, 11:03:07 AM
    Author     : CIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%
    response.addHeader("Pragma", "no-Cache");
        response.addHeader("Cache-Control", "no-Store");

        response.setHeader("Pragma", "no-Cache");
        response.setHeader("Cache-Control", "no-Store");

        String username = (String) session.getAttribute("username");

        if (username == null) {
            response.sendRedirect("ShivanyaHome.jsp");
        }
        
    String password=(String)session.getAttribute("password");
    String firstname=(String)session.getAttribute("firstname");
    String lastname=(String)session.getAttribute("lastname");
    String contactno=(String)session.getAttribute("contactno");
    String email=(String)session.getAttribute("email");
    
      
                
%>   
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHIVANYA|ENTERPRISES</title>
        <link rel="stylesheet" href="ShivanyaHome.css">
        <style>
h2{
    text-align: center;
    font-size: 25px;
    letter-spacing: 1px;
    margin-top:25px;
    color: black;
}
table {
    font-weight: bold;
    border:3px solid black;
    width:50%;
}
table td,table th {
    text-align: center;
}
.container{
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 715px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 14px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 10px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}
 #dot-1:checked ~ .category label .one,
 #dot-2:checked ~ .category label .two,
 #dot-3:checked ~ .category label .three{
   background: #9b59b6;
   border-color: #d9d9d9;
 }
 form input[type="radio"]{
   display: none;
 }
 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}
/*edit form*/
#userDataEditForm table{
                width:95%;
                margin-left: 10px;
                border:none;
                margin-top:20px;
            }
            #userPasswordEditForm table{
                width:95%;
                margin-left: 10px;
                border:none;
                margin-top:20px;
            }

.fieldtheme{
                margin:0px 0px 13px 0px;
                border:2px solid ;
                width:90%;
                height:30px;
                border-radius:5px;
                font-size: 15px;
            }
.closeSignup{
    float: right;
    border:none;
    background-color:white;
                margin: 1px 9px 0px 0px;
                font-size: 25px;
                text-align: center;
                font-weight: bold;
                transition: color .1s;
                list-style: none;
                
}
.closeSignup:hover{
    color: #E14E39;
                cursor: pointer;                
}

.closeSignup:focus{
    background-color: white;                 
}
.signup-button{
    margin-top:20px;
    width: 100%;
    padding:5px;
    border:2px black solid;
    border-radius: 5px;
    background-color: #E14E39;
    color: white;
    font-size:18px;
    cursor: pointer;
}
.signup-button:hover{
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
                        <li><a href="LoggedIn.jsp">BACK</a></li>
                        <li class="openEditData"><a href="#">EDIT DATA</a></li>
                        <li class="openEditPassword"><a href="#">EDIT PASSWORD</a></li>
                        
                            
                    </ul>  
                </div>
            </div>
        </header>
        
        <dialog id="userDataEditForm" style="width:25%">

            <button class="closeSignup closeEditData">&times;</button>
            <center><h1>EDIT DATA</h1></center>
            <hr style="width:40%;height:2px;color:black;background-color:black;margin-left:110px">
            <form action="EditUserData" method="post">
                <table>
                    <tr><td>First Name</td><td>Last Name</td></tr>
                    <tr><td><input type="text" class="fieldtheme"  value="<%=firstname%>" name="ufirstname" required></td><td><input type="text" class="fieldtheme"  value="<%=lastname%>" name="ulastname" required></td></tr>
                    <tr><td colspan='2'>Username</td></tr>
                    <tr><td colspan='2'><input type="text" class="fieldtheme"  value="<%=username%>" name="uusername" required></td></tr>

                    <tr><td colspan='2'>Email</td></tr>
                    <tr><td colspan="2"><input type="text" class="fieldtheme" name="uemail" value="<%=email%>" required></td></tr>
                    <tr><td colspan='2'>Contact Number</td></tr>
                    <tr><td colspan="2"><input type="text" class="fieldtheme" name="ucontactno" value="<%=contactno%>" required></td></tr>

                    <tr><td colspan="2"><button type="submit" class="signup-button" name="btn2" value="UPDATE"><center>UPDATE</center></button></td></tr>
                </table>
            </form>

        </dialog>
                    
                    <dialog id="userPasswordEditForm" style="width:25%">

                        <button class="closeSignup closeEditPassword">&times;</button>
                        <center><h1>EDIT PASSWORD</h1></center>
                        <hr style="width:40%;height:2px;color:black;background-color:black;margin-left:110px">
                        <form action="EditUserPassword" method="post">
                            <table>
                                <tr><td>Current Password</td></tr>
                                <tr><td><input type="text" class="fieldtheme" name="currentpassword" required></td></tr>
                                <tr><td>New Password</td></tr>
                                <tr><td><input type="text" class="fieldtheme" name="newpassword" required></td></tr>
                                <tr><td>Confirm New Password</td></tr>
                                <tr><td><input type="text" class="fieldtheme" name="cnewpassword" required></td></tr>
                                

                                <tr><td><button type="submit" class="signup-button" name="btn2" value="UPDATE">UPDATE</button></td></tr>
                            </table>
                        </form>

                    </dialog>
        

    <center>
<div class="container">
    <div class="title" style="font-weight:bolder">Your Dashboard !</div>
    <div class="content">
      <form action="#">
        <div class="user-details">
          <div class="input-box">
            <span class="details">FIRST NAME</span>
            <input type="text" value="<%=firstname %>" disabled>
          </div>
            <div class="input-box">
            <span class="details">LAST NAME</span>
            <input type="text" value="<%=lastname %>" disabled>
          </div>
          <div class="input-box">
            <span class="details">USERNAME</span>
            <input type="text" value="<%=username %>" disabled>
          </div>
            <div class="input-box">
            <span class="details">PASSWORD</span>
            <input type="password" value="<%=password%>" disabled>
          </div>
          <div class="input-box">
            <span class="details">EMAIL</span>
            <input type="text" value="<%=email%>" disabled>
          </div>
          <div class="input-box">
            <span class="details">CONTACT NUMBER</span>
            <input type="text" value="<%=contactno%>" disabled>
          </div>
          
          
        </div>
      </form>
    </div>
  </div>
    </center>
    
    <script>
        const userDataEditForm = document.querySelector('#userDataEditForm');
const openEditData = document.querySelector('.openEditData');
const closeEditData = document.querySelector('.closeEditData');



openEditData.addEventListener('click', () => {
    userDataEditForm.showModal();
});

closeEditData.addEventListener('click', () => {
    userDataEditForm.close();
});

const userPasswordEditForm = document.querySelector('#userPasswordEditForm');
const openEditPassword = document.querySelector('.openEditPassword');
const closeEditPassword = document.querySelector('.closeEditPassword');

openEditPassword.addEventListener('click', () => {
    userPasswordEditForm.showModal();
});

closeEditPassword.addEventListener('click', () => {
    userPasswordEditForm.close();
});

    </script>
    </body>
            
    
</html>
