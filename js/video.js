$(function() {

    $("input,textarea").jqBootstrapValidation({
        preventSubmit: true,
        submitError: function($form, event, errors) {
            // additional error messages or events
        },
        submitSuccess: function($form, event) {
            event.preventDefault(); // prevent default submit behaviour
			// get values from geekday form
            var vidTeamName = $("input#vidTeamName").val();
            var vidFirst = $("input#vidFirst").val();
            var vidSecond = $("input#vidSecond").val();
			var vidThird = $("input#vidThird").val();
            var vidFirstIC = $("input#vidFirstIC").val();
            var vidSecondIC = $("input#vidSecondIC").val();
            var vidThirdIC = $("input#vidThirdIC").val();
            var vidFirstNum = $("input#vidFirstNum").val();
            var vidSecondNum = $("input#vidSecondNum").val();
            var vidThirdNum = $("input#vidThirdNum").val();
			
            var firstName = vidTeamName; // For Success/Failure Message
            // Check for white space in name for Success/Fail message
            if (firstName.indexOf(' ') >= 0) {
                firstName = vidTeamName.split(' ').slice(0, -1).join(' ');
            }
            $.ajax({
                url: "././register/video.php",
                type: "POST",
                data: {					
					//geekday form
					vidTeamName: vidTeamName,
                    vidFirst: vidFirst,
					vidSecond: vidSecond,
					vidThird: vidThird,
                    vidFirstIC: vidFirstIC,
					vidSecondIC: vidSecondIC,
					vidThirdIC: vidThirdIC,
                    vidFirstNum: vidFirstNum,
					vidSecondNum: vidSecondNum,
					vidThirdNum: vidThirdNum,
                },
                cache: false,
                success: function() {
                    // Success message
                    $('#success').html("<div class='alert alert-success'>");
                    $('#success > .alert-success').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
                        .append("</button>");
                    $('#success > .alert-success')
                        .append("<strong>Your team registration is successful. </strong>");
                    $('#success > .alert-success')
                        .append('</div>');

                    //clear all fields
                    $('#contactForm').trigger("reset");
                },
                error: function() {
                    // Fail message
                    $('#success').html("<div class='alert alert-danger'>");
                    $('#success > .alert-danger').html("<button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;")
                        .append("</button>");
                    $('#success > .alert-danger').append("<strong>Sorry " + firstName + ", it seems that my mail server is not responding. Please try again later!");
                    $('#success > .alert-danger').append('</div>');
                    //clear all fields
                    $('#contactForm').trigger("reset");
                },
            })
        },
        filter: function() {
            return $(this).is(":visible");
        },
    });

    $("a[data-toggle=\"tab\"]").click(function(e) {
        e.preventDefault();
        $(this).tab("show");
    });
});


/*When clicking on Full hide fail/success boxes */
$('#vidTeamName').focus(function() {
    $('#success').html('');
});
