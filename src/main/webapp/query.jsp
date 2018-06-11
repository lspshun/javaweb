<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>query result</title>
</head>
<body>
<%@ include file="head.jsp" %> 
  
<%

    request.setCharacterEncoding("UTF-8");
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    
    String sql="select * from  studentinfo  where true ";
    if(!id.isEmpty())
    	sql += " and  id='"+ id+"'";
    if(!name.isEmpty())
    	sql += " and  name='"+ name+"'";
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student" ,"root","123");
    Statement stmt= conn.createStatement();
    ResultSet  rs= stmt.executeQuery(sql);
   %>
   
   <table align="center" border="1" width="600">
      <tr><th bgcolor=#cccccc>学号 </th><th>姓名</th><th>年龄 </th><th>操作 </th></tr>
   <% while (rs.next()) {%>
       <tr> <td> <%=rs.getString("id") %></td>
            <td> <%=rs.getString("name") %></td>
             <td> <%=rs.getInt("age") %></td>
             <td> <div align=center><a href="update.html?id=<%=rs.getString("id") %>" >信息修改 </a>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <a href="delete.jsp?id=<%=rs.getString("id") %>"> 删除  </a></div></td> </tr>
    <% }
       rs.close();stmt.close();conn.close();
     %>  
   </table> 
</body>
</html>