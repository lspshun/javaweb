<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert student</title>
</head>
<body>
<%@ include file="head.jsp" %> 
<%
    request.setCharacterEncoding("UTF-8");
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    int age=Integer.parseInt(request.getParameter("age"));
    
    String sql="insert into studentinfo  values('"+id+"','"+ name+"',"+ age+")";
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student" ,"root","123");
    Statement stmt= conn.createStatement();
    int result= stmt.executeUpdate(sql);
    if(result>0)
    	out.println("添加记录成功！");
    else out.println("添加记录失败！");
    stmt.close();
    conn.close();
%>
</body>
</html>
