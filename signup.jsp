<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sign up</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styles.css">
</head>
<body>

<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-body">
            <h3 class="card-title text-center mb-4">Register</h3>
            <form method="post" action="save">
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="name" name="name" placeholder="Name">
                    <label for="name">Name</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                    <label for="email">Email</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password">
                    <label for="password">Password</label>
                </div>
                <div class="form-floating mb-3">
                    <input type="tel" class="form-control" id="mobile" name="mobile" placeholder="Mobile">
                    <label for="mobile">Mobile</label>
                </div>
                <div class="mb-3">
                    <label class="form-label">Role</label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" id="student" value="Student" name="role">
                        <label class="form-check-label" for="student">Student</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" id="faculty" value="Faculty" name="role">
                        <label class="form-check-label" for="faculty">Faculty</label>
                    </div>
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary btn-lg">Register</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
<style type="text/css">
 /* styles.css */

/* Center the form within the container */
body{
    background-color: #5c7690;
        color:black;
        padding: 20px;
        background-image: url('https://www.transparenttextures.com/patterns/45-degree-fabric-light.png'); /* Background pattern */
        background: linear-gradient(to left, #a1f5fa, #000000);
        animation: gradient-animation 10s ease infinite;
        display: flex;
        justify-content:space-evenly;
        align-items: center;
}

.container {
    display: flex;
    justify-content: space-around;
    align-items: center;
    height: 100vh;
}

/* Add some spacing and styling to the card */
.card {
    width: 400px;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

/* Style the form inputs */
.form-control {
    margin-bottom: 15px;
}

/* Style the submit button */
.btn-primary {
    background-color: #023e7a;
    border: none;
}

/* Add hover effect to the submit button */
.btn-primary:hover {
    background-color: #0056b3;
}



</style>
</body>
</html>
