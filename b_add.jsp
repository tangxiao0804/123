<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<%  
 try {

            Class.forName("com.mysql.jdbc.Driver");	  
            try {

                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
	        if(con.isClosed())
                    out.println("連線建立失敗");
                else
                {	String src=request.getParameter("src");
                    String name=request.getParameter("name"); 
					String type=request.getParameter("type");
					String price=request.getParameter("price");
					String amount=request.getParameter("amount");
					
		

                    con.createStatement().execute("USE `newschema`");  
					request.setCharacterEncoding("utf-8");
     
                    String sql ="INSERT `product` (src,name,type,price,amount)" +
					" VALUES ('"+ src + "','"+name+"','"+type+"','"+price+"','"+amount+"')";
                         int no=con.createStatement().executeUpdate(sql);
                    if (no>0)
						{
						%>
<script language="javascript">
    var msg;
    msg = "新增成功";
    alert(msg);
    focus();
</script>
<meta http-equiv="refresh" content="0; url=back_product.jsp">

<%}
					else
					{%>
<script language="javascript">
    var msg;
    msg = "新增失敗";
    alert(msg);
    focus();
</script>
<meta http-equiv="refresh" content="0; url=back_product.jsp">
<%
				}
				}
				 }
                 
          catch (SQLException sExec) {
              out.println("SQL錯誤"+sExec.toString());
          }
    }     
    catch (ClassNotFoundException err) {
          out.println("class錯誤"+err.toString());
    }    
 %>