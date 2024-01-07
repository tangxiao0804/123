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
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>初栖花坊</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
        </script>
    <link rel="shortcut icon" href="img/logo/logo.png" type="image/x-icon">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
</head>

<body>
    <header>
        <%@ include file="header.jsp"%>
    </header>

    <main>
        <div class="banner">
            <div class="bannerimg"></div>
            <div class="textbox">
                <div class="text">
                    <p class="cn">用一束花，講述一個浪漫的故事</p>
                    <br>
                    <p class="eng"> Tell a romantic story with a bunch of flower</p>
                </div>
                <div class="bannerbtn">
                    <a class="btn-draw" href="product.jsp"><span>立即選購</span></a>
                </div>
            </div>
        </div>
        <div class="allitem">
            <div class="sellitem1">
                <a href="product.jsp#collapseOne"><img src="img/flower/pic01.jpg" class="sellpic"></a>
            </div>
            <div class="sname1">
                <a>鮮花</a>
            </div>
            <div class="sellitem2">
                <a href="product2.jsp"><img src="img/flower/pic02.jpg" class="sellpic"></a>
            </div>
            <div class="sname2">
                <a>永生花</a>
            </div>
            <div class="sellitem3">
                <a href="product3.jsp"><img src="img/flower/pic03.jpg" class="sellpic"></a>
                <div class="sname3">
                    <a>多肉植物</a>
                </div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="slide">
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                        aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <a href="product2.jsp#page1"><img src="img/indexAD/ad01.png" class="d-block w-100"></a>
                        <div class="carousel-caption d-none d-md-block"></div>
                    </div>
                    <div class="carousel-item">
                        <a href="product.jsp#page1"><img src="img/indexAD/ad02.png" class="d-block w-100"></a>
                        <div class="carousel-caption d-none d-md-block"></div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>
        <div class="bestseller">
            <div class="head">
                熱銷商品
            </div>
            <div class="bsitem">
                <div class="bsitem1">
                    <a href="hf-item2.jsp">
                        <div class="bsimg">
                            <img src="img/flower/R06.jpg">
                        </div>
                        <div class="bsdetail">
                            <div class="bsname">
                                深緋
                            </div>
                            <div class="bsprice">
                                NT$1,980
                            </div>
                        </div>
                    </a>
                </div>
                <div class="bsitem2">
                    <a href="hf-item.jsp">
                        <div class="bsimg">
                            <img src="img/flower/C05.jpg">
                        </div>
                        <div class="bsdetail">
                            <div class="bsname">
                                聖誕頌歌
                            </div>
                            <div class="bsprice">
                                NT$1,500
                            </div>
                        </div>
                    </a>
                </div>
                <div class="bsitem3">
                    <a href="hf-item3.jsp">
                        <div class="bsimg">
                            <img src="img/flower/S02.jpg">
                        </div>
                        <div class="bsdetail">
                            <div class="bsname">
                                金盛丸
                            </div>
                            <div class="bsprice">
                                NT$350
                            </div>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </main>

    <footer>
        <div class="footerlogo">
            <img src="img/logo/logo.png" style="width: 150px;">
            <br>
			<h3>
            瀏覽人數：
            <%

try { // 例外處理
    Class.forName("com.mysql.jdbc.Driver"); // 啟動 JDBC 驅動程式
    try {	// 例外處理

        if(con.isClosed()) // con.isClosed() 回傳 ture 代表連線關閉
           out.println("警告：連線建立失敗！"); // 連線關閉代表連線沒有被建立
        else { // 連線成功建立就可以開始取得與更新資料庫的資料
				sql="use newschema"; // SQL 語法：使用 資料庫
				con.createStatement().execute(sql); // 執行上一行的 SQL
				sql="select * from `counter`"; // SQL 語法：取得 counter 資料表中的所有資料
				ResultSet rs=con.createStatement().executeQuery(sql); // ResultSet 用來儲存查詢結果 (*註解1)，將上一行 SQL 執行後並儲存結果
			while(rs.next()) // 一筆一筆讀取資料，回傳 false 表示讀取結束
				{
				Integer c= rs.getInt(2); // 取得資料表第一個欄位的資料到 c_S 這個字串中
				// 將 c_S 這個字串轉成 int 整數並存至 c 變數
				if (session.isNew()) { // 如果使用者是使用新的 Session 連入
					c++; // c 變數 +1
					out.print(c); // 印出 c 變數
									}
				else  // 如果使用者不是使用新的 Session 連入
					{
				out.print(c); // 直接印出 c 變數
					} 
			sql="update `counter` set `counter` ='" + c + "' where `idcounter` = '1'"; // SQL 語法：將 c 的數字更新到 counter 資料表中的 count 欄位
				}
			con.createStatement().execute(sql); // 執行剛剛的 SQL 語法
			con.close(); // 關閉 MySQL 連線
			}
		}
    catch (SQLException sExec) {
           out.println("警告：MySQL 錯誤！"+sExec.toString()); // MySQL 錯誤警告
    }
}
catch (ClassNotFoundException err) {
   out.println("警告：class 錯誤！"+err.toString()); // JDBC 錯誤警告
}
%>
            人
        </h3><br>
            <h3 class="name">初栖 Seventh Day</h3>
            <br>
            copyright © 2023 All Seventh Day
    </footer>
    <div class="clearfix"></div>

</body>

</html>
