// 星星
document.addEventListener("DOMContentLoaded", function () {

    const starRating = document.getElementById("star-rating");

    const starIcons = starRating.querySelectorAll(".star-icon");

    starIcons.forEach((icon) => {
        icon.addEventListener("click", function () {

            const clickedIndex = parseInt(this.getAttribute("data-index"));

            starIcons.forEach((singleIcon, index) => {

                if (index < clickedIndex) {
                    singleIcon.setAttribute("icon", "material-symbols:star");
                }

                else {
                    singleIcon.setAttribute("icon", "material-symbols:star-outline");
                }
            });

            console.log("Selected Rating: " + clickedIndex);
        });
    });
});

//數量
function minus(i) {
    var number = Number(document.getElementsByClassName("item_num")[i].value);
    if (number > 1) {
        number -= 1;
        document.getElementsByClassName("item_num")[i].value = number;
    } else window.alert("商品數量不得少於1");
}
function add(i) {
    var number = Number(document.getElementsByClassName("item_num")[i].value);
    if (number < 100) {
        number += 1;
        document.getElementsByClassName("item_num")[i].value = number;
    } else window.alert("商品數量不得超過100");

}

