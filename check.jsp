<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection con=DriverManager.getConnection(url,"root","1234");
    String sql="USE `newschema`";
    con.createStatement().execute(sql);
%>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>check</title>
<link rel="stylesheet" type="text/css" href="../assets/css/allproduct.css">
<link rel="stylesheet" type="text/css" href="../assets/css/footer.css">
<link rel="stylesheet" type="text/css" href="../assets/css/navbar.css">
<link rel="stylesheet" type="text/css" href="../assets/css/login.css">
<%
String id =new String(request.getParameter("id"));
 String pwd=new String(request.getParameter("pwd"));
if("1".equals(id) && "1".equals(pwd)){
	response.sendRedirect("back_product.jsp");
}
else if(request.getParameter("id") !=null && !request.getParameter("id").equals("") && request.getParameter("pwd") !=null && !request.getParameter("pwd").equals(""))
{

  sql = "SELECT * FROM signup WHERE `Name`='" +request.getParameter("id") + "'  AND `psw`='" + request.getParameter("pwd") + "'"  ; 
 
  ResultSet rs = con.createStatement().executeQuery(sql);   
  if(rs.next())
   {            
    session.setAttribute("uaccount",request.getParameter("id"));
    //session.setAttribute("psw",request.getParameter("psw"));
    //session.setAttribute("uphone",request.getParameter("uphone"));
    con.close();//結束資料庫連結
    out.println("<SCRIPT>alert('登入成功');");
    out.println("window.location='product.jsp'");
    out.println("</SCRIPT>");
    
   }
  else
   {
    con.close();//結束資料庫連結
    out.println("<SCRIPT>alert('密碼錯誤！請重新登入');");
    out.println("window.location='index.jsp'");
    out.println("</SCRIPT>");
    //out.println("密碼帳號不符 !! <a href='login.html'>按此</a>重新登入") ;
   }
  }

else
 response.sendRedirect("login.html");
 
%>