<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Change Password</title>
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
      rel="stylesheet" />
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #baddf9;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
      }
      .container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        width: 400px;
        max-width: 90%;
      }
      .container h2 {
        margin-top: 0;
        font-size: 24px;
        color: #333;
      }
      .form-group {
        margin-bottom: 15px;
      }
      .form-group label {
        display: block;
        margin-bottom: 5px;
        color: #555;
      }
      .form-group input[type="password"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        box-sizing: border-box;
      }
      .form-group input[type="submit"] {
        display: inline-block;
        padding: 10px 20px;
        background-color: #007bff;
        border: none;
        color: #fff;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
      }
      .form-group input[type="submit"]:hover {
        background-color: #0056b3;
      }
      .error {
        color: red;
        margin-top: 10px;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h2>Change Password</h2>
      <form action="change_password" method="post">
        <div class="form-group">
          <label for="currentPassword">Current Password:</label>
          <input
            type="password"
            id="currentPassword"
            name="currentPassword"
            required />
        </div>
        <div class="form-group">
          <label for="newPassword">New Password:</label>
          <input type="password" id="newPassword" name="newPassword" required />
        </div>
        <div class="form-group">
          <label for="confirmPassword">Confirm New Password:</label>
          <input
            type="password"
            id="confirmPassword"
            name="confirmPassword"
            required />
        </div>
        <div class="form-group">
          <input type="submit" value="Change Password" />
        </div>
        <c:if test="${not empty errorMessage}">
          <div class="error">${errorMessage}</div>
        </c:if>
      </form>
    </div>
  </body>
</html>
