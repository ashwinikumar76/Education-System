<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>EMS Gallery</title>
  </head>
  <body>
    <div class="gallery-container">
      <h2>Beyond the Vision</h2>
      <div class="gallery">
        <div class="gallery-item">
          <img src="https://images.unsplash.com/photo-1498050108023-c5249f4df085?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDF8fGVkdWNhdGlvbnxlbnwwfHx8fDE2MjI3MzM4NjY&ixlib=rb-1.2.1&q=80&w=400" alt="Image 1" />
        </div>
        <div class="gallery-item">
          <img src="https://images.unsplash.com/photo-1503676260728-1c00da094a0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDIwfGVkdWNhdGlvbnxlbnwwfHx8fDE2MjI3MzM4NjY&ixlib=rb-1.2.1&q=80&w=400" alt="Image 2" />
        </div>
        <div class="gallery-item">
          <img src="https://images.unsplash.com/photo-1511367461989-f85a21fda167?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDV8fGVkdWNhdGlvbnxlbnwwfHx8fDE2MjI3MzM4NjY&ixlib=rb-1.2.1&q=80&w=400" alt="Image 3" />
        </div>
        <div class="gallery-item">
          <img src="https://images.unsplash.com/photo-1501696466767-dc07f7ba71f1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDF8fGVkdWNhdGlvbnxlbnwwfHx8fDE2MjI3MzM4NjY&ixlib=rb-1.2.1&q=80&w=400" alt="Image 4" />
        </div>
        <div class="gallery-item">
          <img src="https://images.unsplash.com/photo-1515378791036-0648a3ef77b2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDd8fGVkdWNhdGlvbnxlbnwwfHx8fDE2MjI3MzM4NjY&ixlib=rb-1.2.1&q=80&w=400" alt="Image 5" />
        </div>
        <div class="gallery-item">
          <img src="https://images.unsplash.com/photo-1519455953755-af066f52f1d7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDExfGVkdWNhdGlvbnxlbnwwfHx8fDE2MjI3MzM4NjY&ixlib=rb-1.2.1&q=80&w=400" alt="Image 6" />
        </div>
        <div class="gallery-item">
          <img src="https://images.unsplash.com/photo-1503676260728-1c00da094a0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDIwfGVkdWNhdGlvbnxlbnwwfHx8fDE2MjI3MzM4NjY&ixlib=rb-1.2.1&q=80&w=400" alt="Image 7" />
        </div>
        <div class="gallery-item">
          <img src="https://images.unsplash.com/photo-1584697964404-b523fcf78585?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDR8fGVkdWNhdGlvbnxlbnwwfHx8fDE2MjI3MzM4NjY&ixlib=rb-1.2.1&q=80&w=400" alt="Image 8" />
        </div>
        <div class="gallery-item">
          <img src="https://images.unsplash.com/photo-1515378791036-0648a3ef77b2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDd8fGVkdWNhdGlvbnxlbnwwfHx8fDE2MjI3MzM4NjY&ixlib=rb-1.2.1&q=80&w=400" alt="Image 9" />
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
        font-family: "Arial", sans-serif;
        background-color: #f7f7f7;
      }

      .gallery-container {
        text-align: center;
        padding: 20px;
      }

      .gallery-container h2 {
        margin-bottom: 20px;
        font-size: 2.5rem;
        color: #333;
      }

      .gallery {
        display: grid;
        grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
        gap: 20px;
        padding: 20px;
        max-width: 1200px;
        margin: 0 auto;
      }

      .gallery-item {
        position: relative;
        overflow: hidden;
        border-radius: 10px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
      }

      .gallery-item img {
        width: 100%;
        height: auto;
        transition: transform 0.5s ease, filter 0.5s ease;
      }

      .gallery-item:hover img {
        transform: scale(1.1);
        filter: brightness(0.8);
      }

      /* Animation on page load */
      .gallery-item {
        opacity: 0;
        transform: scale(0.9);
        animation: fadeInUp 0.8s forwards;
      }

      @keyframes fadeInUp {
        from {
          opacity: 0;
          transform: translateY(20px) scale(0.9);
        }
        to {
          opacity: 1;
          transform: translateY(0) scale(1);
        }
      }
    </style>
  </body>
</html>
