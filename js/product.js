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

});

// 頁面跳轉
$(document).ready(function () {
    $('.accordion-toggle').on('click', function (e) {
        e.preventDefault();
        var targetPanel = $(this).data('target');
        $(targetPanel).collapse('toggle');
    });
});
