<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
      crossorigin="anonymous" />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
      crossorigin="anonymous"></script>
    <title>Student Dashboard</title>
     </head>
  <body>
    <header
      class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom"
      style="background-color: black">
      <a
        href="/profile"
        class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
        <svg class="bi me-2" width="40" height="32">
          <use xlink:href="#bootstrap"></use>
        </svg>
        <span class="fs-4 text-white">Student</span>
      </a>

      <ul class="nav nav-pills">
        <li class="nav-item">
          <a href="/exam" class="nav-link text-white" aria-current="page"
            >Exam</a
          >
        </li>
        <li class="nav-item">
          <a href="/result" class="nav-link text-white">Result</a>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link text-white">Progress</a>
        </li>
        <li class="nav-item">
          <a href="#" class="nav-link text-white">Video</a>
        </li>
        <li class="nav-item">
          <a href="/leaveapply" class="nav-link text-white">Leave Apply</a>
        </li>
        <li class="nav-item">
          <a href="/logout" class="nav-link text-white">Logout</a>
        </li>
      </ul>
    </header>
