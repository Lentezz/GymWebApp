<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Мій спортклуб</title>
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Rajdhani:300,400,500,600,700&display=swap"/>"
          rel="stylesheet">
    <link href="<c:url value="https://fonts.googleapis.com/css?family=Open+Sans:400,400i,600,600i,700,700i&display=swap"/>"
          rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="http://cdn.bootstrapmb.com/bootstrap/4.3.1/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/all.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/animate.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/lightcase.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/flaticon.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/swiper.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/style.css"/>">
</head>

<body>
<!-- Header -->
<%@ include file="./header.jsp" %>
<!-- /.header -->
<a href="#" class="scrollToTop"><i class="fas fa-angle-up"></i></a>

<!-- Page Header -->
<section class="page-header bg_img" data-background="/static/images/banner/05.jpg">
    <div class="container">
        <h3 class="title">
            <span class="shape-wrapper">
                <span class="shape"></span>плани тренувань<span class="shape"></span></span>
        </h3>
    </div>
</section>

<!-- Breadcrumb Section -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">Замовити план тренувань</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Дім</a></li>
                <li> Пропозиції</li>
            </ul>
        </div>
    </div>
</div>

<section class="package-section padding-bottom padding-top bg_img" data-background="/static/images/home/man.jpg"
         no-repeat center center>
    <div class="container">
        <div class="section-header"><h2 class="title"> Наші пропозиції </h2>
            <p>Скористайтеся планами тренувань, які проводяться досвідченими інструкторами та персональними тренерами
                нашого спортзалу</p></div>
        <div class="row mb-30-none justify-content-center">
            <div class="col-lg-4 col-md-6">
                <div class="package-item">
                    <div class="package-header"><span>План набір маси</span>
                        <h3 class="title">маса</h3></div>
                    <div class="package-content">
                        <ul>
                            <c:forEach items="${plans}" var="plan" begin="0" end="2">
                                <li><b>Пакет ${plan.numberOfClasses} workouts</b>
                                    <span>&nbsp &nbsp &nbsp${plan.price}0 ₴.</span>
                                </li>
                                <a href="<c:out value="/gym/plans/${plan.id}"/>" class="plan-custom-button">Обрати</a>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="package-item">
                    <div class="package-header"><span>План-схуднення</span>
                        <h3 class="title">схуднення</h3></div>
                    <div class="package-content">
                        <ul>
                            <c:forEach items="${plans}" var="plan" begin="3" end="5">
                                <li><b>Пакет ${plan.numberOfClasses} workouts</b>
                                    <span>&nbsp &nbsp &nbsp${plan.price}0 ₴.</span>
                                </li>
                                <a href="<c:out value="/gym/plans/${plan.id}"/>" class="plan-custom-button">Обрати</a>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="package-item">
                    <div class="package-header"><span>План-сила</span>
                        <h3 class="title">сила</h3></div>
                    <div class="package-content">
                        <ul>
                            <c:forEach items="${plans}" var="plan" begin="6" end="8">
                                <li><b>Пакет ${plan.numberOfClasses} workouts</b>
                                    <span>&nbsp &nbsp &nbsp${plan.price}0 ₴.</span>
                                </li>
                                <a href="<c:out value="/gym/plans/${plan.id}"/>" class="plan-custom-button">Обрати</a>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</body>
<!-- Footer -->
<%@ include file="./footer.jsp" %>
<!-- /.footer -->
</html>