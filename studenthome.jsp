<jsp:include page="studentheader.jsp"></jsp:include>
<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet"
integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
crossorigin="anonymous" />
<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
crossorigin="anonymous"></script>

    <!-- Hero Section -->
    <section class="hero-section">
        <h1>Upgrade your learning Skills & Upgrade your life</h1>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores ullam
          libero magni reiciendis quam ipsa blanditiis.
        </p>
        <a href="/course" class="btn btn-danger btn-lg">Find Courses</a>
        <a href="#" class="btn btn-outline-light btn-lg">Get Started</a>
      </section>
  
      <!-- Course Stats -->
      <section class="course-stats container-fluid">
        <div class="row">
          <div class="col-md-3">
            <div class="stat-number">2000+</div>
            <div class="stat-label">Students</div>
          </div>
          <div class="col-md-3">
            <div class="stat-number">1200</div>
            <div class="stat-label">Online Courses</div>
          </div>
          <div class="col-md-3">
            <div class="stat-number">2256</div>
            <div class="stat-label">Finished Sessions</div>
          </div>
          <div class="col-md-3">
            <div class="stat-number">100%</div>
            <div class="stat-label">Satisfaction</div>
          </div>
        </div>
      </section>
  
      <!-- Popular Courses -->
      <section class="popular-courses container">
        <h2>Popular Courses</h2>
        <!-- Add course content here -->
      </section>
      <!-- footer -->
      <!-- Footer -->
      <footer class="text-white py-4" style="background-color: #1c253d">
        <div class="container">
          <div class="row">
            <!-- Company Info -->
            <div class="col-md-4">
              <h5>Edumel</h5>
              <p>
                Your one-stop destination for online learning. Empower your skills
                and transform your future with our courses.
              </p>
              <ul class="list-unstyled d-flex">
                <li class="me-3">
                  <a href="#" class="text-white">
                    <i class="bi bi-facebook"></i>
                  </a>
                </li>
                <li class="me-3">
                  <a href="#" class="text-white">
                    <i class="bi bi-twitter"></i>
                  </a>
                </li>
                <li class="me-3">
                  <a href="#" class="text-white">
                    <i class="bi bi-instagram"></i>
                  </a>
                </li>
                <li class="me-3">
                  <a href="#" class="text-white">
                    <i class="bi bi-linkedin"></i>
                  </a>
                </li>
              </ul>
            </div>
  
            <!-- Quick Links -->
            <div class="col-md-4">
              <h5>Quick Links</h5>
              <ul class="list-unstyled">
                <li><a href="#" class="text-white">Find Courses</a></li>
                <li><a href="#" class="text-white">About Us</a></li>
                <li><a href="#" class="text-white">Contact Us</a></li>
                <li><a href="#" class="text-white">FAQ</a></li>
              </ul>
            </div>
  
            <!-- Contact Info -->
            <div class="col-md-4">
              <h5>Contact Us</h5>
              <p><i class="bi bi-telephone"></i> +123-456-7890</p>
              <p><i class="bi bi-envelope"></i> hello@edumel.com</p>
              <p>
                <i class="bi bi-geo-alt"></i> 123 Learning St., Knowledge City,
                98765
              </p>
            </div>
          </div>
  
          <!-- Copyright -->
          <div class="text-center mt-4">
            <p class="mb-0">© 2024 Edumel. All Rights Reserved.</p>
          </div>
        </div>
      </footer>
  
      <!-- Add Bootstrap Icons -->
      <link
        rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" />
        <style>
            /* HERO SECTION STYLING */
            .hero-section {
              background: url("img/background.png") no-repeat center center/cover;
              color: white;
              padding: 60px 0;
              text-align: center;
              position: relative;
            }
      
            /* Optional overlay effect to darken the image */
            .hero-section::before {
              content: "";
              position: absolute;
              top: 0;
              left: 0;
              width: 100%;
              height: 100%;
              background-color: rgba(0, 0, 0, 0.5); /* Adjust transparency */
              z-index: 1;
            }
      
            .hero-section h1,
            .hero-section p,
            .hero-section .btn {
              position: relative;
              z-index: 2;
            }
      
            .hero-section h1 {
              font-size: 3rem;
              font-weight: 700;
            }
      
            .hero-section p {
              font-size: 1.25rem;
              margin-bottom: 40px;
            }
      
            .hero-section .btn {
              margin-right: 20px;
            }
      
            /* COURSE STATS STYLING */
            .course-stats {
              background-color: #283a65;
              color: white;
              padding: 40px 0;
              text-align: center;
            }
      
            .course-stats div {
              margin-bottom: 20px;
            }
      
            .course-stats .stat-number {
              font-size: 2rem;
              font-weight: 700;
            }
      
            .course-stats .stat-label {
              font-size: 1.25rem;
            }
      
            /* POPULAR COURSES STYLING */
            .popular-courses {
              padding: 60px 0;
              text-align: center;
            }
      
            .popular-courses h2 {
              margin-bottom: 40px;
              font-size: 2.5rem;
              font-weight: 700;
            }
          </style>
      
    </body>
  </html>
  