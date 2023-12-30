let currentPage = 1;
showPage(currentPage);

function showPage(pageNumber) {
    document.getElementById("page1").style.display = "none";
    document.getElementById("page2").style.display = "none";

    document.getElementById("page" + pageNumber).style.display = "block";
}

let currentTag = 1;
showTag(currentTag);

function showTag(TagNumber) {
    document.getElementById("tag1").style.display = "none";
    document.getElementById("tag2").style.display = "none";
    document.getElementById("tag3").style.display = "none";
    document.getElementById("tag4").style.display = "none";

    document.getElementById("tag" + TagNumber).style.display = "block";
}
