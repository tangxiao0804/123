<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>鮮花故事</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous">
        </script>
    <script>
        function openNewWindow() {
            window.open('https://ezgo.ardswc.gov.tw/Flower', '_blank');
        }
    </script>
    <link rel="stylesheet" href="css/header.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/member.css">
    <link rel="stylesheet" href="css/flower.css">
    <link rel="shortcut icon" href="img/logo/logo.png" type="image/x-icon">
</head>

<body>
    <header>
        <%@ include file="header.jsp" %>
    </header>
    <main>
        <div class="fcontainer">
            <div class="flowerbanner">
                <img src="img/flower/intbanner01.jpg">
                <div class="fname">
                    <a>薄荷</a>
                </div>
            </div>
            <div class="finfo1">
                <div class="intro">
                    <h2>薄荷&nbsp&nbsp&nbsp&nbspMint</h2>
                    <div class="infotext">
                        薄荷屬包含了25個種，除少數為一年生植物外，大部份均為具有香味的多年生植物。而其品種多達二千多種。現在市面上薄荷的種類很多，以
                        綠薄荷、蘇格蘭薄荷、蘋果薄荷、香蕉薄荷等較多,偏愛微濕土壤，全日照、半日照或部份遮蔭的環境皆可。
                    </div>
                    <div class="infotext1">
                        花語:<br>
                        "願與你再次相遇"<br>
                        1.永遠的愛，意旨純潔的愛情。<br>
                        2.良好的品德、美德，指人品德高尚、謙虛有禮。<br>
                        3.真誠的友誼，表示待人坦承。<br>
                        贈送對象:<br>
                        戀人、朋友(同性、異性)<br>
                        <!-- 某位夥伴很愛薄荷所以它莫名其妙地在第一個 -->
                    </div>
                </div>
                <div class="right">
                    <div class="pic1">
                        <img src="img/flower/mint01.jpg">
                    </div>
                    <div class="pic1">
                        <img src="img/flower/mint02.jpg">
                    </div>
                </div>
            </div>
            <div class="flowerbanner">
                <img src="img/flower/intbanner02.jpg">
                <div class="fname">
                    <a>向日葵</a>
                </div>
            </div>
            <div class="finfo1">
                <div class="left">
                    <div class="pic2">
                        <img src="img/flower/sunflower01.jpg">
                        <img src="img/flower/sunflower02.jpg">
                        <img src="img/flower/sunflower03.jpg">
                        <img src="img/flower/sunflower04.jpg">
                    </div>
                </div>
                <div class="intro2">
                    <h2>向日葵&nbsp&nbsp&nbsp&nbspSunflower</h2>
                    <div class="infotext">
                        向日葵主要是因花序隨太陽轉動的特性，加上「葵」有著「花向四方旋轉綻放」的含義而所命名。英文名為「Sun flower」，就如同太陽的花般，帶給人們充滿元氣的力量，以及活潑明亮形象。
                    </div>
                    <div class="infotext1">
                        花語:<br>
                        信念、光輝、高傲、忠誠、愛慕、溫暖、陽光，也代表沉默的愛。<br>
                        1 枝向日葵：花語代表著絕對忠誠、專一。表示你是我的唯一。<br>
                        5 枝向日葵：代表著偉大美好的愛情。<br>
                        6 枝向日葵：適合在畢業季節送給畢業生，象徵鵬程萬里，祝福對方順順利利。<br>
                        7 枝向日葵：象徵著幸運，有著 lucky 7 的數字 7，代表祝福著對方好運連連。<br>
                        9 枝向日葵：代表長長久久。<br>
                        11 枝向日葵：有兩個 1，象徵著想跟你一生一世一直在一起。<br>
                        贈送對象:<br>
                        戀人、朋友、長輩、同事
                    </div>
                </div>
            </div>
            <div class="flowerbanner">
                <img src="img/flower/intbanner03.jpg">
                <div class="fname">
                    <a>山茶花</a>
                </div>
            </div>
            <div class="finfo1">
                <div class="intro3">
                    <h2>山茶花&nbsp&nbsp&nbsp&nbspCamellia</h2>
                    <div class="infotext">
                        山茶花原產於中國，雲南大理被視為山茶花的故鄉，人類種植迄今約有2700 多年之久。中國的山茶花約有180 多種，占全球茶花種類90% 之多。7 世紀時傳入日本，18
                        世紀時傳入歐洲，均受到熱烈的喜愛，成為日常栽培的觀賞花木之一。
                    </div>
                </div>
                <div class="pic3">
                    <img src="img/flower/camellia.jpg">
                </div>
                <div class="infotext3">
                    花語:<br>
                    雲南人民稱山茶花為勝利之花，山茶花開代表了戰勝的喜悅。<br>
                    理想的愛、謙讓、謹慎、高潔孤傲<br>
                    白色山茶花：純真無邪、你怎能輕視我的愛情、可愛，<br>
                    完美之魅力、真情、理想之戀、清雅。<br>
                    紅色山茶花：天生麗質、謙遜之美德、高潔的理性。<br>
                    粉色山茶花：是你的愛讓我越變越美麗、克服困難。<br>
                    贈送對象:<br>
                    123123
                </div>
            </div>
            <div class="flowerbanner">
                <img src="img/flower/intbanner04.jpg">
                <div class="fname">
                    <a>矢車菊</a>
                </div>
            </div>
            <div class="finfo1">
                <div class="pic4-1">
                    <img src="img/flower/Cornflower01.jpg">
                </div>
                <div class="intro4">
                    <h2>矢車菊&nbsp&nbsp&nbsp&nbspCornflower</h2>
                    <div class="infotext">
                        矢車菊原生於歐洲，是德國的國花，但在英國鄉村路邊到處可見。小巧的矢車菊，花朵樣子很獨特，全是管狀花，花蕊上圍繞一圈像是迷你百合的花瓣，看起來就像日本的一種風車「矢車」，所以稱為矢車菊。
                    </div>
                    <div class="infotext1">
                        花語:<br>
                        遇見幸福<br>
                        不同色彩的矢車菊也有不同的意義：藍色代表遇見、幸福，白色代表純潔、輕鬆，紅色是熱情、犧牲，黃色代表尊貴、優雅，粉色代表青春、明快，紫色則代表愉快。<br>
                        贈送對象:<br>
                        暗戀對象、戀人、好友
                    </div>
                </div>
                <div class="pic4-2">
                    <img src="img/flower/Cornflower02.jpg">
                </div>
            </div>
        </div>
        <input type="button" class="morebtn" value="查看更多" onclick="openNewWindow()">
    </main>

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