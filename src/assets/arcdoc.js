var pages = [/* DO NOT REMOVE, WILL BE FILLED BY GRADLE */];

$(document).ready(function () {
    $(".container img").addClass("img-responsive");
    $(".container table").addClass("table table-bordered table-hover");

    $("#search-content").hide();

    addSearch();

    $("#search-form").submit(function (event) {
        executeSearch();

        event.preventDefault();
    });
});

function addSearch() {
    pages.forEach(function (page) {
        var normalizedId = normalizeId(page);
        var contentDiv;
        var content;

        $("#search-content").append("<div id=\"" + page + "\"></div>");
        $(normalizedId).load(page + " #content", function () {
            contentDiv = $(normalizedId).find("#content");

            contentDiv.replaceWith(contentDiv.text().toLowerCase());
        });
    });
}

function executeSearch() {
    var query = $("#search-form").find("input[name=query]").val().toLowerCase();
    var foundPages = [];

    $("#search-result, #not-found").empty();

    if (query) {
        $("#search-content").find("div:contains('" + query + "')").each(function (index) {
            foundPages.push($(this).attr("id"));
        });
    }

    if (foundPages.length > 0) {
        foundPages.sort();
        foundPages.forEach(function (page) {
            $("#search-result").append("<li><a href=\"" + page + "\">" + page + "</a></li>");
        });
    } else {
        $("#not-found").text("Suchbegriff \"" + query + "\" nicht gefunden.");
    }

    $('#search-result-modal').modal();
}

function normalizeId(id) {
    return "#" + id.replace(/(:|\.|\[|\]|,|=)/g, "\\$1");
}