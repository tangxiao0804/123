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

    function prevPage() {
        if (currentPage > 1) {
            currentPage = currentPage - 1;
        }
        showPage(currentPage);
    }

    function nextPage() {
        const pageCount = document.querySelectorAll('.list-item').length;
        if (currentPage < pageCount) {
            currentPage = currentPage + 1;
        }
        showPage(currentPage);
    }

    document.getElementById('prevButton').addEventListener('click', prevPage);
    document.getElementById('nextButton').addEventListener('click', nextPage);

    document.querySelectorAll('.page-button').forEach(button => {
        button.addEventListener('click', function () {
            const pageNumber = parseInt(this.dataset.page);
            showPage(pageNumber);
        });
    });

    document.querySelectorAll('#collapseOne a, #collapseTwo a').forEach(function (link) {
        link.addEventListener('click', function (event) {
            event.preventDefault();

            var linkText = this.textContent.trim();

            var targetPageNumber = 1;

            if (linkText === "聖誕限定") {
                targetPageNumber = 1;
            }

            if (linkText === "歡慶畢業") {
                targetPageNumber = 2;
            }

            if (linkText === "浪漫首選") {
                targetPageNumber = 3;
            }
            if (linkText === "新品") {
                targetPageNumber = 4;
            }
            if (linkText === "花束") {
                targetPageNumber = 5;
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