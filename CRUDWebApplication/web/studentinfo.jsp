
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<html>
    <center>
    <head>        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Information</title>
    </head>
    <body  bgcolor="204A28">
           
        <h1><font size="8" color="yellow">Student Information</font></h1>
    <br><br><br><br><br><br>
    <td><font size="5" color="white">Complete the form:</font></td>  
   
        <form action="./StudentServlet" method="POST">
           
            <table>
                <tr>
                    <td><font color="white">Student ID</font></td>
                    <td><input  type="text" name="studentId" value="${student.studentId}" /></td>
                </tr>
                <tr>
                    <td><font color="white">First Name</font></td>
                    <td><input type="text" name="firstname" value="${student.firstname}" /></td>
                </tr>
                <tr>
                    <td><font color="white">Last Name</font></td>
                    <td><input type="text" name="lastname" value="${student.lastname}" /></td>
                </tr>
                <tr>
                    <td><font color="white">Year Level</font></td>
                    <td><input type="text" name="yearLevel" value="${student.yearLevel}" /></td>
                </tr>
                <tr>
               <br>
                    <td colspan="2">
                        <input type="submit" name="action" value="Add" />
                        <input type="submit" name="action" value="Edit" />
                        <input type="submit" name="action" value="Delete" />
                        <input type="submit" name="action" value="Search" />
                    </td>                
                </tr>            
            </table>
        </form>        
        <br>
        <table border="5">
            <th><font color="white">ID</font></th>
            <th><font color="white">First Name</font></th>
            <th><font color="white">Last Name</font></th>
            <th><font color="white">Year Level</font></th>
            <c:forEach items="${allStudents}" var="stud">
                <tr>
                    <td><font color="white">${stud.studentId}</font> </td>
                    <td><font color="white"> ${stud.firstname}</font></td>
                    <td><font color="white"> ${stud.lastname}</font></td>
                    <td><font color="white"> ${stud.yearLevel}</font></td>
                </tr>
            </c:forEach>
        </table>  
        <td><font size="3" color="white">*Database infos&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></td> 
    </body>
    </center>
</html>
