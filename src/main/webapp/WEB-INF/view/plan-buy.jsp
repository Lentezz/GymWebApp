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
    <link rel="stylesheet" href="<c:url value="/static/css/main.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/services.css"/>">
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
                <span class="shape"></span>База планів тренувань<span class="shape"></span></span>
        </h3>
    </div>
</section>

<!-- Breadcrumb Section -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">Замовляй онлайн</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Дім</a></li>
                <li><a href="<c:url value="/gym/plans"/>">План тренувань</a></li>
                <li>Замовити план</li>
            </ul>
        </div>
    </div>
</div>

<!-- Buy plan form -->
<section class="register-section classes-page spad bg_img" data-background="/static/images/banner/banner-bg.jpg">
    <div class="container">
        <div class="card card-5 ">
            <div class="card-body">
                <div class="register-text">
                    <div class="section-title">
                        <h3>Обраний план: ${plan.name}</h3>
                        <br>
                        <p><b>Кількість тренувань: ${plan.numberOfClasses}</b></p>
                        <p><b>Ціна: ${plan.price}0 ₴.</b></p>
                    </div>
                </div>
                <div class="section-title">
                    <form:form method="post" action="/gym/plans/${plan.id}" modelAttribute="plan" class="register-form">
                    <div class="col-lg-6">
                        <div class="form-row">
                            <div class="name"></div>
                            <div class="value">
                                <p hidden><form:input path="id"/></p>
                                <p hidden><form:input path="name"/></p>
                                <p hidden><form:input path="numberOfClasses"/></p>
                                <p hidden><form:input path="price"/></p>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Інструктор<br>(за бажанням)</div>
                            <div class="value">
                                <div class="rs-select2 js-select-simple select--no-search">
                                    <form:select multiple="false" path="trainers">
                                        <form:option value="0" label="Обрати зі списку"/>
                                        <form:options itemValue="id" itemLabel="name" name="trainer" items="${trainers}"/>
                                    </form:select>
<%--                                    <form:select itemValue="id" itemLabel="name" multiple="false"--%>
<%--                                                 path="trainers" items="${trainers}"/>--%>
                                    <div class="select-dropdown"></div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row p-t-20">
                            <label class="label label--block">Додати план харчування (+ ${plan.nutritionPrice}0 ₴)</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">Так
                                    <input type="radio" name="exists" value="yes">
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">Ні
                                    <input type="radio" checked="checked" name="exists" value="no">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <input type="submit" class="register-btn" value="Придбати"/>
                        <p>* Після оформлення замовлення ви будете перенаправлені на сторінку для оплати.
                        Приходьте до нас, якщо бажаєте зробити покупку прямо в клубі.
                        <div class="form-row p-t-10">
                            <input type="button" class="custom-button-plan" onclick="location.href='/gym/plans';"
                                   value="Назад"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </form:form>
</section>
</body>

<!-- Footer -->
<%@ include file="./footer.jsp" %>
<!-- /.footer -->
</html>