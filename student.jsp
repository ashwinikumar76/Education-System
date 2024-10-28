<jsp:include page="facultyheader.jsp"></jsp:include>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Students List</title>
    <style>
      body {
        font-family: "Poppins", sans-serif;
        background: linear-gradient(270deg, #6dd5fa, #ffffff,#87f8c1,#f7abab);
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

      /* Background Animation */
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

      /* Container styling for the table */
      .container {
        width: 80%;
        margin-top: 20px; /* Add margin to push the table down */
        background: #ffffff;
        box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.1);
        border-radius: 15px;
        overflow: hidden;
        opacity: 0;
        transform: translateY(50px);
        animation: fadeInUp 1.5s ease forwards;
      }

      /* Fade-in and slide-up animation for the container */
      @keyframes fadeInUp {
        0% {
          opacity: 0;
          transform: translateY(50px);
        }
        100% {
          opacity: 1;
          transform: translateY(0);
        }
      }

      /* Table Header Styling */
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

      /* Pulsating effect for header */
      @keyframes headerPulse {
        0% {
          transform: scale(1);
        }
        100% {
          transform: scale(1.05);
        }
      }

      /* Table Styling */
      .student-table {
        width: 100%;
        border-collapse: collapse;
        border-radius: 15px;
        overflow: hidden;
      }

      .student-table th,
      .student-table td {
        padding: 15px;
        text-align: center;
        font-size: 16px;
      }

      .student-table th {
        background-color: #0072ff;
        color: white;
        font-size: 18px;
        text-transform: uppercase;
      }

      .student-table td {
        background-color: #f7f9fc;
        color: #333;
      }

      .student-table tr:nth-child(even) td {
        background-color: #e8f0fe;
      }

      .student-table tr:hover td {
        background-color: #d4e5ff;
        color: #0072ff;
        transition: background-color 0.3s ease, color 0.3s ease;
      }

      /* Responsive Table */
      @media (max-width: 768px) {
        .container {
          width: 95%;
        }

        .table-header {
          font-size: 24px;
        }

        .student-table th,
        .student-table td {
          font-size: 14px;
          padding: 10px;
        }
      }
    </style>
  </head>

  <body>
  

    <div class="container">
      <div class="table-header">Students List</div>
      <table class="student-table">
        <tr>
          <th>Name</th>
          <th>Email</th>
        </tr>
        <c:forEach var="role" items="${role}">
          <tr>
            <td>${role.name}</td>
            <td>${role.email}</td>
          </tr>
        </c:forEach>
      </table>
    </div>
  </body>
</html>
