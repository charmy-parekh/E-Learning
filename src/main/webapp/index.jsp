<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="generator" content="Hugo 0.87.0">
    <title>Sharp</title>

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

    <style>
        .logo{
            font-weight: 600;
            font-size: 1.5rem;
            letter-spacing: 1.5px;
            text-decoration: none;
        }
    </style>


    <!-- Custom styles for this template -->
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
</head>
<body>

<div class="container">
    <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
            <div class="col-4">
                <img src = "${pageContext.request.contextPath}/images/elearninglogo.png" alt="image" width = "80%"/>
            </div>
            <div class="col-sm-4"></div>
            <div class="col-4 d-flex justify-content-end align-items-center">
                <a class="btn btn-sm btn-outline-success" href="register.html">Sign up</a>
            </div>
            <div class="col-4 d-flex justify-content-end align-items-center">
                <a class="btn btn-sm btn-outline-success" href="login.jsp">Login</a>
            </div>
        </div>
    </header>

    <main class="container">
        <div class="p-4 p-md-5 mb-4 text-white rounded bg-dark">
            <div class="px-0">
                <h1 class="display-4 fst-italic">An Online E-Learning Platform</h1>
                <p class="lead my-3">With new Video Lock feature and Organised Video Systems.</p>
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
                                <p>HTML, CSS3, JavaScript, Php, ReactJS</p>
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
                                <p>Java, C/C++, Python, Ruby, Pascal</p>
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
                                <p>Flutter, Typescript, Kotlin/Java, Swift</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row mb-2">
<%--            <div class="col-md-6">--%>
                <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                    <div class="col p-4 d-flex flex-column position-static">
                        <strong class="d-inline-block mb-2 text-primary">Student's User-site</strong>
                        <h3 class="mb-0">Are you Student</h3>
                        <p class="card-text mb-auto mt-1">Want to Upgrade your Skills then access our E - Learning platform.</p>
                        <p class="card-text mb-auto mt-1">Sign Up Using below Link</p>
                        <a href="register.html" class="stretched-link">Sign up</a>
                    </div>
                    <div class="col-auto d-none d-lg-block">
                        <img src="${pageContext.request.contextPath}/images/student.png" alt=""  width="200" height="250">
                    </div>
                </div>
<%--            </div>--%>
<%--            <div class="col-md-6">--%>
<%--                <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">--%>
<%--                    <div class="col p-4 d-flex flex-column position-static">--%>
<%--                        <strong class="d-inline-block mb-2 text-success">Mentor's User-site</strong>--%>
<%--                        <h3 class="mb-1">Are you a Teacher</h3>--%>
<%--                        <p class="mb-auto">Want to access our E - Learning platform and Make your Course's & Skills live.</p>--%>
<%--                        <p class="card-text mb-auto mt-1">Sign Up Using below Link</p>--%>
<%--                        <a href="Tregistration.html" class="stretched-link">Sign Up</a>--%>
<%--                    </div>--%>
<%--                    <div class="col-auto d-none d-lg-block">--%>
<%--                        <img src="${pageContext.request.contextPath}/images/teacher.png" alt=""  width="200" height="250">--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>

        <div class="row g-5">
            <div class="col-md-8">

                <article class="blog-post">
                    <h2 class="blog-post-title">What New and Why ?</h2>
                    <p>For Example:</p>
                    <p>We can take an online Course here there will be a lot videos to educate the user but we don't know weather the user really watches the full video or Just skip and move on.</p>

                    <p><strong>So here Come's this feature into play</strong></p>
                    <ul>
                        <li>Video contents will be Locked and only be unlocked upon seeing the above video or Lesson Completely.</li>
                        <li>While user watches a video for <b>First Time</b> he or she <b>can't fast forward</b> it, So they must watch the full video. </li>
                        <li>But if the user is going to watch the video for <b>second time (or) more</b> they will <b>have forward button</b> and key options.</li>
                    </ul>
                    <p>This is some additional paragraph placeholder content. It's a slightly shorter version of the other highly repetitive body text used throughout.</p>
                </article>

            </div>

            <div class="col-md-4">
                <div class="position-sticky" style="top: 2rem;">
                    <div class="p-4 mb-3 bg-light rounded">
                        <h4 class="fst-italic">About</h4>
                        <p class="mb-0">This is an Online E - Learning platform created by students of Full Stack Software Development - Lambton College</p>
                    </div>

    </main>

    <footer class="blog-footer bg-dark text-center text-white d-flex align-items-center justify-content-center pt-2">
        <p>&copy;Copyrights Reserved - 2024 Full Stack Software Development - Lambton College</p>
    </footer>

    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>

</body>
</html>
