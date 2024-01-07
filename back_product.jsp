<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>後台-商品總覽
    </title>
</head>
<body>
    <header>
        <%@include file="b_header.jsp"%>
    </header>
    <main style="padding: 3%;">
        <h2>商品總覽</h2>
        <hr>
        <form >
        <div>
            <table style="border: 1px solid black; padding: 5px;">
                <th style="border: 1px solid black;">
                    <td style="border: 1px solid black;">商品ID</td>
                    <td style="border: 1px solid black;">商品名稱</td>
                    <td style="border: 1px solid black;">商品類別</td>
                    <td style="border: 1px solid black;">商品金額</td>
                    <td style="border: 1px solid black;">商品庫存</td>
                </th>
                <%
                        Class.forName("com.mysql.jdbc.Driver");
                        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
                        Connection con=DriverManager.getConnection(url,"root","1234");
                        String sql="USE `newschema`";
                        request.setCharacterEncoding("utf-8");
                        con.createStatement().execute(sql);
                        sql="SELECT * FROM `product`";
                        ResultSet rs=con.createStatement().executeQuery(sql);
                        while(rs.next()){
                        %>
                <tr style="border: 1px solid black;">
                    <td></td>
                    <td style="border: 1px solid black;"><%=rs.getString("id")%></td>
                    <td style="border: 1px solid black;"><%=rs.getString("name")%></td>
                    <td style="border: 1px solid black;"><%=rs.getString("type")%></td>
                    <td style="border: 1px solid black;"><%=rs.getString("price")%></td>
                    <td style="border: 1px solid black;"><%=rs.getString("amount")%></td>
                </tr>
                <%}%>
            </table>
        </div>
        </form>
    </main>
</body>
</html>