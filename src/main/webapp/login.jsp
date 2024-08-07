<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
    <style>
        @media(max-width: 700px) {
            .no-mobile {
                visibility: hidden;
                display: none;
            }
        }
    </style>
</head>
<body>
<section class="row" style="width: 100%;">
    <div class="col-sm-1 no-mobile"></div>
    <div class="col-sm-4 no-mobile" style="height: 100vh; display: flex; justify-content: center; align-items: center;">
        <img src="${pageContext.request.contextPath}/images/elearninglogo.png" alt="logo" class="img-fluid">
    </div>
    <div class="col-sm-7" style="height: 100vh; display: flex; justify-content: center; align-items: center;">
        <div class="">
            <div class="row">
                <div class="col-sm-8 mx-auto">
                    <div class="card">
                        <div class="card-header bg-white text-center h4 text-white">
                            <img src="${pageContext.request.contextPath}/images/elearninglogo.png" alt="image" width="60%"/>
                        </div>
                        <div class="card-body">
                            <form id="loginForm" autocomplete="on">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-envelope-o"></i></span>
                                        </div>
                                        <input type="email" class="form-control" name="email" id="email" placeholder="you@awesome.com" required>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="pass">Password</label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-key" aria-hidden="true"></i></span>
                                        </div>
                                        <input type="password" name="pass" id="pass" class="form-control" placeholder="Enter Password" required>
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <%--<div class="col-sm-7">
                                        <a href="PasswordHELP.html" class="btn btn-outline-primary">Forget Password</a>
                                    </div>--%>
                                    <button type="button" id="loginButton" class="btn btn-primary text-white col-sm-4">
                                        <i class="fa fa-unlock-alt" aria-hidden="true"></i> LogIn
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="pt-3 text-center">
                        <small>
                            Don't have an account?
                            <a href="register.html">Register now</a>
                        </small>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<script>
    $(document).ready(function() {
        toastr.options = {
            "closeButton": true,
            "debug": false,
            "newestOnTop": true,
            "progressBar": true,
            "positionClass": "toast-top-right",
            "preventDuplicates": true,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "slideDown",
            "hideMethod": "fadeOut"
        };

        $('#loginButton').on('click', function(event) {
            event.preventDefault();
            let formData = {
                email: $('#email').val(),
                pass: $('#pass').val()
            };

            $.ajax({
                type: 'POST',
                url: 'verify',
                data: formData,
                success: function(response) {
                    if (response.trim() === 'success') {
                        window.location.href = 'home.jsp';
                    } else {
                        toastr.error(response.trim());
                        $('#email').val('');
                        $('#pass').val('');
                    }
                },
                error: function(xhr, status, error) {
                    toastr.error('An error occurred: ' + xhr.responseText);
                }
            });
        });
    });
</script>
</body>
</html>
