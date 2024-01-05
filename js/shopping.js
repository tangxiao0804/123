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

function backToMember() {
  window.alert("已完成結帳\n(按下確認後將跳回會員頁)");
  window.location.href = "member.html";
}