<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<title>Home</title>

<%@ include file="landing/linkfile.jsp" %>
</head>
<body>


<%@ include file="landing/navbar.jsp" %>

    <!-- Carousel Start -->
    <div class="container-fluid p-0 mb-5 wow fadeIn" data-wow-delay="0.1s">
        <div id="header-carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="w-100" src="landing/img/carousel-1.jpg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-lg-7">
                                    <h1 class="display-2 mb-5 animated slideInDown">Your Path to Wellness Begins Here</h1>
                                    <a href="login.jsp" class="btn btn-primary rounded-pill py-sm-3 px-sm-5">Login</a>
                                    <a href="Registration.jsp" class="btn btn-secondary rounded-pill py-sm-3 px-sm-5 ms-3">Register</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img class="w-100" src="landing/img/carousel-2.jpeg" alt="Image">
                    <div class="carousel-caption">
                        <div class="container">
                            <div class="row justify-content-start">
                                <div class="col-lg-7">
                                    <h1 class="display-2 mb-5 animated slideInDown">Explore a World of Medicinal Possibilities Online</h1>
                                    <a href="login.jsp" class="btn btn-primary rounded-pill py-sm-3 px-sm-5">Login</a>
                                    <a href="Registration.jsp" class="btn btn-secondary rounded-pill py-sm-3 px-sm-5 ms-3">Register</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- Carousel End -->
    
     <!-- About Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row g-5 align-items-center">
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                    <div class="about-img position-relative overflow-hidden p-5 pe-0">
                        <img class="img-fluid w-100" src="landing/img/about.jpg">
                    </div>
                </div>
                <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                    <h1 class="display-5 mb-4">Optimal Nutritional Supplements for Health and Wellness</h1>
                    <p class="mb-4">Discover the essential nutritional supplements that can enhance your overall health and well-being. This guide explores the top choices for supporting your body's needs, providing you with the information you need to make informed decisions about your health</p>
                    <p><i class="fa fa-check text-primary me-3"></i>Convenient access to a wide range of medications from the comfort of your home.</p>
                    <p><i class="fa fa-check text-primary me-3"></i>Address specific health concerns with targeted support.</p>
                    <p><i class="fa fa-check text-primary me-3"></i>Secure and discreet handling of your medical information.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->
    
    
    <!-- Testimonial Start -->
    <div class="container-fluid bg-light bg-icon py-6 mb-5">
        <div class="container">
            <div class="section-header text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 500px;">
                <h1 class="display-5 mb-3">Customer Review</h1>
                <p>Real Stories, Real Results: Discover What Our Customers Are Saying About Their Health Journey.</p>
            </div>
            <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                <div class="testimonial-item position-relative bg-white p-5 mt-4">
                    <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                    <p class="mb-4">Exploring the cosmos is a breeze, but ordering my meds used to be a hassle. Not anymore! This site is a true space-saver for travelers like me.</p>
                    <div class="d-flex align-items-center">
                        <img class="flex-shrink-0 rounded-circle" src="landing/img/testimonial-1.jpg" alt="">
                        <div class="ms-3">
                            <h5 class="mb-1"> David Clark</h5>
                            <span>Space Explorer</span>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item position-relative bg-white p-5 mt-4">
                    <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                    <p class="mb-4">Being a it expert is tough, but staying healthy shouldn't be. Thanks to this site, I can order my supplements in a flash. It's super convenient!</p>
                    <div class="d-flex align-items-center">
                        <img class="flex-shrink-0 rounded-circle" src="landing/img/testimonial-2.jpg" alt="">
                        <div class="ms-3">
                            <h5 class="mb-1">Charith Aloka</h5>
                            <span>Cyber sec. expert</span>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item position-relative bg-white p-5 mt-4">
                    <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                    <p class="mb-4">As an Manager, I need quick and reliable access to my medications. This website is out of this world, making my life easier up there and down here!</p>
                    <div class="d-flex align-items-center">
                        <img class="flex-shrink-0 rounded-circle" src="landing/img/testimonial-3.jpg" alt="">
                        <div class="ms-3">
                            <h5 class="mb-1">Nisansala Pushpa</h5>
                            <span>Bank Manager</span>
                        </div>
                    </div>
                </div>
                <div class="testimonial-item position-relative bg-white p-5 mt-4">
                    <i class="fa fa-quote-left fa-3x text-primary position-absolute top-0 start-0 mt-n4 ms-5"></i>
                    <p class="mb-4">I've been ordering from this website for over a year now, and I couldn't be happier. It's a lifesaver for a busy teacher like me. Thanks!</p>
                    <div class="d-flex align-items-center">
                        <img class="flex-shrink-0 rounded-circle" src="landing/img/testimonial-4.jpg" alt="">
                        <div class="ms-3">
                            <h5 class="mb-1">Sarah Davis</h5>
                            <span>Teacher</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Testimonial End -->

   <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-circle back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="landing/lib/wow/wow.min.js"></script>
    <script src="landing/lib/easing/easing.min.js"></script>
    <script src="landing/lib/waypoints/waypoints.min.js"></script>
    <script src="landing/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="landing/js/main.js"></script>






</body>
</html>