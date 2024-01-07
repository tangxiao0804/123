<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

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

    <div class="clearfix"></div>
    <div class="pcontainer">
        <aside>
            <div class="center">
                <div class="accordion" id="accordionExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="headingOne">
                            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse"
                                data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne"
                                onclick="redirectToOtherPage(1)">
                                鮮花
                            </button>
                        </h2>
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
                                data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                多肉植物
                            </button>
                        </h2>
                    </div>
                </div>
            </div>
        </aside>
        <main class="item">
            <!-- 產品 3*2  商品 -->
            <div class="row row-cols-1 row-cols-3 list-item" id="page1">
                <div class="col">
                    <div class="card h-100 ">
                        <a href="hf-item.jsp">
                            <img src="img/flower/S01.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">蘆薈</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item3.jsp">
                            <img src="img/flower/S02.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">金盛丸</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/S03.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">五稜角</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/S04.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">卡蘿拉</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/S05.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">蔓蓮</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/S06.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">耳墜草</h2>
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