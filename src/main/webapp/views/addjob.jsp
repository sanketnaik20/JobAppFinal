<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Professional Job Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
        }
        .navbar {
            background-color: #ffffff;
            box-shadow: 0 2px 4px rgba(0,0,0,.1);
        }
        .navbar-brand {
            font-weight: 600;
            color: #333;
        }
        .nav-link {
            color: #555;
        }
        .card {
            border: none;
            box-shadow: 0 4px 6px rgba(0,0,0,.1);
            transition: all 0.3s ease;
        }
        .card:hover {
            box-shadow: 0 10px 15px rgba(0,0,0,.1);
        }
        .card-header {
            background-color: #007bff;
            color: white;
            font-weight: 600;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
        }
        .form-label {
            font-weight: 500;
        }
        .form-select[multiple] {
            height: 100px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">Professional Job Portal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="viewalljobs">Jobs</a></li>
                    <li class="nav-item"><a class="nav-link" href="https://github.com/sanketnaik20">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header text-center">
                        <h2 class="mb-0">Post a New Job</h2>
                    </div>
                    <div class="card-body">
                        <form:form action="handleForm" method="post" modelAttribute="jobPost">
                            <div class="mb-3">
                                <label for="postId" class="form-label">Post ID</label>
                                <input type="text" class="form-control" id="postId" name="postId" required>
                            </div>

                            <div class="mb-3">
                                <label for="postProfile" class="form-label">Job Title</label>
                                <input type="text" class="form-control" id="postProfile" name="postProfile" required>
                            </div>

                            <div class="mb-3">
                                <label for="postDesc" class="form-label">Job Description</label>
                                <textarea class="form-control" id="postDesc" name="postDesc" rows="3" required></textarea>
                            </div>

                            <div class="mb-3">
                                <label for="reqExperience" class="form-label">Required Experience (years)</label>
                                <input type="number" class="form-control" id="reqExperience" name="reqExperience" required>
                            </div>

                            <div class="mb-3">
                                <label for="postTechStack" class="form-label">Tech Stack</label>
                                <select multiple class="form-select" id="postTechStack" name="postTechStack" required>
                                    <option value="Java">Java</option>
                                    <option value="JavaScript">JavaScript</option>
                                    <option value="Python">Python</option>
                                    <option value="C++">C++</option>
                                    <option value="Ruby">Ruby</option>
                                    <option value="PHP">PHP</option>
                                    <option value="Swift">Swift</option>
                                    <option value="Go">Go</option>
                                    <option value="Rust">Rust</option>
                                    <option value="TypeScript">TypeScript</option>
                                </select>
                            </div>

                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Submit Job Posting</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>