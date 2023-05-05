<%--
  Created by IntelliJ IDEA.
  User: Yaros
  Date: 04.05.2023
  Time: 15:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="./header.jsp" %>
<link rel="stylesheet" href="<c:url value="/static/css/trainers.css"/>">
<html>
<head>
    <title>Trainers</title>
</head>
<body class="">
<!-- Google Tag Manager (noscript) -->
<section class="page-header bg_img" data-background="/static/images/banner/05.jpg">
    <div class="container">
        <h3 class="title">
            <span class="shape-wrapper">
                <span class="shape"></span>НАШІ ТРЕНЕРИ<span class="shape"></span></span>
        </h3>
    </div>
</section>

<div class="breadcrumb-section">
    <div class="container">
        <div class="breadcrumb-wrapper">
            <div class="breadcrumb-title"><h6 class="title">Наші тренери</h6></div>
            <ul class="breadcrumb">
                <li><a href="<c:url value="/home"/>">Дім</a></li>
                <li><a href="<c:url value="/trainers"/>">Тренери</a></li>
            </ul>
        </div>
        </div>

<noscript>
    <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WRQ6NFX"
            height="0" width="0" style="display:none;visibility:hidden"></iframe>
</noscript>
<!-- End Google Tag Manager (noscript) -->

<style>


</style>

<<div class="padding-bottom padding-top bg_img" data-background="/static/images/banner/wall.jpg">
    <div class="wrap">

        <div class="container">

            <div class="row trainer-list">



                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 single-trainer">
                    <a href="/trainer1"
                       class="single-trainer-link ">
                        <div class="single-trainer-wrap">
                            <img class="img-responsive" src="/static/images/trainers/trainer1.jpg" alt="">                    <div class="single-trainer-title">
                            Роман Кушніренко                    </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 single-trainer">
                    <a href="/trainer2"
                       class="single-trainer-link ">
                        <div class="single-trainer-wrap">
                            <img class="img-responsive" src="/static/images/trainers/trainer5.jpg" alt="">                    <div class="single-trainer-title">
                            Анастасія Щербініна                    </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 single-trainer">
                    <a href="/trainer3"
                       class="single-trainer-link ">
                        <div class="single-trainer-wrap">
                            <img class="img-responsive" src="/static/images/trainers/trainer3.jpg" alt="">                    <div class="single-trainer-title">
                            Максим Довбуш                    </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 single-trainer">
                    <a href="/trainer4"
                       class="single-trainer-link ">
                        <div class="single-trainer-wrap">
                            <img class="img-responsive" src="/static/images/trainers/trainer4.jpg" alt="">                    <div class="single-trainer-title">
                            Катерина Глушко                    </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 single-trainer">
                    <a href="/trainer5"
                       class="single-trainer-link ">
                        <div class="single-trainer-wrap">
                            <img class="img-responsive" src="/static/images/trainers/trainer2.jpg" alt="">                    <div class="single-trainer-title">
                            Дмитро Прудченко                    </div>
                        </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 single-trainer">
                    <a href="/trainer6"
                       class="single-trainer-link ">
                        <div class="single-trainer-wrap">
                            <img class="img-responsive" src="/static/images/trainers/trainer6.jpg" alt="">                    <div class="single-trainer-title">
                            Андрій Матвієнко                   </div>
                        </div>
                    </a>
                </div>





            </div>    </div>
    </div>



</div>





<script src="/assets/combined/all-141e15baf0310638efea53c29f7024e1.js"></script>
<script>jQuery(function ($) {

    $('.js-change-branch-opener').click(function(e){
        $('.js-branch-dropdown').show();
        e.preventDefault();
    });

    $('.js-change-branch-close').click(function(e){
        $('.js-branch-dropdown').hide();
        e.preventDefault();
    });




    $('.js-gdpr-cookie-btn').click(function (e) {
        $.ajax({
            type: "POST",
            url: '/core/default/ajax-confirm-gdpr-cookie',
            success: function (data) {
                $('.js-gdpr-cookie-wrapper').hide();
                $('.footer').removeClass('gdpr-popup')
            }
        });
        e.preventDefault();
    });


});</script></body>
<%@ include file="./footer.jsp" %>
</html>
