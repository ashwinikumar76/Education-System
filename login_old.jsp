<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom CSS for additional styling -->
    <style>
       body {
        background-color: #5c7690;
        color: #495057;
        padding: 20px;
        background-image: url('https://www.transparenttextures.com/patterns/45-degree-fabric-light.png'); /* Background pattern */
        background: linear-gradient(to left, #026469, #000000);
        animation: gradient-animation 10s ease infinite;
        display: flex;
        justify-content: center;
        align-items: center;
        /* height: 100vh; */
    }


    
    .custom-card {
        background-color: #1e1a1aee;
        color: white;
        border: 2px solid #902bbb39; /* Border color */
        border-radius: 50%; /* Rounded corners */
        padding: 20px;
        animation: slide-in-fwd-center 0.9s cubic-bezier(0.25, 0.46, 0.45, 0.94) both; /* Animation for sliding in */
        max-width: 400px; /* Adjusted maximum width */
        box-shadow: 0 0 80px rgba(146, 1, 107, 0.865);  /* Light shadow effect */
    }
    @keyframes gradient-animation {
            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }

    
@keyframes slide-in-fwd-center {
    0% {
        transform: translateX(100%);
        opacity: 0;
    }
    100% {
        transform: translateX(0);
        opacity: 1;
    }
}

    .form-label {
        color: white;
    }

    .form-check-label {
        color: #d3d3d3;
    }

    /* Adjusted Input Size */
    .form-control-sm {
        height: calc(1.5em + .75rem + 2px);
        padding: .25rem .5rem;
        font-size: 0.875rem;
    }

    .custom-link {
        color: goldenrod; /* Custom color for links */
    }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="card rounded-0 custom-card"> <!-- Removed border class and added custom styles -->
            <div class="card-body p-3">
                <div class="text-center mb-3">
                    <h4>User Login</h4>
                </div>
                <form action="/chk_login" method="post">
                    <div class="form-floating mb-3">
                        <input type="email" class="form-control form-control-sm" name="email" id="email" placeholder="name@example.com" required>
                        <label for="email" class="form-label">Email</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="password" class="form-control form-control-sm" name="password" id="password" placeholder="Password" required>
                        <label for="password" class="form-label">Password</label>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block nn">Login</button>
                </form>
                <hr class="mt-3 mb-2 border-secondary">
                <div class="text-center">
                    <p>Don't have an account? <a href="/signup" class="custom-link">Signup</a></p>
                    <a href="#!" class="custom-link">Forgot password</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript; Bootstrap Bundle with Popper.js for Bootstrap 4 -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>




<!-- <!DOCTYPE html>
<html lang="en">
<head>
   Design by foolishdeveloper.com 
    <title>Glassmorphism login Form Tutorial in html css</title>
 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">
   Stylesheet
    <style media="screen">
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: #080710;
}
.background{
    width: 430px;
    height: 520px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}
.background .shape{
    height: 200px;
    width: 200px;
    position: absolute;
    border-radius: 50%;
}
.shape:first-child{
    background: linear-gradient(
        #1845ad,
        #23a2f6
    );
    left: -80px;
    top: -80px;
}
.shape:last-child{
    background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );
    right: -30px;
    bottom: -80px;
}
form{
    height: 520px;
    width: 400px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
}
form *{
    font-family: 'Poppins',sans-serif;
    color: #ffffff;
    letter-spacing: 0.5px;
    outline: none;
    border: none;
}
form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
}

label{
    display: block;
    margin-top: 30px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 8px;
    font-size: 14px;
    font-weight: 300;
}
::placeholder{
    color: #e5e5e5;
}
button{
    margin-top: 50px;
    width: 100%;
    background-color: #ffffff;
    color: #080710;
    padding: 15px 0;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}
.social{
  margin-top: 30px;
  display: flex;
}
.social div{
  background: red;
  width: 150px;
  border-radius: 3px;
  padding: 5px 10px 10px 5px;
  background-color: rgba(255,255,255,0.27);
  color: #eaf0fb;
  text-align: center;
}
.social div:hover{
  background-color: rgba(255,255,255,0.47);
}
.social .fb{
  margin-left: 25px;
}
.social i{
  margin-right: 4px;
}

    </style>
</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form method="post" action="chk_login">
        <h3>Login Here</h3>

        <label for="username">Username</label>
        <input type="text" placeholder="Email or Phone" id="email" name="email">

        <label for="password">Password</label>
        <input type="password" placeholder="Password" id="password" name="password">

        <button >Log In</button>
        <div class="social">
          <div class="go"><i class="fab fa-google"></i>  Google</div>
          <div class="fb"><i class="fab fa-facebook"></i>  Facebook</div>
        </div>
    </form>
</body>
</html> -->

