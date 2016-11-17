$(document).ready(function () {
    $("#ttLogout").on("click", function () {
        logout();
    });

    $(".home").on("click", function () {
        window.location.replace("index.php");
    });
});

function logout() {
    var jsonData = {
        "action": "LOGOUT",
    };

    $.ajax({
        url: "data/applicationLayer.php",
        type: "POST",
        data: jsonData,
        dataType: "json",
        contentType: "application/x-www-form-urlencoded",
        success: function (jsonResponse) {
            window.location.replace("login.php");
        },
        error: function (errorMessage) {
            alert(errorMessage);
        }
    });
}