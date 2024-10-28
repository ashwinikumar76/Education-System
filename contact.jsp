<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Contact Us</title>
    <link rel="stylesheet" href="styles.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
  </head>
  <body>
    <style>
      body {
        font-family: Arial, sans-serif;
        background-color: #003366;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        justify-content: space-between;
        align-items: center;
        min-height: 100vh;
      }

      .contact-form-section {
        width: 100%;
        display: flex;
        justify-content: center;
        padding: 20px 0;
      }

      .contact-form {
        background-color: #66c2ff;
        padding: 30px 40px;
        border-radius: 8px;
        width: 100%;
        max-width: 600px;
        text-align: center;
      }

      .contact-form h2 {
        margin-bottom: 20px;
        color: #003366;
      }

      .contact-form input,
      .contact-form textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 4px;
        font-size: 16px;
        color: #555;
      }

      .contact-form input:focus,
      .contact-form textarea:focus {
        border-color: #0056b3;
        outline: none;
      }

      .contact-form button {
        width: 100%;
        padding: 10px;
        background-color: #003366;
        border: none;
        border-radius: 4px;
        font-size: 18px;
        color: #fff;
        cursor: pointer;
        transition: background-color 0.3s ease;
      }

      .contact-form button:hover {
        background-color: #00264d;
      }

      .contact-info-section {
        width: 100%;
        background-color: #fff;
        padding: 20px;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
      }

      .contact-info {
        display: flex;
        justify-content: space-around;
        max-width: 800px;
        margin: 0 auto;
      }

      .info-box {
        text-align: center;
        width: 22%;
      }

      .info-box img {
        width: 40px;
        margin-bottom: 10px;
      }

      .info-box h3 {
        margin-bottom: 10px;
        color: #333;
      }

      .info-box p {
        margin: 0;
        color: #777;
        line-height: 1.5;
      }
    </style>

    <div class="contact-form-section">
      <div class="contact-form">
        <h2>Contact Us for a call</h2>
        <form action="#" method="post">
          <input type="text" placeholder="Enter your Name" required />
          <input
            type="email"
            placeholder="Enter a valid email address"
            required /><input
            type="number"
            placeholder="Enter your mobile number"
            required />
          <textarea
            placeholder="Enter your Message"
            rows="3"
            required></textarea>
          <button type="submit">Submit</button>
        </form>
      </div>
    </div>

    <div class="contact-info-section">
      <div class="contact-info">
        <div class="info-box">
          <i class="fas fa-map-marker-alt"></i>
          <h3>Our Main Office</h3>
          <p>Bhubaneswar<br />jaydev vihar</p>
        </div>
        <div class="info-box">
          <i class="fas fa-phone-alt"></i>
          <h3>Phone Number</h3>
          <p>1800-986-540<br />1800-012-456 (Toll Free)</p>
        </div>
        <div class="info-box">
          <i class="fab fa-whatsapp"></i>
          <h3>WhatsApp</h3>
          <p>+91 234-567-8900</p>
        </div>
        <div class="info-box">
          <i class="fas fa-envelope"></i>
          <h3>Email</h3>
          <p><a href="mailto:hello@theme.com">hello@theme.com</a></p>
        </div>
      </div>
    </div>
  </body>
</html>
