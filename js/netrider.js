$(function() {

    $("input,textarea").jqBootstrapValidation({
        preventSubmit: true,
        submitError: function($form, event, errors) {
            // additional error messages or events
        },
        submitSuccess: function($form, event) {
            event.preventDefault(); // prevent default submit behaviour
			// get values from geekday form
            var netTeamName = $("input#netTeamName").val();
            var netFirst = $("input#netFirst").val();
            var netSecond = $("input#netSecond").val();
            var netFirstIC = $("input#netFirstIC").val();
            var netSecondIC = $("input#netSecondIC").val();
            var netFirstNum = $("input#netFirstNum").val();
            var netSecondNum = $("input#netSecondNum").val();
			
            var firstName = netTeamName; // For Success/Failure Message
            // Check for white space in name for Success/Fail message
            if (firstName.indexOf(' ') >= 0) {
                firstName = netTeamName.split(' ').slice(0, -1).join(' ');
            }
            $.ajax({
                url: "././register/netrider.php",
                type: "POST",
                data: {					
					//geekday form
					netTeamName: netTeamName,
                    netFirst: netFirst,
					netSecond: netSecond,
                    netFirstIC: netFirstIC,
					netSecondIC: netSecondIC,
                    netFirstNum: netFirstNum,
					netSecondNum: netSecondNum,
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
$('#netTeamName').focus(function() {
    $('#success').html('');
});
