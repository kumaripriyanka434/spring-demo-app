<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>
    <head>
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
        <title>Welcome</title>
    </head>
    <body>
    <p><a href="/SpringMvcUser/jsp/customerdetails.jsp">Home</a></p>
        <table>
            <tr>
                <td>Welcome    ${user.getFirstname()} ${user.getLastname()}</td>
             </tr>
             <tr>
                <td>Email -  ${user.getEmail()}</td>
             </tr>
             <tr>
                <td>Address -  ${user.getAddress()}</td>
             </tr>
             <tr>
                <td>Phone no -  ${user.getPhone()}</td>
            </tr>
            <tr>
                <td><a href="home.jsp">Home</a>
                </td>
            </tr>
        </table>
    </body>
    </html>