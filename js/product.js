console.log('讓我過rrrrrrrrrrrrr');
document.addEventListener("DOMContentLoaded", function () {
    let currentPage = 1;
    showPage(currentPage);

    function showPage(pageNumber) {
        document.querySelectorAll('.list-item').forEach(page => {
            page.classList.remove('active');
        });

        let targetPage = document.getElementById(`page${pageNumber}`);
        if (targetPage) {
            targetPage.classList.add('active');
            currentPage = pageNumber;
        }
    }
    
    document.querySelectorAll('#collapseOne a, #collapseTwo a').forEach(function (link) {
        link.addEventListener('click', function (event) {
            event.preventDefault();

            var linkText = this.textContent.trim();

            var targetPageNumber = 1;

            if (linkText === "浪漫首選") {
                targetPageNumber = 1;
            }

            if (linkText === "歡慶畢業") {
                targetPageNumber = 2;
            }

            if (linkText === "聖誕限定") {
                targetPageNumber = 3;
            }

            showPage(targetPageNumber);
        });
    });


});

$(document).ready(function () {
    $('.accordion-toggle').on('click', function (e) {
        e.preventDefault();
        var targetPanel = $(this).data('target');
        $(targetPanel).collapse('toggle');
    });
});
