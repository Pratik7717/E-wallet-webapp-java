/**
 * 
 */
 $(document).ready(function() {
    $("#loader").hide();
    $(".loader").hide();

    $("#form").submit((e) => {
        console.log("hello..");
        let email=$("#email").val();
        let password=$("#password").val();
        e.preventDefault();
        $(".loader").show();
        $("#content").hide();
        $.ajax({
            type : "POST",
            url : "LoginController",
            data : {
                email : email,
                password : password
            },
            success : function(data) {
                window.location="dashboard.jsp";
            },
            error : function() {
                $(".loader").hide();
                $("#content").show();
                alert("error in transfering req to login controller")
            }
        });
    });
});