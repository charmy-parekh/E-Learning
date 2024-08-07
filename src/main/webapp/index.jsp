<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sharp - E-Learning Platform</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="themify-icons/themify-icons.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="index.css">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:700,900&display=swap" rel="stylesheet">

    <style>
        .header-bg {
            background-color: #51be78;
            color: white;
        }

        .footer-bg {
            background-color: #51be78;
            color: white;
        }

        .mt20{
            margin-top:20px;
        }

        .feature-1-title {
            font-size: 1.5rem;
            font-weight: 600;
            margin-bottom: 1rem;
        }

        .feature-1 {
            background: #fff;
            padding: 1.5rem;
            border: 1px solid #e5e5e5;
            border-radius: 0.5rem;
        }

        .feature-1 ul {
            padding-left: 1.5rem;
        }

        .feature-1 ul li {
            margin-bottom: 0.5rem;
        }

        .feature-1 p {
            margin-bottom: 1rem;
            text-align: justify; /* Justify text */
        }

    </style>
</head>
<body>

<div class="container">
    <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
            <div class="col-4">
                <img src="${pageContext.request.contextPath}/images/elearninglogo.png" alt="E-Learning Logo" width="80%">
            </div>
            <div class="col-4 d-flex justify-content-end">
                <a class="btn btn-sm btn-outline-success me-2" href="register.html">Sign up</a>
                <a class="btn btn-sm btn-outline-success" href="login.jsp">Login</a>
            </div>
        </div>
    </header>

    <main class="container">
        <div class="p-4 p-md-5 mb-4 text-white rounded header-bg">
            <div class="px-0">
                <h1 class="display-4 fst-italic">An Online E-Learning Platform</h1>
                <p class="lead my-3">With new Video Lock feature and Organized Video Systems.</p>
            </div>
        </div>

        <div class="site-section">
            <div class="container">
                <div class="row mb-5 justify-content-center text-center">
                    <div class="col-lg-4 mb-5">
                        <h2 class="section-title-underline mb-5">
                            <span>Category</span>
                        </h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <div class="feature-1 border">
                            <div class="icon-wrapper bg-primary"
                                 style="font-size: 50px; text-align: center; color: white; padding: 5px;">
                                <i class="ti-html5"></i>
                            </div>
                            <div class="feature-1-content">
                                <h2>Web Programming</h2>
                                <p>HTML, CSS3, JavaScript, PHP</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <div class="feature-1 border">
                            <div class="icon-wrapper bg-primary" style="font-size: 50px; text-align: center; color: white;">
                                <i class="ti-stack-overflow"></i>
                            </div>
                            <div class="feature-1-content">
                                <h2>Basic Programming</h2>
                                <p>C/C++, Java, Python, Ruby, Pascal</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                        <div class="feature-1 border">
                            <div class="icon-wrapper bg-primary"
                                 style="font-size: 50px; text-align: center; color: white; padding: 5px;">
                                <i class="ti-android"></i>
                            </div>
                            <div class="feature-1-content">
                                <h2>Mobile Programming</h2>
                                <p>Flutter, Typescript, Kotlin, Swift</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="section-bg style-1 mb-4 mt-4">
            <div class="container">
                <div class="row">
                    <div class="feature-1 border p-4 mb-4 d-flex flex-row align-items-center">
                        <div class="col p-4 d-flex flex-column position-static">
                            <h3 class="feature-1-title">Are You a Student?</h3>
                            <p class="card-text mb-auto mt-1">Looking to upgrade your skills?
                            <p class="card-text mb-auto mt-1">Our E-Learning platform offers a wide range of courses to help you achieve your goals.</p>
                            <p class="card-text mb-auto mt-1">Sign up using the link below and start learning today!</p>
                            <a href="register.html" class="btn btn-primary mt-3">Sign Up</a>
                        </div>
                        <div class="col-auto d-none d-lg-block">
                            <img src="${pageContext.request.contextPath}/images/student.png" alt="Student" class="img-fluid rounded" style="max-width: 200px;">
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="feature-1 border section-bg style-1" style="background-color: #51be76; color:white;">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
                        <span class="icon flaticon-mortarboard"></span>
                        <h3>Philosophy</h3>
                        <p>Bring value to customers: The website should focus on providing high quality courses,
                            Meet users' learning needs and bring real value to customers.</p>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
                        <span class="icon flaticon-school-material"></span>
                        <h3>Rule</h3>
                        <p>Students need to be given the most favorable conditions to study.
                            The learning environment needs to be designed so that students can access learning materials and participate
                            learning activities with ease.</p>
                    </div>
                    <div class="col-lg-4 col-md-6 mb-5 mb-lg-0">
                        <span class="icon flaticon-library"></span>
                        <h3>The key to success</h3>
                        <p>Proper study planning is very important. You need to plan what to study and how
                            awake to learn.
                            Make sure your plan is specific, clear, and has a clear timetable.</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row g-5 mt-2">
            <div class="col-lg-7 col-md-12 mb-4">
                <div class="feature-1 border p-4 bg-light">
                    <h2 class="feature-1-title">What's New and Why?</h2>
                    <p>We've introduced a new feature to enhance your learning experience. Our latest video engagement tool ensures that you make the most out of each lesson.</p>
                    <strong>Key Features:</strong>
                    <ul>
                        <li>Sequential video unlocking: Each lesson must be completed before accessing the next one.</li>
                        <li>Mandatory full-viewing: Videos cannot be fast-forwarded on the first watch.</li>
                        <li>Enhanced review options: Fast-forwarding available on subsequent viewings for more flexible learning.</li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-5 col-md-12">
                <div class="feature-1 border py-auto bg-light">
                    <h4 class="feature-1-title">About Us</h4>
                    <p>Welcome to our E-Learning platform, a project developed by the students of the Full Stack Software Development program at Lambton College.
                        Our mission is to provide innovative and high-quality online education that caters to various learning needs.
                    </p>
                    <p>Join us on this journey of knowledge and growth, and take advantage of the innovative tools and resources we offer.
                    </p>
                </div>
            </div>
        </div>


    </main>

    <footer class="blog-footer footer-bg text-center py-3">
        <p>&copy; 2024 Full Stack Software Development - Lambton College. All rights reserved.</p>
    </footer>

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
</div>

</body>
</html>
