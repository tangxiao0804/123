<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<%
	      Class.forName("com.mysql.jdbc.Driver");
          String urls="jdbc:mysql://localhost/?serverTimezone=UTC";
          Connection cons=DriverManager.getConnection(urls,"root","1234");
          String sqls="USE `newschema`";
          request.setCharacterEncoding("utf-8");
          cons.createStatement().execute(sqls);
		  String search = request.getParameter("search");
		%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>搜尋結果</title>
    <!--使用套件：bootstrap-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script>
        $(document).ready(function () {
            if (window.location.hash) {
                var hash = window.location.hash.substring(1);
                $('#' + hash).collapse('show');
            }
        });
    </script>
    <script src="js/product.js"></script>
    <link rel="shortcut icon" href="img/logo/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="css/product.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/login.css">
</head>

<body>
    <header>
        <%@include file="header.jsp"%>
    </header>

    <div class="pcontainer">
        <aside>
            <div class="center">
                <div class="accordion" id="accordionExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                鮮花
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <ul class="category">
                                    <li>
                                        <a href="">聖誕限定</a>
                                    </li>
                                    <li>
                                        <a href="">歡慶畢業</a>
                                    </li>
                                    <li>
                                        <a href="">浪漫首選</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingTwo">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"
                                onclick="redirectToOtherPage(2)">
                                永生花
                            </button>
                        </h2>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingThree">
                            <button class="accordion-button collapsed banbutton" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree"
                                onclick="redirectToOtherPage(3)">
                                多肉植物
                            </button>
                        </h2>
                    </div>
                </div>
            </div>

        </aside>
        <main class=" item">


        <div class="row row-cols-1 row-cols-3 list-item" id="page1">
            <%
                        sqls="SELECT * FROM product WHERE name LIKE '%"+search+"%' ";
		
		                ResultSet rss=cons.createStatement().executeQuery(sqls);
                        while(rss.next()){
			    %>
            <div class="col">
                <div class="card h-100 ">
                
                <a href="hf-item.jsp">
                    <img src="<%=rss.getString("src")%>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h2 class="card-title"><%=rss.getString("name")%></h2>
                    </div>
                </a>
                
                </div>
            
            </div>
            <%}%>
        </div>
        

        </main>
        <% cons.close(); %>
    </div>

    <div class="clearfix"></div>

    <footer>
        <div class="footerlogo">
            <img src="img/logo/logo.png" style="width: 150px;">
            <br>
            <h3 class="name">初栖 Seventh Day</h3>
            <br>
            copyright © 2023 All Seventh Day
    </footer>
</body>

</html>