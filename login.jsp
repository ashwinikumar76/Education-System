<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="css/login.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <style>

    </style>
  </head>
  <body>
    <!-- Header Section -->
    <header class="custom-header">
      <div class="container">
        <div class="title">EDUCATION SYSTEM</div>
        <nav class="navbar">
          <a href="/home" class="nav-link">Home</a>
          <a href="/about" class="nav-link">About us</a>
          <a href="/gallery" class="nav-link">Gallery</a>
          <a href="/contact" class="nav-link">Contact Us</a>
          <a href="/notice" class="nav-link">Notice</a>
        </nav>
        <div class="auth-buttons">
          <a href="/signup" class="btn btn-primary">Sign up</a>
          <a href="/login" class="btn btn-outline-light">Login</a>
        </div>
      </div>
    </header>

    <!-- Login Form Section -->
    <div class="login-container">
      <div class="login-box animate__animated animate__fadeInUp">
        <h2>Welcome Back</h2>
        <p>Please login to your account</p>
        <form action="/chk_login" method="post">
          <input
            type="email"
            name="email"
            placeholder="E-Mail Address"
            required />
          <input
            type="password"
            placeholder="Password"
            name="password"
            required />
          <div class="remember-me">
            <input type="checkbox" id="remember" />
            <label for="remember">Remember Me</label>
          </div>
          <button type="submit" class="animate__animated animate__fadeInRight">
            Login
          </button>
        </form>
      </div>
    </div>
    <!-- Footer Section -->
    <footer>
      <p>&copy; 2024 Education System. All rights reserved.</p>
      <p><a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a></p>
    </footer>
  </body>
</html>
