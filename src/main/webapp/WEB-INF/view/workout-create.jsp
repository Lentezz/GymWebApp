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
    <link rel="stylesheet" href="<c:url value="/static/css/services.css"/>">
    <link rel="stylesheet" href="<c:url value="/static/css/class-register.css"/>">
</head>
<body>
<!-- Header -->
<%@ include file="./header.jsp" %>
<!-- /.header -->
<a href="#" class="scrollToTop"><i class="fas fa-angle-up"></i></a>
<!-- Page Header-->
<section class="page-header bg_img" data-background="/static/images/banner/05.jpg">
    <div class="container">
        <h3 class="title">
            <span class="shape-wrapper">
                <span class="shape"></span>Генератор тренування<span class="shape"></span></span>
        </h3>
    </div>
</section>

<!-- Breadcrumb Section -->
<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">Створити тренування</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Дім</a></li>
                <li><a href="<c:url value="/gym/dashboard"/>">Мій спортклуб</a></li>
                <li>Мої тренування</li>
            </ul>
        </div>
    </div>
</div>
<div class="padding-bottom padding-top bg_img" data-background="/static/images/banner/stripes.png">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div>
                    <div class="col-lg-10">
                        <div class="expert-single-content"><h3 class="title">Створити власне тренування</h3>
                            <div><b>
                                <form:form method="post" action="/gym/workout/create" class="registration-form" modelAttribute="workout" style="color: black"><br>

                                <div class="form-group"> 1. Назва вашого плану</div>
                                <form:input path="name" type="text" required="true"/><br><br>

                                <div class="form-group"> 2. Ціль тренувань</div>
                                <div class="p-t-15"><b></b>
                                    <label class="radio-container m-r-55">Набір ваги
                                        <form:radiobutton path="type" name="type" value="МАСА"/><span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container">Схуднення
                                        <form:radiobutton path="type" name="type" value="СХУДНЕННЯ"/><span class="checkmark"></span>
                                    </label>
                                    <label class="radio-container m-r-55">Сила
                                        <form:radiobutton path="type" name="type" value="СИЛА"/><span class="checkmark"></span>
                                    </label>
                                </div><br>

                                <div class="form-group"> 3. Оберіть частини тіла, які потрібно тренувати</div>
                                <div class="value">
                                    <div class="rs-select2 js-select-simple select--no-search select-dropdown">
                                        <form:select path="muscleGroups" class="dropdown-content">
                                            <c:forEach var="muscle" items="${workout.muscleGroups}">
                                            <form:option value="${muscle}" name="muscleGroup">${muscle}</form:option>
                                        </c:forEach>
                                        </form:select>
                                    </div>
                                </div><br>

                                <div class="form-group"> 4. Оберіть необхідне обладняння</div>
                                <div class="value">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <form:select path="equipment" class="dropdown-content">
                                            <c:forEach var="equipment" items="${workout.equipment}">
                                            <form:option value="${equipment}" name="equipment">${equipment}</form:option>
                                            </c:forEach>
                                        </form:select>
                                    </div>
                                </div><br></b>
                            </div>
                            <div class="col-lg-6">
                                <input type="submit" class="register-btn" value="Згенерувати план"/>
                                <div class="form-row p-t-10">
                                </div>
                            </div>
                        </div>
                        </form:form>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <aside class="sidebar">
                    <div class="widget widget-category widget-info"><h5 class="widget-title">Мої тренування</h5>
                        <ul>
                            <c:forEach var="workout" items="${workouts}">
                                <li><a href="<c:out value="/gym/workout/${workout.id}"/>">${workout.name}</a></li>
                            </c:forEach>
                        </ul>
                    </div>
                    <div class="widget widget-popular"><h5 class="widget-title">Рекомендовані посилання</h5>
                        <ul>
                            <li>
                                <div class="widget-popular-content"><h5 class="title">
                                    <a href="https://">Build Mass</a></h5></div>
                            </li>
                            <li>
                                <div class="widget-popular-content"><h5 class="title">
                                    <a href="https:">Force Factory</a></h5></div>
                            </li>
                            <li>
                                <div class="widget-popular-content"><h5 class="title">
                                    <a href="https://">Gym Encyclopedia</a></h5>
                                </div>
                            </li>
                            <li>
                                <div class="widget-popular-content"><h5 class="title">
                                    <a href="https://">SFD - official website of the store</a></h5></div>
                            </li>
                        </ul>
                    </div>
                </aside>
            </div>
        </div>
    </div>
</div>

</body>
<!-- Footer Section -->
<%@ include file="./footer.jsp" %>
</html>
