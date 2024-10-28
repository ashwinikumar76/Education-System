<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="user" items="${usermaster}">
    <form method="post" action="updateuser">

        Name:<input type="text" name="name" value="${user.name}"><br>
        <input type="text" name="email" value="${user.email}" readonly><br>
        Mobile: <input type="text" name="mobile" value="${user.mobile}"><br>
        Status:<input type="text" name="status" value="${user.status}"/>
        <input type="submit" value="submit"/>
    </form>



</c:forEach>
${msg}
<style type="text/css">
    body{
        background-color: bisque;
    }
/* CSS for the form */
form {
    background-color: #f2f2f2;
    padding: 20px;
    margin: 20px auto;
    width: 300px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

/* Style the input fields */
input[type="text"] {
    width: calc(100% - 22px);
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
}

/* Style the submit button */
input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 15px;
    margin: 10px 0;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
}

/* Add a hover effect for the submit button */
input[type="submit"]:hover {
    background-color: #45a049;
}

/* Style for labels */
label {
    font-weight: bold;
    margin-top: 10px;
    display: block;
}

/* Cent


</style>