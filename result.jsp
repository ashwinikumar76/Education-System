<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <title>Exam Results</title>
</head>
<body>
  <div class="container">
    <h1>Exam Results</h1>
    <p>Your score: ${mark}</p>
    <ul>
      <c:forEach var="q" items="${questions}">
        <li>
          <b>Question ${q.slno}:</b> ${q.question}
          <br>
          <c:choose>
            <c:when test="${q.chosenAnswer == q.correctAnswer}">
              <span style="color: green;">Correct!</span>
            </c:when>
            <c:otherwise>
              <span style="color: red;">Incorrect. Correct answer: ${q.correctAnswer}</span>
            </c:otherwise>
          </c:choose>
        </li>
      </c:forEach>
    </ul>
  </div>
  <style>
    /* Add these styles to your existing styles.css */

.container {
  text-align: center;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  width: 600px; /* Adjust width as needed */
  background-color: rgb(204, 231, 254);
}

h1 {
  font-size: 24px;
  margin-bottom: 20px;
}

p {
  font-size: 18px;
  margin-bottom: 20px;
}

ul {
  list-style: none;
  padding: 0;
}

li {
  margin-bottom: 15px;
}

.correct {
  color: green;
}

.incorrect {
  color: red;
}

  </style>
</body>
</html>
