<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Education System - Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #aceff8;
        }
        .container {
            width: 80%;
            margin: auto;
        }
        .section {
            margin-bottom: 30px;
            background-color: #bbdefb;
            padding: 20px;
            border-radius: 8px;
        }
        .section h2 {
            text-align: center;
            color: #0d47a1;
        }
        .faq-table, .notice-table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        .faq-table th, .faq-table td, .notice-table th, .notice-table td {
            padding: 12px;
            text-align: center;
            border: 1px solid #90caf9;
        }
        .faq-table th, .notice-table th {
            background-color: #0d47a1;
            color: white;
        }
        .faq-table td button, .notice-table td button {
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .faq-table td .edit-btn {
            background-color: #66bb6a;
            color: white;
        }
        .faq-table td .delete-btn, .notice-table td .delete-btn {
            background-color: #e57373;
            color: white;
        }
        .add-btn {
            background-color: #66bb6a;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .update-btn {
            background-color: #ffca28;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
</head>
<body>

    <div class="container">
        
        <!-- FAQ Section -->
        <div class="section">
            <h2>FAQ Page</h2>
            <table class="faq-table">
                <tr>
                    <th>Question</th>
                    <th>Answer</th>
                    <th>Action</th>
                </tr>
                <tr>
                    <td>Prabin Sir is a Corporate Trainer?</td>
                    <td>Yes</td>
                    <td>
                        <button class="edit-btn">Edit</button>
                        <button class="delete-btn">Delete</button>
                    </td>
                </tr>
                <tr>
                    <td>Question...</td>
                    <td>Answer...</td>
                    <td>
                        <button class="edit-btn">Edit</button>
                        <button class="delete-btn">Delete</button>
                    </td>
                </tr>
            </table>
            <button class="add-btn">Add</button>
        </div>
</body>
</html>