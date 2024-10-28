<jsp:include page="studentheader.jsp"></jsp:include>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<main>
  <form method="post" action="save_answer">
    <c:forEach var="q" items="${question}">
      <div class="question">
        <label>qn:- ${q.question}</label><br>
        <input type="radio" name="q${q.slno}" value="1">${q.option1}<br>
        <input type="radio" name="q${q.slno}" value="2">${q.option2}<br>
        <input type="radio" name="q${q.slno}" value="3">${q.option3}<br>
        <input type="radio" name="q${q.slno}" value="4">${q.option4}<br>
      </div><br><br>
    </c:forEach>
    <input type="submit" value="submitanswer">
  </form>
</main>
<style type="text/css">
  /* General Body Styling */
body {
  background-image: url('https://example.com/exam-background.jpg'); /* Replace with your actual image URL */
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
  height: 100vh; /* Full viewport height */
  display: flex;
  flex-direction: column; /* Stack header and main content vertically */
}

/* Header Styling */
.custom-header {
  background-color: #2c3e50;
  padding: 20px 0;
  position: fixed;
  top: 0;
  z-index: 1000;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  width: 100%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding: 0 15px;
}

.custom-header .title {
  font-size: 1.8rem;
  font-weight: bold;
  color: #ecf0f1;
  letter-spacing: 2px;
}

.navbar {
  display: flex;
  gap: 30px;
}

.nav-link {
  color: #ecf0f1;
  font-size: 1rem;
  text-transform: uppercase;
  text-decoration: none; /* Ensures no underline */
  transition: color 0.3s ease;
}

.nav-link:hover {
  color: #1abc9c;
}

.auth-buttons .btn {
  margin-left: 15px;
  font-size: 1rem;
  padding: 10px 20px;
  border-radius: 30px;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.auth-buttons .btn-primary {
  background-color: #1abc9c;
  color: white;
  border: none;
}

.auth-buttons .btn-primary:hover {
  transform: scale(1.05);
  box-shadow: 0 4px 15px rgba(26, 188, 156, 0.5);
}

.auth-buttons .btn-outline-light {
  border: 2px solid #ecf0f1;
  color: #ecf0f1;
  background-color: transparent;
}

.auth-buttons .btn-outline-light:hover {
  color: #2c3e50;
  background-color: #ecf0f1;
  transform: scale(1.05);
  box-shadow: 0 4px 15px rgba(236, 240, 241, 0.5);
}

/* Centering Exam Form */
main {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  flex: 1;
}

form {
  border: 1px solid #ccc;
  padding: 15px;
  background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent background for the form */
  border-radius: 8px;
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
  width: 60%; /* Adjust form width */
  max-width: 700px;
}

.question {
  margin-bottom: 10px;
  animation: fadeIn 1.5s ease-in-out;
}

.question label {
  display: block;
  font-weight: bold;
  margin-bottom: 8px;
  font-size: 1.2em;
}

input[type="radio"] {
  margin-right: 5px;
}

input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 1em;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}

/* Animation keyframes */
@keyframes fadeIn {
  from {
    opacity: 0;
    transform: translateY(20px);
  }
  to {
    opacity: 1;
    transform: translateY(0);
  }
}

</style>