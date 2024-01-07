<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>初栖會員</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
        </script>
    <script src="https://kit.fontawesome.com/4b9549b686.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/shoppingcart.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="shortcut icon" href="img/logo/logo.png" type="image/x-icon">
</head>

<body>
    <header>
        <%@include file="header.jsp"%>
    </header>
    </div>

    <main>
        <div class="container">
            <div class="ordertitle">
                <div class="col1"></div>
                <div class="text-center">
                    購物車
                </div>
                <div class="col1"></div>
            </div>
            <table class="order">
                <thead>
                    <tr>
                        <th class="table-title">商品</th>
                        <th class="table-title">單價</th>
                        <th class="table-title">數量</th>
                        <th class="table-title">小計</th>
                        <th class="table-title">操作</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="itemdetail item-info">
                            <div class="item-infoimg">
                                <img src="img/flower/FG03.jpg">
                            </div>
                            <div class="item-infocontent">
                                <div class="item-name">
                                    秘密
                                </div>
                            </div>
                        </td>
                        <td class="item-info">
                            <div class="item-price">
                                1300
                            </div>
                        </td>
                        <td class="item-info">
                            <div class="item1_amount">
                                <div class="add_btn">
                                    <input type="button" value="-" class="item_button1" onclick="minus(0)">
                                    </input>
                                    <input type="text" value="1" class="item_num">
                                    <input type="button" value="+" class="item_button2" onclick="add(0)">
                                </div>
                            </div>
                        </td>
                        <td class="item-info">
                            <div class="item-price">
                                1300
                            </div>
                        </td>
                        <td><input type="button" value="刪除" class="check"></td>
                    </tr>
                    <tr>
                        <td class="itemdetail item-info">
                            <div class="item-infoimg">
                                <img src="img/flower/G02.jpg">
                            </div>
                            <div class="item-infocontent">
                                <div class="item-name">
                                    少年的你
                                </div>
                            </div>
                        </td>
                        <td class="item-info">
                            <div class="item-price">
                                1800
                            </div>
                        </td>
                        <td class="item-info">
                            <div class="item1_amount">
                                <div class="add_btn">
                                    <input type="button" value="-" class="item_button1" onclick="minus(1)">
                                    </input>
                                    <input type="text" value="1" class="item_num">
                                    <input type="button" value="+" class="item_button2" onclick="add(1)">
                                </div>
                            </div>
                        </td>
                        <td class="item-info">
                            <div class="item-price">
                                1800
                            </div>
                        </td>
                        <td><input type="button" value="刪除" class="check"></td>
                    </tr>
                </tbody>
            </table>
            <div class="total">
                <a colspan="5" class="text-right">
                    小計$3100 +物流費$0 = 總額
                    <span class="amount">
                        3100
                    </span>
                </a>
            </div>
            <div class="dinfo">

            </div>
            <div class="shopbtn">
                <div class="back">
                    <input type="button" onclick="history.back()" value="上一頁" class="check2"></input>
                </div>
                <div class="checkout">
                    <input type="button" onclick="backToMember()" value="確認結帳" class="check2"></input>
                </div>
            </div>
        </div>
    </main>
    <script src="js/shopping.js"></script>
    <footer>
        <div class="footerlogo">
            <img src="img/logo/logo.png" style="width: 150px;">
            <br>
            <h3 class="name">初栖 Seventh Day</h3>
            <br>
            copyright © 2023 All Seventh Day
    </footer>
    <div class="clearfix"></div>
</body>

</html>