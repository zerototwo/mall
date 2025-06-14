$(document).ready(function () {

    var path = $("#path").text();

    var currentPage = 1;

    to_page(path, 1);

});

$(document).on("click", ".templatemo-delete-btn", function () {
    var username = $(this).parents("tr").find("td:eq(1)").text();
    var userid = $(this).parents("tr").find("td:eq(0)").text();
    swal({
        title: "Are you sure you want to delete " + username + "?",
        type: "warning",
        showCancelButton: true,
        cancelButtonText: "Cancel",
        confirmButtonColor: "#DD6B55",
        confirmButtonText: "Delete!",
        closeOnConfirm: false,
    },
        function () {
            /*swal("Deleted!", "Your virtual file has been deleted.", "success");*/
            $.ajax({
                url: "/shop/admin/user/delete/" + userid,
                type: "DELETE",
                success: function (result) {
                    swal(result.msg, "", "success");
                    to_page('/shop', currentPage);
                },
                error: function () {
                    /*to_page('/shop',currentPage);*/
                }
            });
        });
});

function to_page(path, page) {
    $.ajax({
        url: path + "/admin/user/showjson",
        data: "page=" + page,
        type: "get",
        success: function (result) {

            // Parse and display
            build_user_table(path, result);

            // Page info
            build_page_info(path, result);

            // Pagination
            build_page_nav(path, result);

            currentPage = page;
        }
    });
}

function build_user_table(path, result) {
    $("#goodsinfo tbody").empty();
    var users = result.info.pageInfo.list;
    $.each(users, function (index, item) {
        var userid = $("<td></td>").append(item.userid);
        var username = $("<td></td>").append(item.username);
        var email = $("<td></td>").append(item.email);
        var telephone = $("<td></td>").append(item.telephone);

        var deleteBtn = $("<button></button>").addClass("templatemo-delete-btn").append("Delete");

        var deleteTd = $("<td></td>").append(deleteBtn);


        $("<tr></tr>").append(userid)
            .append(username)
            .append(email)
            .append(telephone)
            .append(deleteTd).appendTo("#goodsinfo tbody");
    })
}

function build_page_info(path, result) {
    $("#page-info-area").empty();
    $("#page-info-area").append("Current page " + result.info.pageInfo.pageNum + ", Total " + result.info.pageInfo.pages + " pages, Total " + result.info.pageInfo.total + " records")
}

function build_page_nav(path, result) {
    $("#page-div-nav ul").empty();
    var pageUl = $("<ul></ul>").addClass("pagination")

    var firstPage = $("<li></li>").append($("<a aria-label=\"Next\"></a>")
        .append($("<span aria-hidden=\"true\"></span>")
            .append("First")));

    var prePage = $("<li></li>").append($("<a aria-label=\"Next\"></a>")
        .append($("<span aria-hidden=\"true\"><i class=\"fa fa-backward\"></i></span>")));

    if (!result.info.pageInfo.hasPreviousPage) {
        prePage.addClass("li-none");
    } else {
        prePage.click(function () {
            to_page('/shop', result.info.pageInfo.prePage);
        });
    }

    // Jump to first page
    firstPage.click(function () {
        to_page('/shop', 1);
    });

    var nextPage = $("<li></li>").append($("<a aria-label=\"Next\"></a>")
        .append($("<span aria-hidden=\"true\"><i class=\"fa fa-forward\"></i></span>")));

    var lastPage = $("<li></li>").append($("<a aria-label=\"Next\"></a>")
        .append($("<span aria-hidden=\"true\"></span>")
            .append("Last")));

    if (!result.info.pageInfo.hasNextPage) {
        nextPage.addClass("li-none");
    } else {
        nextPage.click(function () {
            to_page('/shop', result.info.pageInfo.nextPage);
        });
    }

    lastPage.click(function () {
        to_page('/shop', result.info.pageInfo.lastPage);
    });

    pageUl.append(firstPage).append(prePage);

    $.each(result.info.pageInfo.navigatepageNums, function (index, item) {
        var numLi = $("<li></li>").append($("<a></a>")
            .append($("<span aria-hidden=\"true\"></span>").append(item)));
        if (result.info.pageInfo.pageNum === item) {
            numLi.addClass("active");
        }
        numLi.click(function () {
            to_page('/shop', item);
        });
        pageUl.append(numLi);
    });

    pageUl.append(nextPage).append(lastPage).appendTo("#page-div-nav");
}