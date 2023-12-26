$(document).ready(function(){
    //signin
    $("#signin-btn").on("click",function(e){

        e.preventDefault();
        $("#signin-btn").prop("disabled",true);                    
        $("#signin-btn").html("<img id='button-loader' src='/assets/img/defaults/rolling.gif'/>")
        var dataserial=$("#form-signin").serialize();
        var hidden=$("body").attr("data-hidden");
        dataserial=dataserial+"&csrf-tkn="+hidden
        $.ajax
        ({
            url:"/model/mod-signin.php",	
            type:"POST",
            data: dataserial,
            success:function(JSONObject)
            {	
                $("#signin-btn").prop("disabled",false);
                //$("body").html(JSONObject);
                var jsonObject={};
                jsonObject = JSON.parse(JSONObject);
                if(jsonObject["action"]=="0")
                {	
                    $.each(jsonObject, function(index, value){
                        if(index=="contact" || index=="password"){

                            $("#signin-err").fadeIn().html("All fields are required");

                        }else if(index=="err"){

                            $("#signin-err").fadeIn().html(value);
                        }
                        
                    });
                    $("#signin-btn").html("Try Again")
                }else 
                if(jsonObject["action"]=="1")
                {
                    $("#form-signin").trigger("reset");
                    window.location.href="/home";
                }
                else if(jsonObject["action"]=="2")
                {
                    $("#signin-err").fadeIn().html("<p>Unable to signin. Please Try Again</p>");
                    $("#signin-btn").html("Try Again")
                }
            }
        })

    })	

    //signup
    $("#signup-btn").on("click",function(e){

		$(".err").hide().html("");
        e.preventDefault();
        $("#signup-btn").prop("disabled",true);                    
        $("#signup-btn").html("<img id='button-loader' src='/assets/img/defaults/rolling.gif'/>")
        var dataserial=$("#form-signup").serialize();
        var hidden=$("body").attr("data-hidden");
        dataserial=dataserial+"&csrf-tkn="+hidden
        $.ajax
        ({
            url:"/model/mod-signup.php",	
            type:"POST",
            data: dataserial,
            success:function(JSONObject)
            {	
                $("#signup-btn").prop("disabled",false);
                // $("body").html(JSONObject);
                var jsonObject={};
                jsonObject = JSON.parse(JSONObject);
                if(jsonObject["action"]=="0")
                {	
                    $.each(jsonObject, function(index, value){
                        $("#"+index+"-err").fadeIn().html(value);
                    });

                    $("#signup-btn").html("Try Again")
                    
                }else 
                if(jsonObject["action"]=="1")
                {
                    $("#form-signup").trigger("reset");
                    window.location.href="/welcome";
                }
                else if(jsonObject["action"]=="2")
                {
                    $("#signup-err").fadeIn().html("<p>Unable to signup. Please Try Again</p>");
                    $("#signup-btn").html("Try Again")
                }
            }
        })
    })

    //start-recovery
    $("#start-recovery-btn").on("click",function(e){

        e.preventDefault();
        $("#start-recovery-btn").prop("disabled",true);                    
        $("#start-recovery-btn").html("<img id='button-loader' src='/assets/img/defaults/rolling.gif'/>")
        var dataserial=$("#form-start-recovery").serialize();
        var hidden=$("body").attr("data-hidden");
        dataserial=dataserial+"&csrf-tkn="+hidden
        $.ajax
        ({
            url:"/model/start-recovery.php",	
            type:"POST",
            data: dataserial,
            success:function(JSONObject)
            {	
                $("#start-recovery-btn").prop("disabled",false);
                //$("body").html(JSONObject);
                var jsonObject={};
                jsonObject = JSON.parse(JSONObject);
                if(jsonObject["action"]=="0")
                {	
                    $.each(jsonObject, function(index, value){
                        if(index=="contact"){

                            $("#start-recovery-err").fadeIn().html(value);

                        }else if(index=="err"){

                            $("#start-recovery-err").fadeIn().html(value);
                        }
                        
                    });
                    
                    $("#start-recovery-btn").html("Try Again")
                    
                }else 
                if(jsonObject["action"]=="1")
                {
                    $("#form-start-recovery").trigger("reset");
                    window.location.href="/proceed-recovery";
                }
                else if(jsonObject["action"]=="2")
                {
                    $("#start-recovery-err").fadeIn().html("<p>Unable to Reset. Please Try Again</p>");
                    $("#start-recovery-btn").html("Try Again")
                }
            }
        })

    })

    /* // verify-welcome
    $("#verify-btn").on("click",function(e){

        e.preventDefault();
        $("#verify-btn").prop("disabled",true);                    
        $("#verify-btn").html("<img id='button-loader' src='/assets/img/defaults/rolling.gif'/>")
        var dataserial=$("#form-verify").serialize();
        var hidden=$("body").attr("data-hidden");
        dataserial=dataserial+"&csrf-tkn="+hidden
        $.ajax
        ({
            url:"/model/verify-contact.php",	
            type:"POST",
            data: dataserial,
            success:function(JSONObject)
            {	
                $("#verify-btn").prop("disabled",false);
                $("body").html(JSONObject);
                var jsonObject={};
                jsonObject = JSON.parse(JSONObject);
                if(jsonObject["action"]=="0")
                {	
                    $.each(jsonObject, function(index, value){
                        if(index=="code"){

                            $("#verify-err").fadeIn().html(value);

                        }else if(index=="err"){

                            $("#verify-err").fadeIn().html(value);
                        }
                        
                    });
                    
                    $("#verify-btn").html("Try Again")
                    
                }else 
                if(jsonObject["action"]=="1")
                {
                    $("#form-verify").trigger("reset");
                    window.location.href="/verify";
                }
                else if(jsonObject["action"]=="2")
                {
                    $("#verify-err").fadeIn().html("<p>Unable to verify account. Please Try Again</p>");
                    $("#reset-btn").html("Try Again")
                }
            }
        })

    })

    // verify-proceed
    $("#proceed-verify-btn").on("click",function(e){

        e.preventDefault();
        $("#proceed-verify-btn").prop("disabled",true);                    
        $("#proceed-verify-btn").html("<img id='button-loader' src='/assets/img/defaults/rolling.gif'/>")
        var dataserial=$("#form-verify").serialize();
        var hidden=$("body").attr("data-hidden");
        dataserial=dataserial+"&csrf-tkn="+hidden
        $.ajax
        ({
            url:"/model/verify-contact.php",	
            type:"POST",
            data: dataserial,
            success:function(JSONObject)
            {	
                $("#proceed-verify-btn").prop("disabled",false);
                $("body").html(JSONObject);
                var jsonObject={};
                jsonObject = JSON.parse(JSONObject);
                if(jsonObject["action"]=="0")
                {	
                    $.each(jsonObject, function(index, value){
                        if(index=="code"){

                            $("#verify-err").fadeIn().html(value);

                        }else if(index=="err"){

                            $("#verify-err").fadeIn().html(value);
                        }
                        
                    });
                    
                    $("#proceed-verify-btn").html("Try Again")
                    
                }else 
                if(jsonObject["action"]=="1")
                {
                    $("#form-verify").trigger("reset");
                    var tm=$("body").attr("data-tm");
                    var rp=jsonObject["code"];
                    window.location.href="/reset-password?t=2&rp="+rp+"&tm="+tm;
                }
                else if(jsonObject["action"]=="2")
                {
                    $("#verify-err").fadeIn().html("<p>Unable to verify account. Please Try Again</p>");
                    $("#reset-btn").html("Try Again")
                }
            }
        })

    }) */
    //resend verification
     $("#resend").on("click",function(e){       
        $("#img-loader").show();
        $.ajax
        ({
            url:"/model/resend-verification.php",	
            type:"POST",
            success:function(JSONObject)
            {	
                $("#img-loader").hide();
            }
        })

    })

    //signin
    $("#reset-btn").on("click",function(e){

        e.preventDefault();
        $("#reset-btn").prop("disabled",true);                    
        $("#reset-btn").html("<img id='button-loader' src='/assets/img/defaults/rolling.gif'/>")
        var dataserial=$("#form-reset").serialize();
        var hidden=$("body").attr("data-hidden");
        dataserial=dataserial+"&csrf-tkn="+hidden
        $.ajax
        ({
            url:"/model/mod-reset-password.php",	
            type:"POST",
            data: dataserial,
            success:function(JSONObject)
            {	
                $("#reset-btn").prop("disabled",false);
                //$("body").html(JSONObject);
                var jsonObject={};
                jsonObject = JSON.parse(JSONObject);
                if(jsonObject["action"]=="0")
                {	
                    $.each(jsonObject, function(index, value){
                        $("#"+index+"-err").fadeIn().html(value);
                    });

                    $("#reset-btn").html("Try Again")
                    
                }else 
                if(jsonObject["action"]=="1")
                {
                    $("#form-reset").trigger("reset");
                    window.location.href="/login";
                }
                else if(jsonObject["action"]=="2")
                {
                    $("#reset-err").fadeIn().html("<p>Unable to reset. Please Try Again</p>");
                    $("#reset-btn").html("Try Again")
                }
            }
        })

    })

})