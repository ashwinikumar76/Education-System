<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Select Subject and Add Chapter</title>
    <style>
      body {
        font-family: "Poppins", sans-serif;
        background: linear-gradient(270deg, #87f8c1,rgba(34, 34, 34, 0.895));
        background-size: 400% 400%;
        animation: gradientShift 12s ease infinite;
        margin: 0;
        padding: 0;
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
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

      /* Form Container */
      .container {
        width: 50%;
        padding: 40px;
        background-color: #ffffffd3;
        border-radius: 15px;
        box-shadow: 0px 10px 30px rgba(0, 0, 0, 0.1);
        text-align: center;
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

      /* Styling for the form */
      form {
        margin-top: 20px;
      }

      select, input[type="text"] {
        padding: 15px;
        width: 80%;
        font-size: 16px;
        border: 1px solid #ddd;
        border-radius: 5px;
        outline: none;
        margin-bottom: 15px;
        transition: border-color 0.3s ease;
      }

      select:focus, input[type="text"]:focus {
        border-color: #0072ff;
      }

      input[type="submit"] {
        padding: 10px 20px;
        background-color: #0072ff;
        color: #ffffff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        margin-top: 20px;
        font-size: 16px;
        transition: background-color 0.3s ease, transform 0.3s ease;
      }

      input[type="submit"]:hover {
        background-color: #03b500;
        transform: translateY(-2px);
      }

      /* Responsive Design */
      @media (max-width: 768px) {
        .container {
          width: 190%;
        }

        select, input[type="text"] {
          width: 100%;
        }
      }
    </style>
  </head>

  <body>
    <div class="container">
      <h2>Select a Subject and Add a Chapter</h2>
      <form method="post" action="save_chapter">
        <select id="subject_id" name="subject_id" required>
          <option value="">-- Select Subject --</option>
          <c:forEach var="sub" items="${subject}">
            <option value="${sub.subject_id}">${sub.subject_name}</option>
          </c:forEach>
        </select>
        <br />
        <input type="text" name="chapter_name" placeholder="Enter Chapter Name"  />
        <br />
        <input type="submit" value="Submit" />
      </form>
      <div>
        <table border="1px" cellspacing="1px">
            <tr>
                <th>Subject Id</th>
                <th>Subject Name</th>
                <th>Chapter Name</th>
                <th>Manage</th>
            </tr>
            <c:forEach items="${chapter}" var="chap">
                <tr>
                    <td>${chap.subject_id}</td>
                    <td>${chap.subject_name}</td>
                    <td>${chap.chapter_name}</td>
                    <td>
                      <form method="post" action="manage_chapter">
                        <input type="hidden" name="chapter_name" value="${chap.chapter_name}" />
                        <input type="submit" name="btn" value="delete" />
                        <input type="submit" name="btn" value="edit" />
                      </form>
                    </td>

                </tr>
            </c:forEach>
        </table>
      </div>
    </div>
  </body>
</html>
