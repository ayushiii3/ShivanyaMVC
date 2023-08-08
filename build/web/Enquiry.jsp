<%-- 
    Document   : Enquiry
    Created on : Aug 2, 2023, 11:12:32 PM
    Author     : CIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<% 
     ArrayList<String> arr1=   (ArrayList)session.getAttribute("service");
          ArrayList<String> arr2=   (ArrayList)session.getAttribute("customer");
          ArrayList<String> arr3=   (ArrayList)session.getAttribute("roofMaterial");
          ArrayList<String> arr4=   (ArrayList)session.getAttribute("roofOrientation");
          ArrayList<String> arr5=   (ArrayList)session.getAttribute("installation");
          ArrayList<String> arr6=   (ArrayList)session.getAttribute("description");
          ArrayList<String> arr7=   (ArrayList)session.getAttribute("date");
          ArrayList<String> arr8=   (ArrayList)session.getAttribute("reply");
          ArrayList<String> arr9=   (ArrayList)session.getAttribute("statusc");
          int length = arr2.size();
%>   
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enquiry Page</title>
        <style>
            table-wrapper{
    margin: 10px 70px 70px;
    box-shadow: 0px 35px 50px rgba( 0, 0, 0, 0.2 );
}

.fl-table {
    margin-top:50px;
    border-radius: 5px;
    font-size: 20px;
    font-weight: normal;
    border: none;
    border-collapse: collapse;
    width: 100%;
    max-width: 100%;
    white-space: nowrap;
    background-color: white;
}

.fl-table td, .fl-table th {
    text-align: center;
    padding: 8px;
}

.fl-table td {
    border-right: 1px solid #f8f8f8;
    font-size: 15px;
}

.fl-table thead th {
    color: #ffffff;
    background: #4FC3A1;
}


.fl-table thead th:nth-child(odd) {
    color: #ffffff;
    background: #324960;
}

.fl-table tr:nth-child(even) {
    background: #F8F8F8;
}
@media (max-width: 767px) {
    .fl-table {
        display: block;
        width: 100%;
    }
    .table-wrapper:before{
        content: "Scroll horizontally >";
        display: block;
        text-align: right;
        font-size: 11px;
        color: white;
        padding: 0 0 10px;
    }
    .fl-table thead, .fl-table tbody, .fl-table thead th {
        display: block;
    }
    .fl-table thead th:last-child{
        border-bottom: none;
    }
    .fl-table thead {
        float: left;
    }
    .fl-table tbody {
        width: auto;
        position: relative;
        overflow-x: auto;
    }
    .fl-table td, .fl-table th {
        padding: 20px .625em .625em .625em;
        height: 60px;
        vertical-align: middle;
        box-sizing: border-box;
        overflow-x: hidden;
        overflow-y: auto;
        width: 120px;
        font-size: 13px;
        text-overflow: ellipsis;
    }
    .fl-table thead th {
        text-align: left;
        border-bottom: 1px solid #f7f7f9;
    }
    .fl-table tbody tr {
        display: table-cell;
    }
    .fl-table tbody tr:nth-child(odd) {
        background: none;
    }
    .fl-table tr:nth-child(even) {
        background: transparent;
    }
    .fl-table tr td:nth-child(odd) {
        background: #F8F8F8;
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tr td:nth-child(even) {
        border-right: 1px solid #E6E4E4;
    }
    .fl-table tbody td {
        display: block;
        text-align: center;
    }
}

        </style>
            
    </head>
    <body>
        <div class="tabcontent">
            <center><h2>ENQUIRIES</h2></center>
            <hr style="width:350px;height:5px;background-color:black">
    <div class="table-wrapper">
        <table class="fl-table">
            <thead>
            <tr>
                <th>Service Type</th>
                <th>Customer Type</th>
                <th>Roof Material</th>     
                <th>Roof Orientation</th>     
                <th>Installation</th>     
                <th>Description</th> 
                <th>Date</th>     
                <th>Reply</th>     
                <th>Status</th> 
            </tr>
            </thead>
            <tbody>
                <%
                    for(int i=0;i<arr1.size();i++){
                %>
                    
            <tr>
                <td><%=arr1.get(i)%></td>
                <td><%=arr2.get(i)%></td>
                <td><%=arr3.get(i)%></td>
                <td><%=arr4.get(i)%></td>
                <td><%=arr5.get(i)%></td>
                <td><%=arr6.get(i)%></td>
                <td><%=arr7.get(i)%></td>
                <td><%=arr8.get(i)%></td>
                <td><%=arr9.get(i)%></td>
            </tr>
            <%
                }
                %>
            <tbody>
        </table>    
    </div>
    </div>
    </body>
</html>
