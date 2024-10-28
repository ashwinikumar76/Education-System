<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Education System">
  <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
  <title>EDUCATION SYSTEM</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

  <style>
    .table-header {
      width: 100%;
      text-align: center;
      font-size: 28px;
      font-weight: bold;
      padding: 20px 0;
      background: linear-gradient(to right, #a3f3f9, #00c6ff);
      color: #ffffff;
      border-bottom: 5px solid #0072ff;
      letter-spacing: 2px;
      animation: headerPulse 2s ease infinite alternate;
    }

    .logo-container a img {
      margin: 10px;
    }

    .course h2 {
      background-color: rgba(0, 0, 0, 0.819);
      color: aliceblue;
      padding: 10px;
    }

    .footer-links {
      display: flex;
      gap: 15px;
    }
  </style>
</head>

<body>
  <!-- Header -->
  <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom" style="background-color: black;">
    <a href="/profile" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
      <svg class="bi me-2" width="40" height="32" aria-label="Bootstrap logo">
        <use xlink:href="#bootstrap"></use>
      </svg>
      <span class="fs-4 text-white">Student</span>
    </a>

    <ul class="nav nav-pills">
      <li class="nav-item"><a href="/exam" class="nav-link text-white">Exam</a></li>
      <li class="nav-item"><a href="/result" class="nav-link text-white">Result</a></li>
      <li class="nav-item"><a href="#" class="nav-link text-white">Progress</a></li>
      <li class="nav-item"><a href="#" class="nav-link text-white">Video</a></li>
      <li class="nav-item"><a href="/leaveapply" class="nav-link text-white">Leave Apply</a></li>
      <li class="nav-item"><a href="/logout" class="nav-link text-white">Logout</a></li>
    </ul>
  </header>

  <!-- Courses Section -->
  <div class="container">
    <div class="course">
      <h2>COURSES WE OFFER</h2>
    </div>
    <hr class="featurette-divider">

    <!-- FullStack Java -->
    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1">
          <a href="https://www.oracle.com/java/" target="_blank">
            <img src="https://upload.wikimedia.org/wikipedia/en/3/30/Java_programming_language_logo.svg" alt="Java Logo"
              width="200" height="200">
          </a>
          <span class="text-body-secondary"> FullStack</span>
        </h2>
        <p class="lead">Java is a versatile, object-oriented programming language that is widely used in software
          development for building web, mobile, and desktop applications. Here is an overview of a typical Java course:
        </p>
      </div>
      <div class="col-md-5">
        <a href="https://www.oracle.com/java/" target="_blank">
          <img class="bd-placeholder-img featurette-image img-fluid mx-auto"
            src="https://media.istockphoto.com/id/1335247101/photo/computer-with-elements-of-program-code-on-the-screen-and-the-inscription-java-and-a-keyboard.webp?b=1&s=612x612&w=0&k=20&c=ZgjX06zhkmg3WSnQmKvgGYNTfI6bXvHUE8Teo7ZTI_g="
            alt="Java Programming" width="100%" height="100%">
        </a>
      </div>
    </div>
    <hr class="featurette-divider">

    <!-- FullStack Python -->
    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading fw-normal lh-1">
          <a href="https://www.python.org/" target="_blank">
            <img src="https://upload.wikimedia.org/wikipedia/commons/c/c3/Python-logo-notext.svg" alt="Python Logo"
              width="200" height="200">
          </a>
          <span class="text-body-secondary">FullStack</span>
        </h2>
        <p class="lead">Python is a powerful, high-level, and easy-to-learn programming language widely used for web
          development, data science, automation, and more.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <a href="https://www.python.org/" target="_blank">
          <img class="bd-placeholder-img featurette-image img-fluid mx-auto"
            src="https://images.unsplash.com/photo-1649180556628-9ba704115795?w=500&auto=format&fit=crop&q=60"
            alt="Python Programming" width="100%" height="100%">
        </a>
      </div>
    </div>
    <hr class="featurette-divider">

    <!-- MERN Stack -->
    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1">
          <div class="logo-container">
            <a href="https://www.mongodb.com/" target="_blank">
              <img src="https://upload.wikimedia.org/wikipedia/commons/9/93/MongoDB_Logo.svg" alt="MongoDB Logo"
                width="100" height="100">
            </a>
            <a href="https://expressjs.com/" target="_blank">
              <img src="https://upload.wikimedia.org/wikipedia/commons/6/64/Expressjs.png" alt="Express.js Logo"
                width="100" height="100">
            </a>
            <a href="https://reactjs.org/" target="_blank">
              <img src="https://upload.wikimedia.org/wikipedia/commons/a/a7/React-icon.svg" alt="React Logo" width="100"
                height="100">
            </a>
            <a href="https://nodejs.org/" target="_blank">
              <img src="https://upload.wikimedia.org/wikipedia/commons/d/d9/Node.js_logo.svg" alt="Node.js Logo"
                width="100" height="100">
            </a>
          </div>
          <span class="text-body-secondary">MERN Stack</span>
        </h2>
        <p class="lead">A MERN stack course typically covers MongoDB, Express.js, React.js, and Node.js for full-stack
          development.</p>
      </div>
      <div class="col-md-5">
        <a href="https://www.mongodb.com/" target="_blank">
          <img class="bd-placeholder-img featurette-image img-fluid mx-auto"
            src="https://images.unsplash.com/photo-1685558593626-686907d7ee4b?q=80&w=2070&auto=format&fit=crop"
            alt="MERN Stack Development" width="100%" height="100%">
        </a>
      </div>
    </div>
    <hr class="featurette-divider">
  </div>

  <!-- Footer -->
  <div class="container">
    <footer class="py-5">
      <div class="row">
        <div class="col-6 col-md-2 mb-3">
          <h5>Section</h5>
          <ul class="nav flex-column">
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Home</a></li>
            <li class="nav-item mb-2"><a href="/contact" class="nav-link p-0 text-body-secondary">Contact Us</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">Pricing</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">FAQs</a></li>
            <li class="nav-item mb-2"><a href="#" class="nav-link p-0 text-body-secondary">About</a></li>
          </ul>
        </div>

        <div class="col-md-5 offset-md-1 mb-3">
          <form>
            <h5>Subscribe to our newsletter</h5>
            <p>Monthly digest of what's new and exciting from us.</p>
            <div class="d-flex flex-column flex-sm-row w-100 gap-2">
              <label for="newsletter1" class="visually-hidden">Email address</label>
              <input id="newsletter1" type="text" class="form-control" placeholder="Email address">
              <button class="btn btn-primary" type="button">Subscribe</button>
            </div>
          </form>
        </div>
      </div>
      <div class="d-flex flex-column flex-sm-row justify-content-between py-4 my-4 border-top">
        <p>© 2023 Company, Inc. All rights reserved.</p>
        <ul class="list-unstyled d-flex footer-links">
          <li class="ms-3"><a class="link-body-emphasis" href="#" aria-label="Twitter">
            <svg class="bi" width="24" height="24">
              <use xlink:href="#twitter"></use>
            </svg>
          </a></li>
          <li class="ms-3"><a class="link-body-emphasis" href="#" aria-label="Instagram">
            <svg class="bi" width="24" height="24">
              <use xlink:href="#instagram"></use>
            </svg>
          </a></li>
          <li class="ms-3"><a class="link-body-emphasis" href="#" aria-label="Facebook">
            <svg class="bi" width="24" height="24">
              <use xlink:href="#facebook"></use>
            </svg>
          </a></li>
        </ul>
      </div>
    </footer>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-tXbrLglbvw7PNmcGqIjaBlpg5CrIwaN5H7/N2sI/tNxCt1yOQUJWzjZrh+IJt4YE"
    crossorigin="anonymous"></script>
</body>

</html>
