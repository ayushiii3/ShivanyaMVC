<%-- 
    Document   : PlaceOrder
    Created on : Jul 30, 2023, 10:50:32 PM
    Author     : CIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String name=(String)session.getAttribute("name");
    String emailId=(String)session.getAttribute("emailId");
    String phoneNo=(String)session.getAttribute("phoneNo");
    String address=(String)session.getAttribute("address");
    String pincode=(String)session.getAttribute("pincode");
    String city=(String)session.getAttribute("city");
    String state=(String)session.getAttribute("state");
    String date=(String)session.getAttribute("date");
    int t1=(Integer)session.getAttribute("t1");
    int t2=(Integer)session.getAttribute("t2");
    int t3=(Integer)session.getAttribute("t3");
    int t4=(Integer)session.getAttribute("t4");
    int total=(Integer)session.getAttribute("total");
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>    
    </head>
    <body>
        <center>
            <div class="container">
                <div class="title" style="font-weight:bolder">ORDER DETAILS</div>
                <div class="content" id="">
                    <form action="" method="post">
                        <div class="user-details">
                            <div class="input-box">
                                <span class="details">NAME</span>
                                <input type="text" value="<%=name%>" disabled>
                            </div>
                            <div class="input-box">
                                <span class="details">EMAIL</span>
                                <input type="text" value="<%=emailId%>" disabled>
                            </div>
                            <div class="input-box">
                                <span class="details">CONTACT NUMBER</span>
                                <input type="text" value="<%=phoneNo%>" disabled>
                            </div>
                            <div class="input-box">
                                <span class="details">ADDRESS</span>
                                <input type="text" value="<%=address%>" disabled>
                            </div>
                            <div class="input-box">
                                <span class="details">PINCODE</span>
                                <input type="text" value="<%=pincode%>" disabled>
                            </div>
                            <div class="input-box">
                                <span class="details">CITY</span>
                                <input type="text" value="<%=city%>" disabled>
                            </div>
                            <div class="input-box">
                                <span class="details">STATE</span>
                                <input type="text" value="<%=state%>" disabled>
                            </div>
                            <div class="input-box">
                                <span class="details">DATE</span>
                                <input type="text" value="<%=date%>" disabled>
                            </div>
                            <div class="input-box">
                                <span class="details">ORDER</span>
                                    <table>
                                        <tr>
                                            <th>Products</th>
                                            <th>Price</th>
                                        </tr>
                                        <tr>
                                            <td>AAC Blocks</td>
                                            <td><%=t1%></td>
                                        </tr>
                                        <tr>
                                            <td>Tile Adhesive</td>
                                            <td><%=t2%></td>
                                        </tr>
                                        <tr>
                                            <td>Block Adhesive</td>
                                            <td><%=t3%></td>
                                        </tr>
                                        <tr>
                                            <td>Block Plaster</td>
                                            <td><%=t4%></td>
                                        </tr>
                                        <tr>
                                            <td>TOTAL</td>
                                            <td><%=total%></td>
                                        </tr>
                                        
                                </table>
                            </div>

                            <div class="button">
                                <input type="submit" value="Confirm Order">
                            </div>

                        </div>
      </form>
    </div>
  </div>
        </center>
    </body>
</html>
