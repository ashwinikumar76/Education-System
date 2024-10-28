<jsp:include page="facultyheader.jsp"></jsp:include>
<div class="form-container">
  <form method="post" action="save_qstn">
    <label for="question">Question:</label>
    <input type="text" id="question" name="question" required />

    <label for="option1">Option 1:</label>
    <input type="text" id="option1" name="option1" required />

    <label for="option2">Option 2:</label>
    <input type="text" id="option2" name="option2" required />

    <label for="option3">Option 3:</label>
    <input type="text" id="option3" name="option3" required />

    <label for="option4">Option 4:</label>
    <input type="text" id="option4" name="option4" required />

    <label for="answer">Answer:</label>
    <input type="text" id="answer" name="answer" required />

    <input type="submit" value="Finish" id="btn" />
  </form>
</div>
<style type="text/css">
  /* Styling for the form container */
  body{
     font-family: "Poppins", sans-serif;
        background: linear-gradient(270deg, #6dd5fa, #ffffff,#87f8c1,#f7abab);
        background-size: 400% 400%;
        animation: gradientShift 10s ease infinite;
       
        align-items: center;
        justify-content: center;
      
        margin: 0;
        padding: 0;
        overflow: hidden;
  }
  .form-container {
    max-width: 600px;
    margin: 0px auto;
    padding: 20px;
    background: #ffffff;
    border-radius: 10px;
    box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
    animation: fadeInUp 1.5s ease forwards;
  }

  /* Form animation */
  @keyframes fadeInUp {
    0% {
      opacity: 0;
      transform: translateY(20px);
    }
    100% {
      opacity: 1;
      transform: translateY(0);
    }
  }

  /* Form styling */
  form {
    display: flex;
    flex-direction: column;
  }

  /* Label styling */
  label {
    font-size: 16px;
    margin-bottom: 5px;
    color: #333;
  }

  /* Input field styling */
  input[type="text"] {
    margin-bottom: 15px;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    transition: all 0.3s ease;
  }

  /* Input field focus effect */
  input[type="text"]:focus {
    border-color: #0072ff;
    box-shadow: 0 0 5px rgba(0, 114, 255, 0.5);
  }

  /* Submit button styling */
  #btn {
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    background: #0072ff;
    color: #ffffff;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s ease, transform 0.3s ease;
    align-self: center;
  }

  /* Button hover effect */
  #btn:hover {
    background: #005bb5;
    transform: scale(1.05);
  }

  /* Button active effect */
  #btn:active {
    transform: scale(0.95);
  }
</style>
