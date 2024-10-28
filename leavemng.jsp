<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Leave Manage</title>
    <link rel="stylesheet" href="styles.css" />
    <!-- Bootstrap CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet" />
  </head>
  <body>
    <div class="container mt-5">
      <h2>Leave Requests</h2>
      <table class="table table-striped table-hover">
        <thead>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Leave Type</th>
            <th>Reason</th>
            <th>Status</th>
            <th>Actions</th>
          </tr>
        </thead>
        <tbody>
          <!-- This block will be populated with data from the backend -->
          <c:forEach items="${leavedata}" var="lv">
            <tr>
              <td>${lv.id}</td>
              <td>${lv.name}</td>
              <td>${lv.email}</td>
              <td>${lv.leaveType}</td>
              <td>${lv.reason}</td>
              <td>${lv.status}</td>
              <td>
                <form method="post" action="managleave">
                  <input type="hidden" name="email" value="${lv.email}" />
                  <input type="submit" name="btn" value="Reject" />
                  <input type="submit" name="btn" value="Aprove" />
                </form>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>

    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
      }

      .container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      }

      h2 {
        margin-bottom: 20px;
        color: #343a40;
      }

      .table {
        margin-bottom: 0;
      }

      .table th {
        background-color: #007bff;
        color: #ffffff;
        text-align: center;
      }

      .table td {
        text-align: center;
        vertical-align: middle;
      }

      .btn {
        margin: 2px;
      }
      input[value="Aprove"] {
        width: 70px; /* Set the width */
        height: 50px; /* Set the height (same as width) */
        border-radius: 50%; /* Make it circular */
        border: none; /* Optional: remove the border */
        background-color: #5bf453; /* Button color */
        color: white; /* Text color */
        text-align: center; /* Center the text */
        font-size: 16px; /* Font size */
        cursor: pointer;
      }
      input[value="Reject"] {
        width: 70px; /* Set the width */
        height: 50px; /* Set the height (same as width) */
        border-radius: 50%; /* Make it circular */
        border: none; /* Optional: remove the border */
        background-color: #f12626; /* Button color */
        color: white; /* Text color */
        text-align: center; /* Center the text */
        font-size: 16px; /* Font size */
        cursor: pointer;
      }
    </style>
  </body>
</html>
