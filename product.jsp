<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <%
    Class.forName("com.mysql.jdbc.Driver");
    String url="jdbc:mysql://localhost/?serverTimezone=UTC";
    Connection con=DriverManager.getConnection(url,"root","1234");
    String sql="USE `newschema`";
    con.createStatement().execute(sql);
    %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>初栖選品</title>
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
            <!-- 產品 3*2  商品 -->
            

            <div class="row row-cols-1 row-cols-3 list-item" id="page1">
                <%
					sql = "SELECT * FROM newschema.product where id = 1";                    ;
					ResultSet tmp =  con.createStatement().executeQuery(sql);                 
					while(tmp.next())
					{			
                        out.println("<div class='col'>");
						out.println("<div class='card h-100 '>");
						out.println("<a href='hf-item.jsp'>");
						out.println("<img src='"+tmp.getString(2)+"' class='card-img-top' alt='...'>");
						out.println("<div class='card-body'>");
						out.println("<h2 class='card-title'>"+tmp.getString(3)+"</h2>");
						out.println("</div>");
						out.println("</a>");
						out.println("</div>");
						out.println("</div>");
					}
					
				%>
                <%
					sql = "SELECT * FROM newschema.product where id = 2";                    ;
					ResultSet tmp1 =  con.createStatement().executeQuery(sql);                 
					while(tmp1.next())
					{			
                        out.println("<div class='col'>");
						out.println("<div class='card h-100 '>");
						out.println("<a href='hf-item1.jsp'>");
						out.println("<img src='"+tmp1.getString(2)+"' class='card-img-top' alt='...'>");
						out.println("<div class='card-body'>");
						out.println("<h2 class='card-title'>"+tmp1.getString(3)+"</h2>");
						out.println("</div>");
						out.println("</a>");
						out.println("</div>");
						out.println("</div>");
					}
					
				%>
                <%
					sql = "SELECT * FROM newschema.product where id = 3";                    ;
					ResultSet tmp2 =  con.createStatement().executeQuery(sql);                 
					while(tmp2.next())
					{			
                        out.println("<div class='col'>");
						out.println("<div class='card h-100 '>");
						out.println("<a href='hf-item2.jsp'>");
						out.println("<img src='"+tmp2.getString(2)+"' class='card-img-top' alt='...'>");
						out.println("<div class='card-body'>");
						out.println("<h2 class='card-title'>"+tmp2.getString(3)+"</h2>");
						out.println("</div>");
						out.println("</a>");
						out.println("</div>");
						out.println("</div>");
					}
					
				%>
                <%
					sql = "SELECT * FROM newschema.product where id = 4";                    ;
					ResultSet tmp3 =  con.createStatement().executeQuery(sql);                 
					while(tmp3.next())
					{			
                        out.println("<div class='col'>");
						out.println("<div class='card h-100 '>");
						out.println("<a href='hf-item3.jsp'>");
						out.println("<img src='"+tmp3.getString(2)+"' class='card-img-top' alt='...'>");
						out.println("<div class='card-body'>");
						out.println("<h2 class='card-title'>"+tmp3.getString(3)+"</h2>");
						out.println("</div>");
						out.println("</a>");
						out.println("</div>");
						out.println("</div>");
					}
					
				%>
                <%
					sql = "SELECT * FROM newschema.product where id = 5";                    ;
					ResultSet tmp4 =  con.createStatement().executeQuery(sql);                 
					while(tmp4.next())
					{			
                        out.println("<div class='col'>");
						out.println("<div class='card h-100 '>");
						out.println("<a href='hf-item4.jsp'>");
						out.println("<img src='"+tmp4.getString(2)+"' class='card-img-top' alt='...'>");
						out.println("<div class='card-body'>");
						out.println("<h2 class='card-title'>"+tmp4.getString(3)+"</h2>");
						out.println("</div>");
						out.println("</a>");
						out.println("</div>");
						out.println("</div>");
					}
					
				%>
                <%
					sql = "SELECT * FROM newschema.product where id = 6";                    ;
					ResultSet tmp5 =  con.createStatement().executeQuery(sql);                 
					while(tmp5.next())
					{			
                        out.println("<div class='col'>");
						out.println("<div class='card h-100 '>");
						out.println("<a href='hf-item5.jsp'>");
						out.println("<img src='"+tmp5.getString(2)+"' class='card-img-top' alt='...'>");
						out.println("<div class='card-body'>");
						out.println("<h2 class='card-title'>"+tmp5.getString(3)+"</h2>");
						out.println("</div>");
						out.println("</a>");
						out.println("</div>");
						out.println("</div>");
					}
					
				%>
            </div>
            <!-- 第二頁商品 -->
            <div class="row row-cols-1 row-cols-3 list-item" id="page2">
                <div class="col">
                    <div class="card h-100 ">
                        <a href="hf-item.jsp">
                            <img src="img/flower/G01.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">歌頌青春</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/G02.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">少年的你</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/G03.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">後浪入海</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/G04.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">追光</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/G05.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">逆風飛翔</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/G06.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">不算分別</h2>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- 第三頁商品 -->
            <div class="row row-cols-1 row-cols-3 list-item" id="page3">
                <div class="col">
                    <div class="card h-100 ">
                        <a href="hf-item.jsp">
                            <img src="img/flower/R01.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">情書</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/R02.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">柔情似水</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/R03.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">維也納</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/R04.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">岩海之戀</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/R05.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">仲夏夜夢</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item2.jsp">
                            <img src="img/flower/R06.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">深緋</h2>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </main>
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