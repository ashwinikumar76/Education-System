<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="facultyheader.jsp"></jsp:include>

<style>
  body {
    font-family: Arial, sans-serif;
    background: linear-gradient(45deg, #e0eafc, #cfdef3);
    background-size: 200% 200%; /* Ensure the gradient covers the background */
    animation: gradientShift 10s ease infinite; /* Apply gradient animation */
    padding: 20px;
    margin: 0;
  }

  .form-container {
    background: #fff;
    padding: 20px;
    margin: 20px auto;
    border-radius: 10px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    max-width: 500px;
    animation: fadeInScale 1s ease-out; /* Apply a combined fade and scale animation */
    position: relative;
    overflow: hidden; /* Ensure child elements don't overflow */
  }

  .form-container::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.1); /* Subtle dark overlay */
    border-radius: 10px;
    z-index: 0; /* Place it behind the form content */
  }

  .form-container .form-content {
    position: relative;
    z-index: 1; /* Place it above the overlay */
  }

  .form-container input[type="text"] {
    width: calc(100% - 22px); /* Adjust width to compensate for padding */
    padding: 10px;
    margin-bottom: 15px;
    border-radius: 5px;
    border: 1px solid #ddd;
    transition: border-color 0.3s ease;
  }

  .form-container input[type="text"]:focus {
    border-color: #007bff;
  }

  .form-container input[type="submit"] {
    padding: 10px 20px;
    background-color: #007bff;
    border: none;
    color: #fff;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.3s ease;
  }

  .form-container input[type="submit"]:hover {
    background-color: #0056b3;
    transform: scale(1.05);
  }

  @keyframes gradientShift {
    0% {
      background-position: 0% 0%;
    }
    50% {
      background-position: 100% 100%;
    }
    100% {
      background-position: 0% 0%;
    }
  }

  @keyframes fadeInScale {
    from {
      opacity: 0;
      transform: scale(0.9);
    }
    to {
      opacity: 1;
      transform: scale(1);
    }
  }
</style>

<c:forEach items="${question}" var="q">
  <div class="form-container">
    <div class="form-content">
      <form method="post" action="modify_qstn">
        <label for="question">Question:</label><br />
        <input type="text" id="question" name="question" value="${q.question}" readonly /><br />

        <label for="option1">Option 1:</label><br />
        <input type="text" id="option1" name="option1" value="${q.option1}" /><br />

        <label for="option2">Option 2:</label><br />
        <input type="text" id="option2" name="option2" value="${q.option2}" /><br />

        <label for="option3">Option 3:</label><br />
        <input type="text" id="option3" name="option3" value="${q.option3}" /><br />

        <label for="option4">Option 4:</label><br />
        <input type="text" id="option4" name="option4" value="${q.option4}" /><br />

        <label for="answer">Answer:</label><br />
        <input type="text" id="answer" name="answer" value="${q.answer}" /><br />

        <input type="submit" value="Modify" id="btn" />
      </form>
    </div>
  </div>
</c:forEach>
