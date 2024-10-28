<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Notice Board</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        margin: 0;
        padding: 0;
        background-color: #888;
      }
      .container {
        max-width: 800px;
        margin: 50px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      }
      h1 {
        text-align: center;
        color: #333;
        margin-bottom: 30px;
      }
      .moving-notices {
        background-color: #007bff;
        color: #fff;
        padding: 10px;
        border-radius: 5px;
        margin-bottom: 20px;
        overflow: hidden;
        position: relative;
        height: 40px;
      }
      .moving-notices span {
        position: absolute;
        white-space: nowrap;
        will-change: transform;
        animation: moveNotice 25s linear  infinite;
      }
      @keyframes moveNotice {
        0% {
          transform: translateX(100%);
        }
        100% {
          transform: translateX(-100%);
        }
      }
      .notice {
        border-bottom: 1px solid #ddd;
        padding-bottom: 15px;
        margin-bottom: 15px;
      }
      .notice:last-child {
        border-bottom: none;
      }
      .notice-title {
        font-size: 18px;
        font-weight: bold;
        color: #007bff;
        margin: 0;
      }
      .notice-description {
        font-size: 14px;
        color: #555;
        margin: 10px 0;
      }
      .notice-date {
        font-size: 12px;
        color: #888;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>Notice Board</h1>

      <!-- Moving Notices Section -->
      <div class="moving-notices">
        <span>
          <%-- This could be dynamic as well, showing only the most important notices --%>
          Upcoming Maintenance: System will be under maintenance on August 15th from 2 AM to 5 AM. &nbsp;&nbsp; | &nbsp;&nbsp;
          New Course Available: Data Science course has been added to the curriculum. &nbsp;&nbsp; | &nbsp;&nbsp;
          Holiday Notice: Institution will be closed on August 20th due to a public holiday.
        </span>
      </div>

      <%-- Static Notices Section --%>
      <%
        // Example list of notices
        List<String[]> notices = new ArrayList<>();
        notices.add(new String[] {"System Maintenance", "The system will be under maintenance on August 15th from 2 AM to 5 AM.", "August 13, 2024"});
        notices.add(new String[] {"New Course Available", "A new course on Data Science has been added to the curriculum.", "August 12, 2024"});
        notices.add(new String[] {"Holiday Notice", "The institution will be closed on August 20th due to a public holiday.", "August 11, 2024"});

        for (String[] notice : notices) {
      %>
      <div class="notice">
        <h2 class="notice-title"><%= notice[0] %></h2>
        <p class="notice-description"><%= notice[1] %></p>
        <p class="notice-date"><%= notice[2] %></p>
      </div>
      <% } %>
    </div>
  </body>
</html>
