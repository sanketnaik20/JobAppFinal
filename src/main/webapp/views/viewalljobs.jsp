<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="ab" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List" %>
<%@ page import="com.sanket.JobApp.model.JobPost" %>
<%@ page import="com.sanket.JobApp.repo.JobRepo" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Portal | Find Your Next Opportunity</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap">
    <style>
        :root {
            --primary-gradient: linear-gradient(135deg, #4F46E5 0%, #7C3AED 100%);
            --card-gradient: linear-gradient(180deg, rgba(255, 255, 255, 0.05) 0%, rgba(255, 255, 255, 0) 100%);
        }
        
        body {
            font-family: 'Inter', sans-serif;
            background: #F3F4F6;
            color: #1F2937;
        }

        .navbar {
            background: var(--primary-gradient);
            padding: 1rem 0;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
        }

        .navbar-brand {
            color: white !important;
            font-weight: 700;
            letter-spacing: -0.025em;
        }

        .nav-link {
            color: rgba(255, 255, 255, 0.9) !important;
            font-weight: 500;
            transition: all 0.2s ease;
        }

        .nav-link:hover {
            color: white !important;
            transform: translateY(-1px);
        }

        .page-header {
            text-align: center;
            padding: 3rem 0;
            background: white;
            margin-bottom: 2rem;
            border-bottom: 1px solid rgba(0, 0, 0, 0.1);
        }

        .page-title {
            font-size: 2.5rem;
            font-weight: 700;
            color: #111827;
            margin-bottom: 1rem;
        }

        .card {
            border: none;
            background: white;
            border-radius: 1rem;
            overflow: hidden;
            transition: all 0.3s ease;
            box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
        }

        .card:hover {
            transform: translateY(-4px);
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
        }

        .card-body {
            padding: 2rem;
        }

        .card-title {
            font-size: 1.25rem;
            font-weight: 600;
            color: #111827;
            margin-bottom: 1rem;
        }

        .job-id {
            font-size: 0.875rem;
            color: #6B7280;
            margin-bottom: 1rem;
        }

        .job-description {
            color: #4B5563;
            margin-bottom: 1.5rem;
            line-height: 1.6;
        }

        .tech-stack {
            display: flex;
            flex-wrap: wrap;
            gap: 0.5rem;
            margin-top: 1rem;
        }

        .tech-badge {
            background: #F3F4F6;
            color: #374151;
            padding: 0.25rem 0.75rem;
            border-radius: 9999px;
            font-size: 0.875rem;
            font-weight: 500;
        }

        .experience-badge {
            display: inline-flex;
            align-items: center;
            background: #EEF2FF;
            color: #4F46E5;
            padding: 0.5rem 1rem;
            border-radius: 9999px;
            font-weight: 500;
            margin-bottom: 1rem;
        }

        @media (max-width: 768px) {
            .row-cols-2 {
                --bs-rows-cols: 1 !important;
            }
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container">
            <a class="navbar-brand" href="#">JobPortal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="home">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="viewalljobs">All Jobs</a></li>
                    <li class="nav-item"><a class="nav-link" href="https://telusko.com/">Contact</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="page-header">
        <div class="container">
            <h1 class="page-title">Discover Your Next Career Move</h1>
            <p class="text-muted">Explore the latest job opportunities that match your skills</p>
        </div>
    </div>

    <ab:set var="jobPosts" value="${jobPosts}" />

    <div class="container pb-5">
        <div class="row row-cols-1 row-cols-md-2 g-4">
            <ab:forEach var="jobPost" items="${jobPosts}">
                <div class="col">
                    <div class="card h-100">
                        <div class="card-body">
                            <h5 class="card-title">${jobPost.postProfile}</h5>
                            <div class="job-id">Job ID: ${jobPost.postId}</div>
                            <div class="experience-badge">
                                ${jobPost.reqExperience} Years Experience
                            </div>
                            <p class="job-description">${jobPost.postDesc}</p>
                            <div class="tech-stack">
                                <ab:forEach var="tech" items="${jobPost.postTechStack}">
                                    <span class="tech-badge">${tech}</span>
                                </ab:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </ab:forEach>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
