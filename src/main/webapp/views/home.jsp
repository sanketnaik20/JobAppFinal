<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Portal</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <style>
		
        body {
            background-color: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .navbar {
            background-color: #ffffff;
            box-shadow: 0 2px 4px rgba(0,0,0,.1);
        }
        .navbar-brand {
            font-weight: 700;
            color: #007bff;
        }
        .nav-link {
            font-weight: 500;
            color: #333;
            transition: color 0.3s ease;
        }
        .nav-link:hover {
            color: #007bff;
        }
        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            height: 100%;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 15px 30px rgba(0,0,0,0.2);
        }
        .card-title {
            color: #007bff;
            font-weight: 700;
        }
        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
            transition: all 0.3s ease;
        }
        .btn-primary:hover {
            background-color: #0056b3;
            border-color: #0056b3;
            transform: translateY(-2px);
        }
        .icon-bg {
            background-color: #e9ecef;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
        }
        .icon-bg i {
            font-size: 24px;
            color: #007bff;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <a class="navbar-brand" href="#">
            <i class="fas fa-briefcase me-2"></i> Job Portal
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="home"><i class="fas fa-home me-1"></i>Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="viewalljobs"><i class="fas fa-list me-1"></i>All Jobs</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="https://github.com/sanketnaik20"><i class="fas fa-envelope me-1"></i>Contact</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<div class="container mt-5">
    <h1 class="text-center mb-5 text-primary fw-bold">Welcome to Job Portal</h1>
    <div class="row">
        <div class="col-md-6 mb-4">
            <div class="card text-center">
                <div class="card-body">
                    <div class="icon-bg">
                        <i class="fas fa-search"></i>
                    </div>
                    <h5 class="card-title">View All Jobs</h5>
                    <p class="card-text">Explore all available job opportunities</p>
                    <form action="/viewalljobs" method="get">
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-list-ul me-2"></i>Browse Jobs
                        </button>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-md-6 mb-4">
            <div class="card text-center">
                <div class="card-body">
                    <div class="icon-bg">
                        <i class="fas fa-plus-circle"></i>
                    </div>
                    <h5 class="card-title">Add New Job</h5>
                    <p class="card-text">Post a new job opportunity</p>
                    <form action="/addjob" method="get">
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-plus me-2"></i>Add Job
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

