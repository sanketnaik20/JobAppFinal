<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.sanket.JobApp.model.JobPost" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Job Post Details | Job Portal</title>
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
            transition: transform 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card-title {
            color: #007bff;
            font-weight: 700;
        }
        .card-text strong {
            color: #495057;
        }
        .tech-stack-list {
            list-style-type: none;
            padding-left: 0;
        }
        .tech-stack-list li {
            display: inline-block;
            background-color: #e9ecef;
            padding: 5px 10px;
            margin: 2px;
            border-radius: 15px;
            font-size: 0.9em;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light">
    <div class="container">
        <a class="navbar-brand" href="#">
            <i class="fas fa-briefcase me-2"></i>Job Portal
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
    <h2 class="mb-4 text-center fw-bold text-primary">Job Post Details</h2>

    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card bg-white text-dark">
                <div class="card-body">
                    <h3 class="card-title mb-4">${jobPost.postProfile}</h3>
                    <p class="card-text">
                        <i class="fas fa-id-badge me-2"></i>
                        <strong>Job-Id:</strong>
                        ${jobPost.postId}
                    </p>
                    <p class="card-text">
                        <i class="fas fa-info-circle me-2"></i>
                        <strong>Description:</strong>
                        ${jobPost.postDesc}
                    </p>
                    <p class="card-text">
                        <i class="fas fa-user-clock me-2"></i>
                        <strong>Experience Required:</strong>
                        ${jobPost.reqExperience} years
                    </p>
                    <p class="card-text">
                        <i class="fas fa-laptop-code me-2"></i>
                        <strong>Tech Stack Required:</strong>
                    </p>
                    <ul class="tech-stack-list">
                        <c:forEach var="tech" items="${jobPost.postTechStack}">
                            <li>${tech}</li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
