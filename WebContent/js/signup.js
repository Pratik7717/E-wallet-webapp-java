/**
 * 
 */
 
 $(document).ready(function() {

    $("#loader").hide();
    $(".loader").hide();

    let fname=document.getElementById("fname");
    let lname=document.getElementById("lname");
    let mob=document.getElementById("mobile");
    let email=document.getElementById("email");
    let password=document.getElementById("password");
    

    fname.addEventListener('keyup',()=> {
        $("#fnameerror").hide();
    });
    lname.addEventListener('keyup',()=> {
        $("#lnameerror").hide();
    });
    mob.addEventListener('keyup',()=> {
        $("#moberror").hide();
    });
    email.addEventListener('keyup',()=> {
        $("#emailerror").hide();
    });
    password.addEventListener('keyup',()=> {
        $("#passerror").hide();
    });






    $("#form").submit((e) => {
        e.preventDefault();


        let fname=$("#fname").val();
        let lname=$("#lname").val();
        let mob=$("#mobile").val();
        let email=$("#email").val();
        let password=$("#password").val();

        let fnameerror=document.getElementById("fnameerror");
        let lnameerror=document.getElementById("lnameerror");
        let moberror=document.getElementById("moberror");
        let emailerror=document.getElementById("emailerror");
        let passerror=document.getElementById("passerror");
        let error=false;
        // form invalid if block
        if(fname==='' || fname==null) {
            $("#fnameerror").show();
            fnameerror.textContent="*Please enter a valid name";
            error=true;
        }
        if(lname==='' || lname==null) {
            lnameerror.textContent="*Please enter a valid name";
            $("#lnameerror").show();
            error=true;
        }
        if (/^\d{10}$/.test(mob)==false) {
            console.log("mob error");
            moberror.textContent="*Please enter a valid mobile number";
            $("#moberror").show();
            error=true;
        }
        if(validateEmail(email)==false || email=='') {
            emailerror.textContent="*Please enter a valid email";    
            $("#emailerror").show();
            error=true;
        }
        if(password.length<6) {
            $("#passerror").show();
            passerror.textContent="*we highly recommend to set a strong password"
            error=true;
        }

        // no error if block..ajax request to servlet
        if(error==false) {
            $(".loader").show();
            $("#content").hide();
            $.ajax({
                type : "POST",
                url : "RegisterController",
                data : {
                    fname : fname,
                    lname : lname,
                    mobile : mob,
                    email : email,
                    password : password
                },
                success : function(data) {
                	if(data!="error")
                    	window.location="verify.jsp";
                    else {
                    	alert("we got error while sending an email");
                    	$(".loader").hide();
            			$("#content").show();
                    }
                },
                error : function() {
                    alert("error in transfering req to register controller")
                }
            })



        }


    });






    function validateEmail(email) {
        const re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        return re.test(email);
    }






}) ;