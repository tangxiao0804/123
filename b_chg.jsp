<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

 <%  		
        try {
	        
            Class.forName("com.mysql.jdbc.Driver");	  
            try {
            
                String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                Connection con=DriverManager.getConnection(url,"root","1234");   				
		        if(con.isClosed())
				{
                    out.println("連線建立失敗");
				}
                else
                    {	
				    String src=request.getParameter("src");
					String name=request.getParameter("name");
                    String type=request.getParameter("type"); 
					String price=request.getParameter("price");
					String amount=request.getParameter("amount");
                    String id=request.getParameter("id");
					
					con.createStatement().execute("USE `newschema`");
					request.setCharacterEncoding("utf-8");
                     String sql = "UPDATE `product` SET src = '"+src+"',name = '"+name+"',type = '"+type+"',price = '"+price+"',amount = '"+amount+"' WHERE id = '"+id+"'";
					
                    int no=con.createStatement().executeUpdate(sql); //可回傳異動數
				 if (no > 0)
					{
                    out.print("<script>alert('修改成功!');window.location='back_product.jsp'</script>");
 
                    con.close();
                    }
                      else
					{
						out.print("<script>alert('修改失敗!');window.location='back_product.jsp'</script>");
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