<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <!-- Change Password Page -->
        <div class="section">
            <h2>Change Password Page</h2>
            <input type="password" placeholder="New Password">
            <input type="password" placeholder="Confirm Password">
            <button class="update">Update</button>
        </div>
        
        <!-- FAQ Page -->
        <div class="section">
            <h2>FAQ Page</h2>
            <div class="faq">
                <input type="text" placeholder="Question">
                <input type="text" placeholder="Answer">
                <button class="update">Update Question</button>
                <button class="delete">Delete</button>
            </div>
        </div>

        <!-- Notice Page -->
        <div class="section">
            <h2>Notice Page</h2>
            <input type="text" placeholder="Add Notice">
            <button class="update">Update Notice</button>
            <div class="notice">
                <p>Java Exam - 05/07/2024</p>
                <button class="update">Update</button>
                <button class="delete">Delete</button>
            </div>
        </div>
    </div>
    <style>
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f0f8ff;
}

.container {
    width: 90%;
    margin: auto;
    padding: 20px;
}

.section {
    background-color: #e0f7fa;
    padding: 20px;
    margin: 20px 0;
    border-radius: 10px;
}

h2 {
    margin-bottom: 20px;
    color: #00796b;
}

input[type="text"], input[type="password"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

button {
    padding: 10px 20px;
    margin-right: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

button.update {
    background-color: #4caf50;
    color: white;
}

button.delete {
    background-color: #f44336;
    color: white;
}

.faq, .notice {
    background-color: #ffffff;
    padding: 10px;
    margin-top: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

    </style>
</body>
</html>
