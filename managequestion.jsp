<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="facultyheader.jsp"></jsp:include>

<table class="styled-table">
  <thead>
    <tr>
      <th>Question</th>
      <th>Option 1</th>
      <th>Option 2</th>
      <th>Option 3</th>
      <th>Option 4</th>
      <th>Answer</th>
      <th>Manage</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="q" items="${question}">
      <tr>
        <td>${q.question}</td>
        <td>${q.option1}</td>
        <td>${q.option2}</td>
        <td>${q.option3}</td>
        <td>${q.option4}</td>
        <td>${q.answer}</td>
        <td>
          <form method="post" action="manage_question">
            <input type="hidden" name="answer" value="${q.answer}" />
            <input type="hidden" name="question" value="${q.question}" />
            <input type="submit" name="btn" value="delete" class="btn-delete" />
            <input type="submit" name="btn" value="edit" class="btn-edit" />
          </form>
        </td>
      </tr>
    </c:forEach>
  </tbody>
</table>

<style>
  /* Background Color Animation */
  body {
    font-family: "Arial", sans-serif;
    background: linear-gradient(45deg, #c9fabe, #afd1f8);
    background-size: 200% 200%;
    animation: gradientAnimation 15s ease infinite;
    padding: 20px;
    margin: 0;
  }

  /* Table Styling */
  .styled-table {
    width: 100%;
    border-collapse: collapse;
    font-size: 14px;
    background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent white for the table */
    border-radius: 8px;
    overflow: hidden;
  }

  .styled-table thead tr {
    background-color: #2b80f7;
    color: #ffffff;
    text-align: left;
    font-weight: bold;
  }

  .styled-table th,
  .styled-table td {
    padding: 12px 15px;
  }

  .styled-table tbody tr {
    border-bottom: 1px solid #dddddd;
    transition: background-color 0.3s ease, transform 0.3s ease;
  }

  .styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
  }

  .styled-table tbody tr:hover {
    background-color: #d4c5c5;
    transform: scale(1.02);
  }

  /* Button Styling */
  .btn-delete,
  .btn-edit {
    padding: 6px 12px;
    margin: 2px;
    border: none;
    cursor: pointer;
    font-size: 14px;
    transition: background-color 0.3s ease, transform 0.3s ease;
  }

  .btn-delete {
    background-color: #f55882;
    color: white;
  }

  .btn-delete:hover {
    background-color: #f42009;
    transform: translateY(-2px);
  }

  .btn-edit {
    background-color: #50f69b;
    color: white;
  }

  .btn-edit:hover {
    background-color: #b1e521;
    transform: translateY(-2px);
  }

  /* Add subtle animations */
  @keyframes fadeIn {
    from {
      opacity: 0;
    }
    to {
      opacity: 1;
    }
  }

  .styled-table tbody tr {
    animation: fadeIn 0.5s ease-in-out;
  }

  /* Background Color Animation */
  @keyframes gradientAnimation {
    0% {
      background-position: 0% 0%;
      background-color: #ff7e5f;
    }
    50% {
      background-position: 100% 100%;
      background-color: #feb47b;
    }
    100% {
      background-position: 0% 0%;
      background-color: #ff7e5f;
    }
  }
</style>
