<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
</script>
<nav class="navbar navbar-expand navbar-dark bg-dark" aria-label="Second navbar example">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">初栖花坊</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample02"
            aria-controls="navbarsExample02" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExample02">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link" href="back_product.jsp">商品總覽</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="back_member.jsp">會員總覽</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="back_add.jsp">新增商品</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="back_chg.jsp">修改商品</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="back_del.jsp">刪除商品</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="logout.jsp">登出</a>
                </li>

            </ul>
        </div>
    </div>
</nav>