<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>後台-新增商品
    </title>
</head>
<body>
    <header>
        <%@include file="b_header.jsp"%>
    </header>
    <main style="padding: 3%;">
        <h2>修改商品</h2>
        <hr>
        <form action="b_chg.jsp">
            <div>
                <h5>商品圖片</h5><input type="text" name="src">
                <h5>商品名稱</h5><input type="text" name="name">
                <h5>商品類別</h5><input type="text" name="type">
                <h5>商品金額</h5><input type="text" name="price">
                <h5>商品庫存</h5><input type="text" name="amount">
                 <h5>商品ID</h5><input type="text" name="id">
                <input type="submit" value="修改商品">
                <input type="reset" value="重新設定">
            </div>
        </form>
    </main>
</body>
</html>