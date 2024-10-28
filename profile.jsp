<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
      rel="stylesheet" />
    <link rel="stylesheet" href="css/profile.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Profile Update</title>
  </head>
  <body>
    <div class="profile-container">
      <div class="profile-header">
        <img
          src="data:image/jpeg;base64,${Base64.getEncoder().encodeToString(userprofile[0].photo)}" />
        <div class="profile-info">
          <h2>${userprofile[0].name}</h2>
          <p>email: ${userprofile[0].email}</p>
          <p>age: ${userprofile[0].age}</p>

          <div class="social-icons">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <!-- Facebook Icon -->
            <a href="#"><i class="fab fa-twitter"></i></a>
            <!-- Twitter Icon -->
            <a href="#"><i class="fab fa-linkedin-in"></i></a>
            <!-- LinkedIn Icon -->
            <a href="#"><i class="fab fa-instagram"></i></a>
            <!-- Instagram Icon -->
          </div>
        </div>
      </div>

      <div class="form-container">
        <form action="upload" method="post" enctype="multipart/form-data">
          <input type="file" name="f" /><br />
          <input type="submit" name="btn" value="Update" /><br />
          forgot password?<a href="/change" class="custom-link"
            >change-password</a
          >
        </form>
      </div>
    </div>
  </body>
</html>
