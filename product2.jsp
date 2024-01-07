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
                                data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                永生花
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse show" aria-labelledby="headingTwo"
                            data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                <ul class="category">
                                    <li>
                                        <a href="">新品</a>
                                    </li>
                                    <li>
                                        <a href="">花束</a>
                                    </li>
                                    <li>
                                        <a href="">玻璃罩</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header banbutton" id="headingThree">
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
        <main class="item">
            <!-- 產品 3*2  第一頁商品 -->
            <div class="row row-cols-1 row-cols-3 list-item" id="page1">
                <div class="col">
                    <div class="card h-100 ">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FN04.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">哈哈我</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FN02.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">努力寫網頁</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FN03.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">結果</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FN01.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">岩海之戀</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FN05.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">仲夏夜夢</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FN06.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">忘記做啦QAQ</h2>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- 第二頁商品 -->
            <div class="row row-cols-1 row-cols-3 list-item" id="page2">
                <div class="col">
                    <div class="card h-100 ">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FF01.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">淺談花語</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FF02.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">粉色愛戀</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FF03.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">優雅薰香</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FF04.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">天空之吻</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FF05.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">夜空星辰</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FF06.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">淡雅花章</h2>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!--第三頁-->
            <div class="row row-cols-1 row-cols-3 list-item" id="page3">
                <div class="col">
                    <div class="card h-100 ">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FG01.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">春天</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FG02.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">北極</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FG03.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">秘密</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FG04.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">永不止息</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FG05.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">禮物</h2>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <a href="hf-item.jsp">
                            <img src="img/flower/FG06.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h2 class="card-title">蔚藍大海</h2>
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