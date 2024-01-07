<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<div class="logohead">
    <div class="logopic">
        <a href="index.jsp">
            <img src="img/logo/logo.png" style="width: 100%;">
        </a>
    </div>
</div>

<nav>
    <a href="index.jsp">首&nbsp&nbsp頁</a>
    <div class="itemlist">
        <div class="dropdown">
            <div class="dropbtn">
                <a href="product.jsp">初栖選品</a>
            </div>
            <div class="dropdown-content">
                <a href="product.jsp#collapseOne">鮮花</a>
                <a href="product2.jsp#collapseTwo">永生花</a>
                <a href="product3.jsp">多肉植物</a>
            </div>
        </div>
    </div>
    <a href="flower.jsp">鮮花故事</a>
    <a href="aboutus.jsp">關於我們</a>
    <a href="member.jsp">會員中心</a>
</nav>
<div class="head3">
    <form method="post" action="search.jsp">
    <div class="flexbox">
        <div class="search">
            <div>
                <input type="text" placeholder="尋找產品" name="search">
            </div>
            
                
            
        </div>
    </div>
    </form>
    <%
if(session.getAttribute("uaccount") !=null && !session.getAttribute("uaccount").equals(""))
{


%>
    <div><a href="./logout.jsp">
            <h4>登出</h4></a>
    </div>
<% }else{%>
    <div class="loginicon">
        <a href="#" type="button" data-bs-toggle="modal" data-bs-target="#loginModal">
            <img src="img/icon/account.png" class="icon">
        </a>
    </div>
    <% } %>
    <div class="shoppingicon">
        <a href="hf-soppingcart.jsp">
            <img src="img/icon/shopping-cart.png" class="icon1">
        </a>
    </div>

</div>
<div class="container modal fade" id="loginModal">
    <div class="welcome modal-dialog">
        <div class="modal-content">
            <div class="pinkbox">
                <div class="signup nodisplay">
                    <h1>註冊</h1>
                    <form autocomplete="off" method="post" action="add.jsp">
                        <input type="text" placeholder="用戶名稱" name="id">
                        <input type="email" placeholder="電子郵件" name="mail">
                        <input type="password" placeholder="密碼" name="pwd">
                        <input type="password" placeholder="確認密碼" name="pwd">
                        <input type="submit" class="button_login submit" value="創建帳戶">
						
                    </form>
                </div>
                <div class="signin">
                    <h1>登入</h1>
                    <form class="more-padding" autocomplete="off" method="post" action="check.jsp">
                        <input type="text" placeholder="用戶名稱" name="id">
                        <input type="password" placeholder="密碼" name="pwd">
                        <div class="checkbox">
                            <input type="checkbox" id="remember" /><label for="remember">記住我</label>
                        </div>
                        <input type="submit" class="button_login submit" value="登入">
                    </form>
                </div>
            </div>
            <div class="leftbox">
                <h2 class="title"><span>BLOOM</span>&<br>BOUQUET</h2>
                <p class="desc">pick your perfect <span>bouquet</span></p>
                <img class="flower smaller" src="https://image.ibb.co/d5X6pn/1357d638624297b.jpg" alt="1357d638624297b"
                    style="border:0">
                <p class="account">已經有帳號了嗎?</p>
                <input type="button" class="button_login" id="signin" value="登入">
            </div>
            <div class="rightbox">
                <h2 class="title"><span>BLOOM</span>&<br>BOUQUET</h2>
                <p class="desc"> pick your perfect <span>bouquet</span></p>
                <img class="flower" src="https://preview.ibb.co/jvu2Un/0057c1c1bab51a0.jpg" />
                <p class="account">還沒有帳號嗎?</p>
                <input type="button" class="button_login" id="signup" value="註冊">
            </div>
        </div>
    </div>
</div>

<script src="js/login.js"></script>