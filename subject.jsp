<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Manage Subjects</title>
    <style>
      body {
        font-family: "Poppins", sans-serif;
        background: linear-gradient(270deg, #87f8c1, #f7abab);
        background-size: 400% 400%;
        animation: gradientShift 10s ease infinite;
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: center;
      }

      @keyframes gradientShift {
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

      .container {
        width: 80%;
        margin-top: 20px;
        background: #ffffff;
        box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.1);
        border-radius: 15px;
        padding: 20px;
      }

      form {
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        margin-bottom: 20px;
      }

      input[type="text"], input[type="submit"], a.button {
        padding: 10px;
        font-size: 16px;
        border-radius: 5px;
        border: 1px solid #ccc;
        margin: 10px;
        text-align: center;
      }

      input[type="text"] {
        width: 70%;
      }

      input[type="submit"], a.button {
        background-color: #0072ff;
        color: white;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
        text-decoration: none;
        display: inline-block;
      }

      input[type="submit"]:hover, a.button:hover {
        background-color: #25e92c;
        transform: translateY(-2px);
      }

      table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
      }

      th, td {
        padding: 15px;
        text-align: center;
        border-bottom: 1px solid #ddd;
      }

      th {
        background-color: #0072ff;
        color: white;
        text-transform: uppercase;
      }

      td {
        background-color: #f7f9fc;
        color: black;
      }

      tr:hover td {
        background-color: #d4e5ff;
        color: #0072ff;
        transition: background-color 0.3s ease, color 0.3s ease;
      }

      @media (max-width: 768px) {
        .container {
          width: 95%;
        }

        input[type="text"] {
          width: 100%;
        }

        input[type="submit"], a.button {
          width: 100%;
        }

        table th, table td {
          font-size: 14px;
          padding: 10px;
        }
      }
    </style>
  </head>

  <body>
    <!-- Container for managing subjects -->
    <div class="container">
      <h2 style="text-align:center;">Manage Subjects</h2>

      <!-- Form to add a new subject -->
      <form action="add_subject" method="post">
        <input type="text" name="subject_name" placeholder="Enter Subject Name" required />
        <input type="submit" value="Add Subject" />
        <a href="/addchapter" class="button">Add Chapter</a>
      </form>

      <!-- Table to display and manage subjects -->
      <table>
        <thead>
          <tr>
            <th>Sl NO</th>
            <th>Subject Name</th>
            <th>Manage</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach var="subject" items="${subjects}">
            <tr>
              <td>${subject.subject_id}</td>
              <td>${subject.subject_name}</td>
              <td>
                <form action="manage_subject" method="post" style="display:inline;">
                  <input type="hidden" name="subject_id" value="${subject.subject_id}" />
                  <input type="submit" name="btn" value="Edit" style="background-color:#36fa3c;color:white;padding:5px;border:none;border-radius:5px;cursor:pointer;" />
                  <input type="submit" name="btn" value="Delete" style="background-color:#1aded1;color:white;padding:5px;border:none;border-radius:5px;cursor:pointer;" />
                </form>
              </td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </div>
  </body>
</html>
