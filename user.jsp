<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
  body {
    background-image: url("https://www.istockphoto.com/photo/waiting-for-job-interview-gm1451152247-487889536?utm_campaign=srp_photos_top&utm_content=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Femployee-list&utm_medium=affiliate&utm_source=unsplash&utm_term=employee+list%3A%3A%3A");
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    margin: 0;
    font-family: Arial, sans-serif;
  }

  table {
    width: 80%;
    margin: 50px auto;
    border-collapse: collapse;
    background-color: rgba(
      255,
      255,
      255,
      0.8
    ); /* White background with 20% transparency */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  }

  th,
  td {
    padding: 12px 15px;
    text-align: left;
    border: 1px solid #ddd;
  }

  th {
    background-color: rgba(
      244,
      244,
      244,
      0.9
    ); /* Slightly transparent header background */
  }

  tr:nth-child(even) {
    background-color: rgba(
      249,
      249,
      249,
      0.9
    ); /* Slightly transparent row background */
  }

  tr:hover {
    background-color: rgba(
      241,
      241,
      241,
      0.9
    ); /* Slightly transparent hover effect */
  }

  input[type="submit"] {
    padding: 5px 10px;
    border: none;
    cursor: pointer;
    border-radius: 3px;
  }

  input[type="submit"][value="edit"] {
    background-color: rgb(40, 126, 239);
    color: white;
  }

  input[type="submit"][value="delete"] {
    background-color: rgb(202, 241, 59);
    color: white;
  }

  input[type="submit"]:hover {
    opacity: 0.8;
  }
</style>

<table>
  <tr>
    <th>Name</th>
    <th>Mobile</th>
    <th>Status</th>
    <th>Actions</th>
  </tr>
  <c:forEach var="user" items="${usermaster}">
    <tr>
      <td>${user.name}</td>
      <td>${user.mobile}</td>
      <td>${user.status}</td>
      <td>
        <form method="post" action="manageuser">
          <input type="hidden" name="email" value="${user.email}" />
          <input type="submit" name="btn" value="delete" />
          <input type="submit" name="btn" value="edit" />
        </form>
      </td>
    </tr>
  </c:forEach>
</table>
