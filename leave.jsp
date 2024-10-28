
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Leave Request</title>
  </head>
  <body>
    <div class="container">
      <h2>Leave apply</h2>
      <form action="leave_rqst" method="post">
        <div class="form-group">
          <label for="name">Full Name:</label>
          <input
            type="text"
            id="name"
            name="name" 
            value="${leave.name}"
            required />
        </div>
        <div class="form-group">
          <label for="email">Email Address:</label>
          <input type="email" id="email" name="email" value="${leave.email}" />
        </div>
        <div class="form-group">
          <label for="leave-type">Leave Type:</label>
          <select id="leave-type" name="leave-type" required>
            <option value="sick">Sick Leave</option>
            <option value="casual">Casual Leave</option>
            <option value="vacation">Vacation Leave</option>
          </select>
        </div>
        <div class="form-group">
          <label for="start-date">Start Date:</label>
          <input type="date" id="start-date" name="start-date" required />
        </div>
        <div class="form-group">
          <label for="end-date">End Date:</label>
          <input type="date" id="end-date" name="end-date" required />
        </div>
        <div class="form-group">
          <label for="reason">Reason for Leave:</label>
          <textarea id="reason" name="reason" rows="4" required></textarea>
        </div>
        <div class="form-group">
          <input type="submit" value="Submit Request" />
        </div>
      </form>
    </div>
    <style type="text/css">
      body {
        font-family: Arial, sans-serif;
        background-color: #c0d1f8;
        margin: 0;
        padding: 0;
      }

      .container {
        width: 80%;
        max-width: 600px;
        margin: 50px auto;
        background: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      }

      h1 {
        text-align: center;
        color: #333;
      }

      .form-group {
        margin-bottom: 15px;
      }

      .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
      }

      .form-group input,
      .form-group select,
      .form-group textarea {
        width: 100%;
        padding: 8px;
        border: 1px solid #ddd;
        border-radius: 4px;
      }

      .form-group textarea {
        resize: vertical;
      }

      .form-group input[type="submit"] {
        background-color: #0b7fe6;
        color: white;
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        font-size: 16px;
      }

      .form-group input[type="submit"]:hover {
        background-color: #2c983b;
      }
    </style>
  </body>
</html>
