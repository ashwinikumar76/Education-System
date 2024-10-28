<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>admin page</title>
    <link rel="stylesheet" href="styles.css" />
  </head>
  <body>
    <nav class="navbar">
      <div class="navbar-brand">ADMIN</div>
      <div class="navbar-toggle" id="mobile-menu">
        <span class="bar"></span>
        <span class="bar"></span>
        <span class="bar"></span>
      </div>
      <ul class="navbar-menu">
        <li class="navbar-item"><a href="#" class="navbar-link">Home</a></li>
        <li class="navbar-item"><a href="#" class="navbar-link">About</a></li>
        <li class="navbar-item">
          <a href="#" class="navbar-link">Services</a>
        </li>
        <li class="navbar-item"><a href="#" class="navbar-link">Contact</a></li>
        <li class="navbar-item profile">
          <a href="#" class="navbar-link profile-link">Profile</a>
          <ul class="dropdown-menu">
            <li><a href="#" class="dropdown-link">My Account</a></li>
            <li><a href="#" class="dropdown-link">Settings</a></li>
            <li><a href="#" class="dropdown-link">Logout</a></li>
          </ul>
        </li>
      </ul>
    </nav>
    <script type="text/javascript">
      const mobileMenu = document.getElementById("mobile-menu");
      const navbarMenu = document.querySelector(".navbar-menu");

      mobileMenu.addEventListener("click", () => {
        navbarMenu.classList.toggle("active");
      });
    </script>

<style type="text/css">
    body {
    margin: 0;
    font-family: Arial, sans-serif;
}

.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #0e8f79;
    padding: 10px 20px;
}

.navbar-brand {
    color: #fff;
    font-size: 1.5em;
}

.navbar-menu {
    list-style: none;
    display: flex;
    margin: 0;
    padding: 0;
}

.navbar-item {
    margin-left: 20px;
    position: relative;
}

.navbar-link {
    color: #fff;
    text-decoration: none;
    padding: 8px 16px;
    transition: background-color 0.3s;
}

.navbar-link:hover {
    background-color: #600698;
    border-radius: 4px;
}

.navbar-toggle {
    display: none;
    flex-direction: column;
    cursor: pointer;
}

.bar {
    height: 3px;
    width: 25px;
    background-color: #040b72;
    margin: 4px 0;
    transition: 0.3s;
}

.profile {
    cursor: pointer;
}

.profile .dropdown-menu {
    display: none;
    position: absolute;
    top: 100%;
    right: 0;
    background-color: #110917;
    list-style: none;
    margin: 0;
    padding: 0;
    border-radius: 4px;
    overflow: hidden;
    min-width: 150px;
    z-index: 1;
}

.profile:hover .dropdown-menu {
    display: block;
}

.dropdown-link {
    color: #348c04;
    text-decoration: none;
    padding: 10px 15px;
    display: block;
    transition: background-color 0.3s;
}

.dropdown-link:hover {
    background-color: #8e8c0b;
}

@media (max-width: 768px) {
    .navbar-menu {
        display: none;
        flex-direction: column;
        width: 100%;
        position: absolute;
        top: 50px;
        left: 0;
        background-color: #c81010;
    }

    .navbar-menu.active {
        display: flex;
    }

    .navbar-item {
        margin: 10px 0;
        text-align: center;
    }

    .navbar-toggle {
        display: flex;
    }
}

</style>

  </body>
</html>
