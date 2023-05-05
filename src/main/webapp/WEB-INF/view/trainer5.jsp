<%--
  Created by IntelliJ IDEA.
  User: Yaros
  Date: 05.05.2023
  Time: 9:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="./header.jsp" %>
<html>
<head>
    <title>Trainers</title>
</head>
<body>

<section class="page-header bg_img" data-background="/static/images/banner/05.jpg">
    <div class="container">
        <h3 class="title">
            <span class="shape-wrapper">
                <span class="shape"></span>Наші тренери<span class="shape"></span></span>
        </h3>
    </div>
</section>

<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">тренери</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="./home"/>">Дім</a></li>
                <li><a href="/trainers">Тренери</a></li>
                <li>Дмитро Прудченко</li>
            </ul>
        </div>
    </div>
</div>

<div class="container">
    <div class="trainer-view">
        <div class="row">
            <div class="col-lg-6 traning-info">
                <h1 class="trainer-name">
                    Дмитро Прудченко          </h1>
                <div class="trainer-description">
                    У спорті з 7 років. Знайшов себе у танцях, хоча займався тхеквондо, джиу-джинсу. Закінчив хореографічну гімназію з класичного танцю. Працював у цирковому шоу "Аліса в країні чудес".

                    Постійна робота над собою допомогла Дмитру усвідомити, що всі дороги ведуть у Smartass. А де забарився ти?)

                    Викладає Barre, Stretching, Recovery.
                </div>
            </div>
            <div class="col-lg-6 trainer-image top-trainer">
                <img class="img-responsive" src="/static/images/trainers/trainer2.jpg" alt="">        </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <a class="btn btn-block btn-warning main-training-btn" href="/gym/schedule" onclick="dataLayer.push({'event': 'smartass', 'eventCategory': 'userclicks', 'eventAction': 'button', 'eventLabel': 'applic'});">
                    Записатись                </a>
            </div>
        </div>
    </div>    </div>
</body>
<%@ include file="./footer.jsp" %>
</html>
