
<%@include file="/common/taglib.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Product</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="<c:url value='/template/web/images/icons/favicon.png'/>"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/vendor/bootstrap/css/bootstrap.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/fonts/font-awesome-4.7.0/css/font-awesome.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/fonts/iconic/css/material-design-iconic-font.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/fonts/linearicons-v1.0.0/icon-font.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/vendor/animate/animate.css'/>">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/vendor/css-hamburgers/hamburgers.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/vendor/animsition/css/animsition.min.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/vendor/select2/select2.min.css'/>">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/vendor/daterangepicker/daterangepicker.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/vendor/slick/slick.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/vendor/MagnificPopup/magnific-popup.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/vendor/perfect-scrollbar/perfect-scrollbar.css'/>">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/template/web/css/util.css'/>">

	
<style >
	/*------------------------------------------------------------------
Project:  
Version:  
Last change:  
Assigned to:  Le Xuan Bach
Primary use:  Company
-------------------------------------------------------------------*/
/*------------------------------------------------------------------
[LAYOUT]

* body
  + Header / header
  + Page Content / .page-content .name-page
        + Section Layouts / section .name-section
        ...
  + Footer / footer

-------------------------------------------------------------------*/
/*------------------------------------------------------------------
[COLOR CODES]

# Text Color      :  
# Primary Color 01:  
# Primary Color 02:   
# Primary Color 03:  

------------------------------------------------------------------*/
/*------------------------------------------------------------------
[TYPOGRAPHY]

Body            : 16px/1.6 '', Arial, sans-serif;
Title           : 18px/1.6 '', Arial, sans-serif;
Paragrap        : 18px/1.6 '', Arial, sans-serif;
Input, textarea : 14px/1.6 '', Arial, sans-serif;
-------------------------------------------------------------------*/



/*//////////////////////////////////////////////////////////////////
[ FONT ]*/

@font-face {
  font-family: Poppins-Regular;
  src: url('../fonts/Poppins/Poppins-Regular.ttf'); 
}

@font-face {
  font-family: Poppins-Light;
  src: url('../fonts/Poppins/Poppins-Light.ttf'); 
}

@font-face {
  font-family: Poppins-ExtraLight;
  src: url('../fonts/Poppins/Poppins-ExtraLight.ttf'); 
}

@font-face {
  font-family: Poppins-Medium;
  src: url('../fonts/Poppins/Poppins-Medium.ttf'); 
}

@font-face {
  font-family: Poppins-Italic;
  src: url('../fonts/Poppins/Poppins-Italic.ttf'); 
}

@font-face {
  font-family: Poppins-Bold;
  src: url('../fonts/Poppins/Poppins-Bold.ttf'); 
}

@font-face {
  font-family: Poppins-SemiBold;
  src: url('../fonts/Poppins/Poppins-SemiBold.ttf'); 
}


/*---------------------------------------------*/
@font-face {
  font-family: PlayfairDisplay-Regular;
  src: url('../fonts/PlayfairDisplay/PlayfairDisplay-Regular.ttf'); 
}

@font-face {
  font-family: PlayfairDisplay-Bold;
  src: url('../fonts/PlayfairDisplay/PlayfairDisplay-Bold.ttf'); 
}

/*---------------------------------------------*/
@font-face {
  font-family: Montserrat-Regular;
  src: url('../fonts/Montserrat/Montserrat-Regular.ttf'); 
}

@font-face {
  font-family: Montserrat-Bold;
  src: url('../fonts/Montserrat/Montserrat-Bold.ttf'); 
}


/*//////////////////////////////////////////////////////////////////
[ RS PLUGIN ]*/

/*------------------------------------------------------------------
[ Bootstrap ]*/
.container {max-width: 1380px;}

@media (max-width: 1600px) {
  .container {max-width: 1200px;}
}

/*------------------------------------------------------------------
[ Slick2 ]*/
.slick-slide {outline: none !important;}





/*//////////////////////////////////////////////////////////////////
[ LOADDING ]*/
.animsition-loading-1 {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
  -moz-transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  -o-transform: translate(-50%, -50%);
  transform: translate(-50%, -50%);
}

.loader05 {
  width: 56px;
  height: 56px;
  border: 4px solid #717fe0;
  border-radius: 50%;
  position: relative;
  animation: loader-scale 1s ease-out infinite;
  top: 50%;
  margin: -28px auto 0 auto; 
}

@keyframes loader-scale {
  0% {
    transform: scale(0);
    opacity: 0; }
  50% {
    opacity: 1; }
  100% {
    transform: scale(1);
    opacity: 0; } 
}

/*//////////////////////////////////////////////////////////////////
[ BUTTON BACK TO TOP ]*/
.btn-back-to-top {
  display: none;
 /*  position: fixed; */
  width: 40px;
  height: 38px;
  bottom: 0px;
  right: 40px;
  background-color: #717fe0;
  opacity: 0.5;
  justify-content: center;
  align-items: center;
  z-index: 1000;
  cursor: pointer;
  transition: all 0.4s;
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
}

.symbol-btn-back-to-top {
  font-size: 25px;
  color: white;
  line-height: 1em;
}

.btn-back-to-top:hover {
  opacity: 1;
  background-color: #717fe0;
}

@media (max-width: 575px) {
  .btn-back-to-top {
    bottom: 0px;
    right: 15px;
  }
}


/*//////////////////////////////////////////////////////////////////
[ Header ]*/

/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[ Header Desktop ]*/

.container-menu-desktop {
  height: auto;
  width: 100%;
  position: relative;
  -webkit-transition: all 0.3s;
  -o-transition: all 0.3s;
  -moz-transition: all 0.3s;
  transition: all 0.3s;
}

.header-v2 .container-menu-desktop {
  height: 84px;
}

.header-v3 .container-menu-desktop {
  height: auto;
}

.header-v4 .container-menu-desktop {
  height: 124px;
}


/*==================================================================
[ Top bar ]*/
.top-bar {
  height: 40px;
  background-color: #222;
}

/*---------------------------------------------*/
.left-top-bar {
  font-family: Poppins-Regular;
  font-size: 12px;
  line-height: 1.8;
  color: #b2b2b2;
}


/*---------------------------------------------*/
.right-top-bar a {
  font-family: Poppins-Regular;
  font-size: 12px;
  line-height: 1.8;

  height: 100%;
  color: #b2b2b2;
  border-right: 1px solid rgba(255,255,255,0.3);
}

.right-top-bar a:first-child {
  border-left: 1px solid rgba(255,255,255,0.3);
}

.right-top-bar a:hover {
  color: #6c7ae0;
}


/*---------------------------------------------*/
.topbar-mobile li {
  padding: 8px 20px;
  border-top: 1px solid rgba(255,255,255,0.05);
  background-color: #222;
}



/*==================================================================
[ Menu ]*/

.wrap-menu-desktop {
 
  z-index: 1100;
  background-color: transparent;
  width: 100%;
  height: 84px;
  top: 40px;
  left: 0px; 

  -webkit-transition: height 0.3s, background-color 0.3s;
  -o-transition: height 0.3s, background-color 0.3s;
  -moz-transition: height 0.3s, background-color 0.3s;
  transition: height 0.3s, background-color 0.3s;
}

.header-v2 .wrap-menu-desktop {
  background-color: #fff;
  top: 0;
}

.header-v3 .wrap-menu-desktop {
  background-color: transparent;
  top: 0;
  border-bottom: 1px solid rgba(255,255,255,0.1);
}

.header-v4 .wrap-menu-desktop {
  background-color: #fff;
}


/*---------------------------------------------*/
.limiter-menu-desktop {
  height: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  align-items: center;
  background-color: transparent;
}



/*------------------------------------------------------------------
[ Logo ]*/
.logo {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  align-items: center;
  height: 65%;
  margin-right: 55px;
}

.logo img {
  max-width: 100%;
  max-height: 100%;
}



/*------------------------------------------------------------------
[ Menu ]*/

.menu-desktop {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  align-items: center;
  height: 100%;
}

.main-menu {
  list-style-type: none;
  margin: 0;

  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  align-items: center;
}

.main-menu > li {
  display: block;
  position: relative;
  padding: 20px 10px 20px 0px;
  margin: 0px 4px 0px 14px;
}

.main-menu > li > a {
  font-family: Poppins-Medium;
  font-size: 14px;
  color: #333;
  padding: 5px 0px;
  transition: all 0.4s;
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
}

.header-v3 .main-menu > li > a {
  color: #fff;
}

/*---------------------------------------------*/
.sub-menu {
  list-style-type: none;
  position: absolute;
  top:0;
  left:100%;
  min-width: 178px;
  max-width: 225px;
  background-color: #fff;
  transition: all 0.4s;
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  padding: 5px 0;

  box-shadow: 0 1px 5px 0px rgba(0,0,0,0.2);
  -moz-box-shadow: 0 1px 5px 0px rgba(0,0,0,0.2);
  -webkit-box-shadow: 0 1px 5px 0px rgba(0,0,0,0.2);
  -o-box-shadow: 0 1px 5px 0px rgba(0,0,0,0.2);
  -ms-box-shadow: 0 1px 5px 0px rgba(0,0,0,0.2);

  visibility: hidden;
  opacity: 0; 
}

.sub-menu li {
  position: relative;
  background-color: transparent;

  transition: all 0.4s;
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
}

.main-menu > li > .sub-menu {
  top:100%;
  left: 0;
}

.sub-menu a {
  font-family: Poppins-Regular;
  font-size: 14px;
  line-height: 1.5;
  color: #555;

  display: block;
  padding: 8px 20px; 
  width: 100%;

  transition: all 0.4s;
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
}

/*---------------------------------------------*/
.main-menu > li:hover > a {
  text-decoration: none;
  color: #6c7ae0;
}

.main-menu > li:hover > .sub-menu {
  visibility: visible;
  opacity: 1;
}

.sub-menu li:hover > .sub-menu {
  visibility: visible;
  opacity: 1;
} 

.sub-menu li:hover {
  background-color: transparent;
}

.sub-menu > li:hover > a {
  color: #6c7ae0;
  text-decoration: none;
}

@media (max-width: 1300px) {
  .main-menu > .respon-sub-menu .sub-menu {
    right: 100%;
    left: auto;
  }

  .main-menu > .respon-sub-menu > .sub-menu {
    right: 0px;
    left: auto;
  }
}

/*------------------------------------------------------------------
[ Icon header ]*/

.wrap-icon-header {
  flex-grow: 1;
}

.icon-header-item {
  position: relative;
  font-size: 26px;
  line-height: 1;
  cursor: pointer;
}


/*---------------------------------------------*/
.icon-header-noti::after {
  content: attr(data-notify);
  font-family: Poppins-Regular;
  font-size: 12px;
  color: #fff;
  line-height: 15px;
  text-align: center;

  display: block;
  position: absolute;
  top: -7px;
  right: 0;
  min-width: 15px;
  height: 15px;
  padding: 0 3px;
  background-color: #717fe0;
}

/*---------------------------------------------*/
.wrap-header-mobile .wrap-icon-header {
  flex-grow: unset;
}


/*------------------------------------------------------------------
[ Modal search ]*/
.modal-search-header {
  position: fixed;
  z-index: 2000;
  width: 100%;
  height: 100%;
  bottom: 101%;
  left: 0;
  background-color: rgba(255,255,255,0.9);
  padding: 50px 15px 100px 15px;
}

.show-modal-search {
  bottom: 0;
}

.container-search-header {
  width: auto;
  max-width: 100%;
  position: relative;
}

/*---------------------------------------------*/
.btn-hide-modal-search {
  position: absolute;
  padding: 5px;
  right: 0;
  top: -45px;
  opacity: 0.8;
}

.btn-hide-modal-search:hover {
  opacity: 1;
}

.wrap-search-header {
  width: 960px;
  max-width: 100%;
  height: 120px;
  border: 2px solid #e6e6e6;
  background: #fff;
}

/*---------------------------------------------*/
.wrap-search-header input {
  font-family: Poppins-ExtraLight;
  font-size: 50px;
  line-height: 1.2;
  color: #333;
  
  padding: 0px 30px 0px 0px;
  width: calc(100% - 70px);
  height: 100%;
  background-color: transparent;
}

.wrap-search-header button {
  font-size: 50px;
  color: #333;
  width: 70px;
  height: 100%;
}

.wrap-search-header button:hover {
  color: #6c7ae0;
}

/*---------------------------------------------*/
@media (max-width: 767px) {
  .wrap-search-header input,
  .wrap-search-header button {
    font-size: 30px;
  }

  .wrap-search-header {
    height: 90px;
  }
}

@media (max-width: 575px) {
  .wrap-search-header input,
  .wrap-search-header button {
    font-size: 20px;
  }

  .wrap-search-header button {
    width: 40px;
  }

  .wrap-search-header {
    height: 80px;
  }
}


/*==================================================================
[ Fixed menu desktop ]*/

.fix-menu-desktop .wrap-menu-desktop {
  height: 70px;
  background-color: rgba(255,255,255,1);
  box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
  -moz-box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
  -webkit-box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
  -o-box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
  -ms-box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
}

.header-v2 .fix-menu-desktop.container-menu-desktop {
  height: 70px;
}

.header-v3 .fix-menu-desktop .wrap-menu-desktop {
  background-color: #222;
  border-color: #222;
}

.header-v4 .fix-menu-desktop.container-menu-desktop {
  height: 110px;
}

/*---------------------------------------------*/
.main-menu > li.active-menu > a {
  color: #6c7ae0;
}



/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
[ Header Mobile ]*/
.wrap-header-mobile {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  align-items: center;
  height: 70px;
  background-color: #fff;
  padding: 15px;
  display: none;

  box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
  -moz-box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
  -webkit-box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
  -o-box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
  -ms-box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
}

/*------------------------------------------------------------------
[ Logo mobile ]*/
.logo-mobile {
  display: block;
  position: relative;
  height: 80%;
  padding-right: 25px;
  -webkit-flex-grow: 1;
  -moz-flex-grow: 1;
  flex-grow: 1;
}

.logo-mobile img {
  max-width: calc(100% - 20px);
  max-height: 100%;
  position:absolute;
  top: 0; 
  left: 0; 
  bottom: 0;
  margin: auto;
}



/*------------------------------------------------------------------
[ btn show menu ]*/
.hamburger {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  align-items: center;
  padding: 0;
  -webkit-transform: scale(0.7);
  -moz-transform: scale(0.7);
  -ms-transform: scale(0.7);
  -o-transform: scale(0.7);
  transform: scale(0.7);
}

.hamburger:hover {
  opacity: 1;
}

/*---------------------------------------------*/
@media (max-width: 991px){
  .wrap-header-mobile {
    display: -webkit-box;
    display: -webkit-flex;
    display: -moz-box;
    display: -ms-flexbox;
    display: flex;
  }
  .container-menu-desktop {display: none;}
}

/*==================================================================
[ Menu mobile ]*/
.menu-mobile {
  width: 100%;
  background-color: white;
  display: none;
}

.main-menu-m {
  padding-top: 10px;
  padding-bottom: 10px;
  background-color: #717fe0;
}

.main-menu-m > li > a {
  font-family: Poppins-Medium;
  font-size: 14px;
  color: white;
  line-height: 2.8;
  padding: 8px 20px 8px 20px;
}

.main-menu-m > li {
  color: white;
  position: relative;
}

.arrow-main-menu-m {
  font-size: 14px;
  color: #fff;

  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  right: 10px;
  top: 2px;
  padding: 10px;
  cursor: pointer;
}

.arrow-main-menu-m i {
  transform-origin: center;
  -webkit-transition: all 0.3s;
  -o-transition: all 0.3s;
  -moz-transition: all 0.3s;
  transition: all 0.3s;
}

.turn-arrow-main-menu-m i {
  -webkit-transform: rotate(90deg);
  -moz-transform: rotate(90deg);
  -ms-transform: rotate(90deg);
  -o-transform: rotate(90deg);
  transform: rotate(90deg);
}

/*---------------------------------------------*/
.sub-menu-m {
  background-color: #fff;
  padding: 10px 15px 10px 32px;
  display: none;
}

.sub-menu-m a {
  font-family: Poppins-Regular;
  font-size: 14px;
  color: #666;
  line-height: 2.5;
  padding: 5px 0 5px 0;
}

.sub-menu-m a:hover {
  text-decoration: none;
  color: #555555;
}

@media (min-width: 992px){
  .menu-mobile {
    display: none;
  }
}


/*//////////////////////////////////////////////////////////////////
[ Sidebar ]*/
.wrap-sidebar {
  /* position: fixed; */
  z-index: 1100;
  width: 100%;
  height: 100vh;
  top: 0;
  right: 0;
  background-color: rgba(0,0,0,0.0);
  visibility: hidden;
  
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;  
  transition: all 0.4s;
}

.sidebar {
  position: fixed;
  z-index: 1100;
  width: 390px;
  max-width: calc(100% - 30px);
  height: 100vh;
  top: 0;
  right: -400px;
  background-color: #fff;
  
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.34;  
  transition: all 0.4s;

  box-shadow: 0 3px 6px 0px rgba(0, 0, 0, 0.18);
  -moz-box-shadow: 0 3px 6px 0px rgba(0, 0, 0, 0.18);
  -webkit-box-shadow: 0 3px 6px 0px rgba(0, 0, 0, 0.18);
  -o-box-shadow: 0 3px 6px 0px rgba(0, 0, 0, 0.18);
  -ms-box-shadow: 0 3px 6px 0px rgba(0, 0, 0, 0.18);
}

.show-sidebar {
  visibility: visible;
  background-color: rgba(0,0,0,0.6);
}

.show-sidebar .sidebar {
  right: 0;
}

@media (max-width: 991px) {
  .wrap-sidebar {
    display: none;
  }
}

/*---------------------------------------------*/
.sidebar-content {
  flex-grow: 1;
  overflow: auto;
  align-content: space-between;
}

/*---------------------------------------------*/
.wrap-item-gallery {
  width: calc((100% - 20px) / 3);
}

.item-gallery {
  display: block;
  width: 100%;
  padding-top: 100%;
  position: relative;
}

.item-gallery::after {
  content: "";
  display: block;
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background-color: rgba(103,117,214,0.8);
  opacity: 0;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.34;  
  transition: all 0.4s;
}

.item-gallery:hover:after {
  opacity: 1;
}


/*//////////////////////////////////////////////////////////////////
[ Header cart ]*/
.wrap-header-cart {
  position: fixed;
  z-index: 1100;
  width: 100%;
  height: 100vh;
  top: 0;
  right: 0;
  background-color: rgba(0,0,0,0.0);
  visibility: hidden;
  
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;  
  transition: all 0.4s;
}

.header-cart {
  position: fixed;
  z-index: 1100;
  width: 390px;
  max-width: calc(100% - 30px);
  height: 100vh;
  top: 0;
  right: -400px;
  background-color: #fff;
  
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.34;  
  transition: all 0.4s;

  box-shadow: 0 3px 6px 0px rgba(0, 0, 0, 0.18);
  -moz-box-shadow: 0 3px 6px 0px rgba(0, 0, 0, 0.18);
  -webkit-box-shadow: 0 3px 6px 0px rgba(0, 0, 0, 0.18);
  -o-box-shadow: 0 3px 6px 0px rgba(0, 0, 0, 0.18);
  -ms-box-shadow: 0 3px 6px 0px rgba(0, 0, 0, 0.18);
}

.header-cart::after {
  content: "";
  display: block;
  width: 100%;
  height: 9%;
  min-height: 30px;
}

.show-header-cart {
  visibility: visible;
  background-color: rgba(0,0,0,0.6);
}

.show-header-cart .header-cart {
  right: 0;
}

/*---------------------------------------------*/
.header-cart-title {
  width: 260px;
  max-width: 100%;
  height: 16.5%;
  min-height: 85px;
}

.header-cart-content {
  flex-grow: 1;
  overflow: auto;
  align-content: space-between;
}

.header-cart-wrapitem {
  flex-grow: 1;
}

/*---------------------------------------------*/
.header-cart-item-img {
  width: 60px;
  position: relative;
  margin-right: 20px;
  cursor: pointer;
}

.header-cart-item-img img {
  width: 100%;
}

.header-cart-item-img::after {
  content: '\e870';
  font-family: Linearicons-Free;
  font-size: 16px;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background-color: rgba(0,0,0,0.5);
  color: #fff;
  transition: all 0.3s;
  -webkit-transition: all 0.3s;
  -o-transition: all 0.3s;
  -moz-transition: all 0.3s;
  opacity: 0;
}

.header-cart-item-img:hover:after {
  opacity: 1;
}

/*---------------------------------------------*/
.header-cart-item-txt {
  width: calc(100% - 80px);
}

.header-cart-item-name {
  display: block;
  font-family: Poppins-Regular;
  font-size: 14px;
  color: #555;
  line-height: 1.3;
}

.header-cart-item-info {
  display: block;
  font-family: Poppins-Regular;
  font-size: 14px;
  color: #888;
  line-height: 1.5;
}

.header-cart-total {
  font-family: Poppins-Regular;
  font-size: 18px;
  color: #222;
  line-height: 1.3;
}

/*---------------------------------------------*/
@media (max-width: 575px) {
  .header-cart {
    padding: 30px;
  }

  .header-cart-title {
    padding-bottom: 35px;
  }
}


/*//////////////////////////////////////////////////////////////////
[ Restyle Select2 ]*/

.rs1-select2 .select2-container {
  display: block;
  max-width: 100% !important;
  width: auto !important;
}

.rs1-select2 .select2-container .select2-selection--single {
  height: 45px;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  align-items: center;
  border: none;
  outline: none;
  background-color: transparent;
  border-radius: 0px;
  position: relative;
}

/*------------------------------------------------------------------
[ in select ]*/
.rs1-select2 .select2-container .select2-selection--single .select2-selection__rendered {
  font-family: Poppins-Regular;
  font-size: 13px;
  color: #555;
  line-height: 1.2;
  padding-left: 20px;
  background-color: transparent;
}

.rs1-select2 .select2-container--default .select2-selection--single .select2-selection__arrow {
  width: 38px;
  height: 20px;
  top: calc(50% - 10px);
  right: 5px;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  align-items: center;
  justify-content: center;
  border-left: 1px solid #e6e6e6;
}

.rs1-select2 .select2-container--default .select2-selection--single .select2-selection__arrow b {
  display: none;
}

.rs1-select2 .select2-container--default .select2-selection--single .select2-selection__arrow::after {
  content: "\f0dc";
  font-family: FontAwesome;
  font-size: 13px;
  color: #808080;
}

.rs1-select2 .select2-container--default .select2-selection--single .select2-selection__arrow:hover:after {
  color: #6c7ae0;
}


/*------------------------------------------------------------------
[ Dropdown option ]*/
.rs1-select2 .select2-container--open .select2-dropdown {
  z-index: 1251;
  width: 100%;
  border: 1px solid #fff;
  border-radius: 0px;
  overflow: hidden;
  background-color: white;
  left: 0px;

  box-shadow: 0 3px 10px 0px rgba(0, 0, 0, 0.2);
  -moz-box-shadow: 0 3px 10px 0px rgba(0, 0, 0, 0.2);
  -webkit-box-shadow: 0 3px 10px 0px rgba(0, 0, 0, 0.2);
  -o-box-shadow: 0 3px 10px 0px rgba(0, 0, 0, 0.2);
  -ms-box-shadow: 0 3px 10px 0px rgba(0, 0, 0, 0.2);
}

.rs1-select2 .select2-dropdown--above {top: -2px;}
.rs1-select2 .select2-dropdown--below {top: 2px;}

.rs1-select2 .select2-container .select2-results__option[aria-selected] {
  padding-top: 10px;
  padding-bottom: 10px;
  padding-left: 20px;
}

.rs1-select2 .select2-container .select2-results__option[aria-selected="true"] {
  background: #6c7ae0;
  color: white;
}

.rs1-select2 .select2-container .select2-results__option--highlighted[aria-selected] {
  background: #6c7ae0;
  color: white;
}

.rs1-select2 .select2-results__options {
  font-family: Poppins-Regular;
  font-size: 13px;
  color: #555;
  line-height: 1.2;
}

.rs1-select2 .select2-search--dropdown .select2-search__field {
  border: 1px solid #aaa;
  outline: none;
  font-family: Poppins-Regular;
  font-size: 13px;
  color: #555;
  line-height: 1.2;
}

/*------------------------------------------------------------------
[ rs2 ]*/
.rs2-select2 .select2-container .select2-selection--single {
  height: 40px;
}

.rs2-select2 .select2-container .select2-selection--single .select2-selection__rendered {
  padding-left: 15px;
}

.rs2-select2 .select2-container--default .select2-selection--single .select2-selection__arrow {
  width: 35px;
  right: 0px;
  border-left: none;
}

.rs2-select2 .select2-container--default .select2-selection--single .select2-selection__arrow::after {
  content: "\f0d7";
}



/*//////////////////////////////////////////////////////////////////
[ Slick1 ]*/
.wrap-slick1 {
  position: relative;
}

.item-slick1 {
  height: calc(100vh - 40px);
  background-size: cover;
  background-repeat: no-repeat;
  background-position: center center;
}

.rs1-slick1 .item-slick1 {
  height: calc(100vh - 84px);
}

.rs2-slick1 .item-slick1 {
  height: 100vh;
}

@media (max-width: 991px) {
  .item-slick1 {
    height: calc(100vh - 70px) !important;
  }
}

.arrow-slick1 {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  width: auto;
  height: auto;
  font-size: 80px;
  color: rgba(0,0,0,0.3);
  position: absolute;
  opacity: 0;
  
  top: 50%;
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);

  z-index: 200;
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.wrap-slick1:hover .arrow-slick1 {
  opacity: 1;
}

.arrow-slick1:hover {
  color: #7280e0;
}

.next-slick1 {
  right: 50px;
  left: auto;
}

.prev-slick1 {
  left: 50px;
  right: auto;
}

@media (max-width: 991px) {
  .next-slick1 {
    right: 15px;
  }

  .prev-slick1 {
    left: 15px;
  }
}

/*---------------------------------------------*/
.rs2-slick1 .arrow-slick1 {
  color: rgba(255,255,255,0.3);
}

.rs2-slick1 .arrow-slick1:hover {
  color: #7280e0;
}

.wrap-slick1-dots {
  position: absolute;
  width: 100%;
  left: 0;
  bottom: 60px;
}

.slick1-dots {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
}

.slick1-dots li {
  max-width: 190px;
  position: relative;
  cursor: pointer;
  margin-right: 1px;
}

.slick1-dots li img {
  width: 100%;
}

.caption-dots-slick1 {
  font-family: Poppins-ExtraLight;
  font-size: 16px;
  line-height: 1.3;
  color: #fff;
  text-align: center;

  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;

  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background-color: rgba(0,0,0,0.5);
  padding: 5px;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
  opacity: 0;
}

.slick1-dots li:hover .caption-dots-slick1 {
  opacity: 1;
}

.slick1-dots li.slick-active .caption-dots-slick1 {
  opacity: 1;
}

@media (max-width: 575px) {
  .caption-dots-slick1 {
    font-size: 13px;
  }

  .wrap-slick1-dots {
    bottom: 25px;
  }
}


/*//////////////////////////////////////////////////////////////////
[ Slick2 ]*/

.wrap-slick2 {
  position: relative;
  margin-right: -15px;
  margin-left: -15px;
}

/* ------------------------------------ */
.arrow-slick2 {
  position: absolute;
  z-index: 100;
  top: calc((100% - 60px) / 2);
  -webkit-transform: translateY(-50%);
  -moz-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  -o-transform: translateY(-50%);
  transform: translateY(-50%);
  font-size: 39px;
  color: #ccc;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.arrow-slick2:hover {
  color: #666;
}

.next-slick2 {
  right: -40px;
}

.prev-slick2 {
  left: -40px;
}

@media (max-width: 1300px) {
  .next-slick2 {
    right: 0px;
  }

  .prev-slick2 {
    left: 0px;
  }
}


/*//////////////////////////////////////////////////////////////////
[ Slick3 ]*/
.wrap-slick3 {
  position: relative;
}

/*---------------------------------------------*/
.wrap-slick3-arrows {
  position: absolute;
  z-index: 100;
  width: 83.333333%;
  right: 0;
  top: calc(50% - 20px);
}

.arrow-slick3 {
  font-size: 25px;
  color: #fff;
  
  position: absolute;
  top: 0;
  width: 40px;
  height: 40px;
  background-color: rgba(0,0,0,0.5);

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.arrow-slick3:hover {
  background-color: rgba(0,0,0,0.9);
}

.prev-slick3 {left: 0px;}
.next-slick3 {right: 0px;}

/*---------------------------------------------*/
.wrap-slick3-dots {
  width: 11.111111%;
}

.slick3 {
  width: 83.333333%;
}

.slick3-dots li {
  display: block;
  position: relative;
  width: 100%;
  margin-bottom: 27px;
}

.slick3-dots li img {
  width: 100%;
}

.slick3-dot-overlay {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  cursor: pointer;
  border: 2px solid transparent;
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.slick3-dot-overlay:hover {
  border-color: #ccc;
}

.slick3-dots .slick-active .slick3-dot-overlay {
  border-color: #ccc;
}



/*//////////////////////////////////////////////////////////////////
[ RS Magnific-Popup ]*/
.mfp-bg {
  z-index: 10000;
  background-color: #000;
  opacity: 0.9;
}

.mfp-wrap {
  z-index: 10000;
}

.mfp-arrow:after,
.mfp-arrow:before {
  display: none;
}

.mfp-arrow {
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

button.mfp-arrow-right {
  background-image: url(../images/icons/icon-next.png);
  background-position: center center;
  background-repeat: no-repeat;
}

button.mfp-arrow-left {
  background-image: url(../images/icons/icon-prev.png);
  background-position: center center;
  background-repeat: no-repeat;
}

button.mfp-close {
  width: 75px !important;
  height: 58px !important;
  line-height: 44px;
  position: fixed;
  right: 0;
  top: 0;
  color: transparent !important;
  background-image: url(../images/icons/icon-close.png);
  background-position: center center;
  background-repeat: no-repeat;
  cursor: pointer !important;
  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

/* overlay at start */
.mfp-fade.mfp-bg {
  opacity: 0;

  -webkit-transition: all 0.3s ease-out;
  -moz-transition: all 0.3s ease-out;
  transition: all 0.3s ease-out;
}
/* overlay animate in */
.mfp-fade.mfp-bg.mfp-ready {
  opacity: 0.9;
}
/* overlay animate out */
.mfp-fade.mfp-bg.mfp-removing {
  opacity: 0;
}

/* content at start */
.mfp-fade.mfp-wrap .mfp-content {
  opacity: 0;

  -webkit-transition: all 0.3s ease-out;
  -moz-transition: all 0.3s ease-out;
  transition: all 0.3s ease-out;
}
/* content animate it */
.mfp-fade.mfp-wrap.mfp-ready .mfp-content {
  opacity: 1;
}
/* content animate out */
.mfp-fade.mfp-wrap.mfp-removing .mfp-content {
  opacity: 0;
}


/*//////////////////////////////////////////////////////////////////
[ Tab01 ]*/
.tab01 .nav-tabs {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  border: none;
}

.tab01 .nav-tabs .nav-item {
  margin: 0px 15px;
}

.tab01 .nav-link {
  font-family: Poppins-Regular;
  font-size: 15px;
  color: #888;
  line-height: 1.2;

  padding: 0;
  border-radius: 0px;
  border: none;
  border-bottom: 1px solid transparent;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.tab01 .nav-link.active {
  color: #333;
  border-color: #797979;
}

.tab01 .nav-link:hover {
  color: #333;
  border-color: #797979;
}



/*//////////////////////////////////////////////////////////////////
[ RS sweet alert ]*/
.swal-overlay {overflow-y: auto;}

.swal-button:focus {
    outline: none;
    box-shadow: none;
}

.swal-button {
  background-color: #717fe0;
  font-family: Poppins-Regular;
  font-size: 16px;
  color: white;
  text-transform: uppercase;
  font-weight: unset;
  border-radius: 4px;
  -webkit-transition: all 0.3s;
  -o-transition: all 0.3s;
  -moz-transition: all 0.3s;
  transition: all 0.3s;
}

.swal-button:hover {
  background-color: #333;
}

.swal-button:active {
  background-color: #333;
}

.swal-title {
  font-family: Poppins-Bold;
  color: #333333;
  font-size: 18px;
  line-height: 1.5;
  padding: 0 15px;
}

.swal-text {
  font-family: Poppins-Regular;
  color: #555555;
  font-size: 16px;
  line-height: 1.666667;
  text-align: center;
}

.swal-footer {
    margin-top: 0;
}


/*//////////////////////////////////////////////////////////////////
[ Filter ]*/
.show-search .icon-search,
.show-filter .icon-filter {display: none;}

.show-search .icon-close-search,
.show-filter .icon-close-filter {display: unset;}

.show-search,
.show-filter {
  background-color: #f2f2f2;
  border-color: #e7e7e7;
  position: relative;
}

.show-search::after,
.show-filter::after {
  content: "";
  position: absolute;
  display: block;

  width: 14px;
  height: 14px;
  background-color: #f2f2f2;
  border-left: 1px solid #e7e7e7;
  border-bottom: 1px solid #e7e7e7;
  
  transform-origin: center center;
  -webkit-transform: rotate(-45deg);
  -moz-transform: rotate(-45deg);
  -ms-transform: rotate(-45deg);
  -o-transform: rotate(-45deg);
  transform: rotate(-45deg);

  left: calc(50% - 7px);
  bottom: -8px;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.show-search:hover:after,
.show-filter:hover:after {
  background-color: #717fe0;
  border-color: #717fe0;
}

/*---------------------------------------------*/
.filter-col1 {width: 27%;}
.filter-col2 {width: 27%;}
.filter-col3 {width: 26%;}
.filter-col4 {width: 20%;}

/*---------------------------------------------*/
.filter-link {
  color: #aaa;
  border-bottom: 1px solid transparent;
}

.filter-link:hover {
  color: #6c7ae0;
  border-bottom: 1px solid #6c7ae0;
}

.filter-link-active {
  color: #6c7ae0;
  border-bottom: 1px solid #6c7ae0;
}

@media (max-width: 767px) {
  .filter-col1,
  .filter-col2,
  .filter-col3,
  .filter-col4 {width: 50%;}
}

@media (max-width: 575px) {
  .filter-col1,
  .filter-col2,
  .filter-col3,
  .filter-col4 {width: 100%;}
}



/*//////////////////////////////////////////////////////////////////
[ Num Product ]*/
.wrap-num-product {
  width: 140px;
  height: 45px;
  border: 1px solid #e6e6e6;
  border-radius: 3px;
  overflow: hidden;
}

.btn-num-product-up,
.btn-num-product-down {
  width: 45px;
  height: 100%;
  cursor: pointer;
}

.num-product {
  width: calc(100% - 90px);
  height: 100%;
  border-left: 1px solid #e6e6e6;
  border-right: 1px solid #e6e6e6;
  background-color: #f7f7f7;
}

input.num-product {
  -moz-appearance: textfield;
  appearance: none;
  -webkit-appearance: none;
}

input.num-product::-webkit-outer-spin-button,
input.num-product::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0; 
}

/*//////////////////////////////////////////////////////////////////
[ Tolltip100 ]*/
.tooltip100 {
  position: relative;
}

.tooltip100::after {
  content: attr(data-tooltip);
  font-family: Poppins-Regular;
  font-size: 12px;
  color: #888;
  line-height: 18px;
  white-space: nowrap;

  display: block;
  position: absolute;
  background: #fff;
  border: 1px solid #ccc;
  height: 20px;
  padding: 0px 8px;
  top: -35px;
  left: 50%;
  -webkit-transform: translateX(-50%);
  -moz-transform: translateX(-50%);
  -ms-transform: translateX(-50%);
  -o-transform: translateX(-50%);
  transform: translateX(-50%);

  box-shadow: 0 3px 6px 0px rgba(0,0,0,0.18);
  -moz-box-shadow: 0 3px 6px 0px rgba(0,0,0,0.18);
  -webkit-box-shadow: 0 3px 6px 0px rgba(0,0,0,0.18);
  -o-box-shadow: 0 3px 6px 0px rgba(0,0,0,0.18);
  -ms-box-shadow: 0 3px 6px 0px rgba(0,0,0,0.18);

  -webkit-transition: all 0.2s;
  -o-transition: all 0.2s;
  -moz-transition: all 0.2s;
  transition: all 0.2s;
  
  visibility: hidden;
  opacity: 0;
}

.tooltip100:hover:after {
  visibility: visible;
  opacity: 1;
}


/*//////////////////////////////////////////////////////////////////
[ Modal1 ]*/
.wrap-modal1 {
  position: fixed;
  width: 100%;
  height: 100vh;
  top: 0;
  left: 0;
  z-index: 9000;
  overflow: auto;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;

  visibility: hidden;
  opacity: 0;
}

.overlay-modal1 {
  position: fixed;
  z-index: -1;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background: #000;
  opacity: 0.8;
}

.show-modal1 {
  visibility: visible;
  opacity: 1;
}

/*//////////////////////////////////////////////////////////////////
[ Table Shopping Cart ]*/

.wrap-table-shopping-cart {
  overflow: auto;
  border-left: 1px solid #e6e6e6;
  border-right: 1px solid #e6e6e6;
}

.table-shopping-cart {
  border-collapse: collapse;
  width: 100%;
  min-width: 680px;
}

.table-shopping-cart tr {
  border-top: 1px solid #e6e6e6;
  border-bottom: 1px solid #e6e6e6;
}

.table-shopping-cart .column-1 {
  width: 133px;
  padding-left: 50px;
}

.table-shopping-cart .column-2 {
  width: 220px;
  font-size: 15px;
}

.table-shopping-cart .column-3 {
  width: 120px;
  font-size: 16px;
}

.table-shopping-cart .column-4 {
  width: 145px;
  text-align: right;
}

.table-shopping-cart .column-5 {
  width: 172px;
  padding-right: 50px;
  text-align: right;
  font-size: 16px;
}

.table-shopping-cart .table_row {
  height: 185px;
}

.table-shopping-cart .table_row td {
  padding-bottom: 20px;
}

.table-shopping-cart .table_row td.column-1 {
  padding-bottom: 30px;
}

.table-shopping-cart .table_head th {
  font-family: Poppins-Bold;
  font-size: 13px;
  color: #555;
  text-transform: uppercase;
  line-height: 1.6;
  padding-top: 15px;
  padding-bottom: 15px;
}

.table-shopping-cart td {
  font-family: Poppins-Regular;
  color: #555;
  line-height: 1.6;
}



/*//////////////////////////////////////////////////////////////////
[ Block1 ]*/
.block1 {
  position: relative;
  border: 1px solid #e6e6e6;
}

.block1-txt {
  background-color: rgba(103,117,214,0.0);
}

/*---------------------------------------------*/
.block1-name {color: #333;}
.block1-info {color: #555;}

/*---------------------------------------------*/
.block1-txt-child2 {
  border-bottom: 2px solid #fff;
  overflow: hidden;
  -webkit-transform: scaleX(0);
  -moz-transform: scaleX(0);
  -ms-transform: scaleX(0);
  -o-transform: scaleX(0);
  transform: scaleX(0);
}

.block1-link {
  -webkit-transform: translateY(250%);
  -moz-transform: translateY(250%);
  -ms-transform: translateY(250%);
  -o-transform: translateY(250%);
  transform: translateY(250%);
}

/*---------------------------------------------*/
.block1-txt:hover {
  background-color: rgba(103,117,214,0.8);
}

.block1-txt:hover .block1-txt-child2 {
  -webkit-transform: scaleX(1);
  -moz-transform: scaleX(1);
  -ms-transform: scaleX(1);
  -o-transform: scaleX(1);
  transform: scaleX(1);
}

.block1-txt:hover .block1-link {
  -webkit-transform: translateY(0%);
  -moz-transform: translateY(0%);
  -ms-transform: translateY(0%);
  -o-transform: translateY(0%);
  transform: translateY(0%);
}

.block1-txt:hover .block1-name,
.block1-txt:hover .block1-info {
  color: #fff;
}

/*//////////////////////////////////////////////////////////////////
[ Block2 ]*/
.block2-pic {
  position: relative;
}

.block2-btn {
  position: absolute;
  bottom: -50px;
  left: 50%;
  -webkit-transform: translateX(-50%);
  -moz-transform: translateX(-50%);
  -ms-transform: translateX(-50%);
  -o-transform: translateX(-50%);
  transform: translateX(-50%);
}

.block2-pic:hover .block2-btn {
  bottom: 20px;
}

/*---------------------------------------------*/
.block2-txt-child1 {
  width: calc(100% - 30px);
}

.block2-txt-child2 {
  width: 30px;
}

.btn-addwish-b2 .icon-heart2 {
  opacity: 0;
}

.btn-addwish-b2:hover .icon-heart2 {
  opacity: 1;
}

.btn-addwish-b2:hover .icon-heart1 {
  opacity: 0;
}

.js-addedwish-b2 .icon-heart2 {
  opacity: 1;
}

.js-addedwish-b2 .icon-heart1 {
  opacity: 0;
}

/*---------------------------------------------*/
.label-new {
  position: relative;
}

.label-new::after {
  content: attr(data-label);
  font-family: Montserrat-Regular;
  font-size: 12px;
  color: #fff;
  line-height: 1.2;

  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  min-width: 50px;
  height: 22px;
  border-radius: 11px;
  padding: 0 6px;
  background-color: #66a8a6;
  top: 42px;
  left: 12px;
}



/*==================================================================
    TEXT TEXT TEXT TEXT TEXT TEXT TEXT TEXT TEXT TEXT TEXT TEXT TEXT
==================================================================*/
.cl0 {color: #fff;}
.cl1 {color: #717fe0;}
.cl2 {color: #333;}
.cl3 {color: #666;}
.cl4 {color: #999;}
.cl5 {color: #222;}
.cl6 {color: #888;}
.cl7 {color: #b2b2b2;}
.cl8 {color: #555;}
.cl9 {color: #aaa;}
.cl10 {color: #1d1d1d;}
.cl11 {color: #f9ba48;}
.cl12 {color: #ccc;}

/*//////////////////////////////////////////////////////////////////
[ S-Text 0 - 15 ]*/
.stext-101 {
  font-family: Poppins-Medium;
  font-size: 15px;
  line-height: 1.466667;
  text-transform: uppercase;
}

.stext-102 {
  font-family: Poppins-Regular;
  font-size: 14px;
  line-height: 1.7;
}

.stext-103 {
  font-family: Poppins-Regular;
  font-size: 15px;
  line-height: 1.466667;
}

.stext-104 {
  font-family: Poppins-Regular;
  font-size: 14px;
  line-height: 1.466667;
}

.stext-105 {
  font-family: Poppins-Regular;
  font-size: 14px;
  line-height: 1.466667;
  letter-spacing: 1px;
}

.stext-106 {
  font-family: Poppins-Regular;
  font-size: 15px;
  line-height: 1.2;
}

.stext-107 {
  font-family: Poppins-Regular;
  font-size: 13px;
  line-height: 1.923;
}

.stext-108 {
  font-family: Poppins-Light;
  font-size: 14px;
  line-height: 1.7143;
}

.stext-109 {
  font-family: Poppins-Regular;
  font-size: 12px;
  line-height: 1.833333;
}

.stext-110 {
  font-family: Poppins-Medium;
  font-size: 15px;
  line-height: 1.466667;
}

.stext-111 {
  font-family: Poppins-Regular;
  font-size: 13px;
  line-height: 1.6923;
}

.stext-112 {
  font-family: Poppins-Regular;
  font-size: 13px;
  line-height: 1.6923;
  text-transform: uppercase;
}

.stext-113 {
  font-family: Poppins-Light;
  font-size: 14px;
  line-height: 1.7857;
}

.stext-114 {
  font-family: Poppins-Italic;
  font-size: 15px;
  line-height: 1.666667;
}

.stext-115 {
  font-family: Poppins-Regular;
  font-size: 15px;
  line-height: 1.666667;
}

.stext-116 {
  font-family: Poppins-Regular;
  font-size: 15px;
  line-height: 1.266667;
}

.stext-117 {
  font-family: Poppins-Light;
  font-size: 15px;
  line-height: 1.666667;
}


/*---------------------------------------------*/
.stext-301 {
  font-family: Montserrat-Bold;
  font-size: 15px;
  line-height: 1.6;
  text-transform: uppercase;
}


/*//////////////////////////////////////////////////////////////////
[ M-Text 16 - 25 ]*/
.mtext-101 {
  font-family: Poppins-Medium;
  font-size: 18px;
  line-height: 1.333333;
}

.mtext-102 {
  font-family: Poppins-SemiBold;
  font-size: 16px;
  line-height: 1.6;
}

.mtext-103 {
  font-family: Poppins-Bold;
  font-size: 18px;
  line-height: 1.333333;
  text-transform: uppercase;
}

.mtext-104 {
  font-family: Poppins-Medium;
  font-size: 16px;
  line-height: 1.6;
}

.mtext-105 {
  font-family: Poppins-Regular;
  font-size: 24px;
  line-height: 1.5;
}

.mtext-106 {
  font-family: Poppins-SemiBold;
  font-size: 18px;
  line-height: 1.388888;
}

.mtext-107 {
  font-family: Poppins-Regular;
  font-size: 16px;
  line-height: 1.625;
}

.mtext-108 {
  font-family: Poppins-Regular;
  font-size: 20px;
  line-height: 1.3;
}

.mtext-109 {
  font-family: Poppins-Bold;
  font-size: 20px;
  line-height: 1.3;
  text-transform: uppercase;
}

.mtext-110 {
  font-family: Poppins-Regular;
  font-size: 18px;
  line-height: 1.222222;
}

.mtext-111 {
  font-family: Poppins-Bold;
  font-size: 25px;
  line-height: 1.2;
}

.mtext-112 {
  font-family: Poppins-Bold;
  font-size: 22px;
  line-height: 1.333333;
}

.mtext-113 {
  font-family: Poppins-Bold;
  font-size: 22px;
  line-height: 1.333333;
  text-transform: uppercase;
}


/*//////////////////////////////////////////////////////////////////
[ L-Text >= 26 ]*/
.ltext-101 {
  font-family: Poppins-Regular;
  font-size: 28px;
  line-height: 1.2857;
}

.ltext-102 {
  font-family: Poppins-Bold;
  font-size: 28px;
  line-height: 1.1;
}

.ltext-103 {
  font-family: Poppins-Bold;
  font-size: 36px;
  line-height: 1.1;
  text-transform: uppercase;
}

.ltext-104 {
  font-family: Poppins-Bold;
  font-size: 60px;
  line-height: 1.1;
  text-transform: uppercase;
}

.ltext-105 {
  font-family: Poppins-Bold;
  font-size: 50px;
  line-height: 1.1;
}

.ltext-106 {
  font-family: Poppins-Bold;
  font-size: 36px;
  line-height: 1.2;
}

.ltext-107 {
  font-family: Poppins-Bold;
  font-size: 30px;
  line-height: 1.1;
}

.ltext-108 {
  font-family: Poppins-Bold;
  font-size: 26px;
  line-height: 1.3846;
}

.ltext-109 {
  font-family: Poppins-Bold;
  font-size: 36px;
  line-height: 1.2;
}


/*---------------------------------------------*/
.ltext-201 {
  font-family: PlayfairDisplay-Bold;
  font-size: 60px;
  line-height: 1.1;
  text-transform: uppercase;
}

.ltext-202 {
  font-family: PlayfairDisplay-Regular;
  font-size: 28px;
  line-height: 1.2857;
}




/*==================================================================
    SIZE SIZE SIZE SIZE SIZE SIZE SIZE SIZE SIZE SIZE SIZE SIZE SIZE 
==================================================================*/


/*//////////////////////////////////////////////////////////////////
[ Size ]*/
.size-101 {
  min-width: 161px;
  height: 46px;
}

.size-102 {
  min-width: 139px;
  height: 40px;
}

.size-103 {
  min-width: 179px;
  height: 46px;
}

.size-104 {
  min-width: 94px;
  height: 40px;
}

.size-105 {
  min-width: 111px;
  height: 40px;
}

.size-106 {
  width: 88px;
  height: 100%;
}

.size-107 {
  min-width: 145px;
  height: 40px;
}

.size-108 {
  width: 40px;
  height: 40px;
}

.size-109 {
  width: 60px;
  height: 60px;
}

.size-110 {
  width: 100%;
  min-height: 100px;
}

.size-111 {
  width: 100%;
  height: 40px;
}

.size-112 {
  min-width: 134px;
  height: 43px;
}

.size-113 {
  width: 38px;
  height: 60px;
}

.size-114 {
  width: calc(100% - 38px);
  height: 60px;
}

.size-115 {
  min-width: 185px;
  height: 45px;
}

.size-116 {
  width: 100%;
  height: 50px;
}

.size-117 {
  width: 220px;
  height: 45px;
}

.size-118 {
  min-width: 163px;
  height: 45px;
}

.size-119 {
  min-width: 156px;
  height: 45px;
}

.size-120 {
  width: 100%;
  min-height: 199px;
}

.size-121 {
  width: 100%;
  height: 46px;
}

.size-122 {
  width: 55px;
  height: 100%;
}

.size-123 {
  width: 70px;
  min-height: 70px;
}

.size-124 {
  width: 100%;
  min-height: 150px;
}

.size-125 {
  min-width: 180px;
  height: 40px;
}

/*//////////////////////////////////////////////////////////////////
[ Width ]*/
.size-201 {
  max-width: 270px;
}

.size-202 {
  width: calc(100% / 3);
}

.size-203 {
  width: 105px;
}

.size-204 {
  width: calc(100% - 105px);
}

.size-205 {
  width: 145px;
}

.size-206 {
  width: calc(100% - 145px);
}

.size-207 {
  width: calc(100% - 78px);
}

.size-208 {
  width: 34.5%;
}

.size-209 {
  width: 65.5%;
}

.size-210 {
  width: 50%;
}

.size-211 {
  width: 60px;
}

.size-212 {
  width: calc(100% - 60px);
}

.size-213 {
  max-width: 245px;
}

.size-214 {
  width: 90px;
}

.size-215 {
  width: calc(100% - 110px);
}

.size-216 {
  width: 55px;
}

.size-217 {
  width: calc(100% - 55px);
}

.size-218 {
  max-width: 286px;
}



/*//////////////////////////////////////////////////////////////////
[ Height ]*/
.size-301 {
  min-height: 30px;
}

.size-302 {
  min-height: 80px;
}

.size-303 {
  height: 390px;
}


/*==================================================================
   BACKGROUND BACKGROUND BACKGROUND BACKGROUND BACKGROUND BACKGROUND 
==================================================================*/
.bg-none {background-color: transparent;}
.bg0 {background-color: #fff;}
.bg1 {background-color: #717fe0;}
.bg2 {background-color: #e6e6e6;}
.bg3 {background-color: #222;}
.bg5 {background-color: rgba(0,0,0,0.5);}
.bg6 {background-color: #f2f2f2;}
.bg7 {background-color: #333;}
.bg8 {background-color: #f3f3f3;}
.bg9 {background-color: rgba(255,255,255,0.9);}

/*---------------------------------------------*/
.bg-overlay1::before {
  content: "";
  position: absolute;
  z-index: -100;
  display: block;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background-color: #000;
  opacity: 0.5;
}

/*---------------------------------------------*/
.bg-img1 {
  background-size: cover;
  background-position: center center;
  background-repeat: no-repeat;
}




/*==================================================================
       BORDER BORDER  BORDER  BORDER  BORDER  BORDER  BORDER  BORDER
==================================================================*/
.bor0 {border-radius: 50%;}

.bor1 {
  border-radius: 23px;
}

.bor2 {
  border-radius: 20px;
}

.bor3 {
  border-bottom: 1px solid transparent;
}

.bor4 {
  border: 1px solid #e6e6e6;
  border-radius: 3px;
}

.bor5 {
  border-left: 1px solid #e5e5e5;
  border-right: 1px solid #e5e5e5;
}

.bor6 {border-right: 1px solid rgba(255,255,255,0.1);}

.bor7 {
  border: 1px solid #ccc;
  border-radius: 15px;
}

.bor8 {
  border: 1px solid #e6e6e6;
  border-radius: 2px;
}

.bor9 {
  border-right: 1px solid #e6e6e6;
}

.bor10 {
  border: 1px solid #e6e6e6;
}

.bor11 {
  border-radius: 21px;
}

.bor12 {
  border-bottom: 1px dashed #d9d9d9;
}

.bor13 {
  border: 1px solid #e6e6e6;
  border-radius: 22px;
}

.bor14 {
  border-radius: 25px;
}

.bor15 {
  border-left: 1px solid #e6e6e6;
  border-right: 1px solid #e6e6e6;
  border-bottom: 1px solid #e6e6e6;
}

.bor16 {
  border-left: 3px solid #e6e6e6;
}

.bor17 {
  border: 1px solid #e6e6e6;
  border-radius: 25px;
}

/*---------------------------------------------*/
.bor18 {
  border-top: 1px solid #e6e6e6;
}

.bor18:last-child {
  border-bottom: 1px solid #e6e6e6;
}

/*---------------------------------------------*/
.bor19 {
  border: 1px solid #d9d9d9;
  border-radius: 2px;
}


/*==================================================================
 HOW HOW HOW HOW HOW HOW HOW HOW HOW HOW HOW HOW HOW HOW HOW HOW HOW 
==================================================================*/
.plh0::-webkit-input-placeholder { color: #999999;}
.plh0:-moz-placeholder { color: #999999;}
.plh0::-moz-placeholder { color: #999999;}
.plh0:-ms-input-placeholder { color: #999999;}

.plh1::-webkit-input-placeholder { color: #b2b2b2;}
.plh1:-moz-placeholder { color: #b2b2b2;}
.plh1::-moz-placeholder { color: #b2b2b2;}
.plh1:-ms-input-placeholder { color: #b2b2b2;}

.plh2::-webkit-input-placeholder { color: #333;}
.plh2:-moz-placeholder { color: #333;}
.plh2::-moz-placeholder { color: #333;}
.plh2:-ms-input-placeholder { color: #333;}

.plh3::-webkit-input-placeholder { color: #555;}
.plh3:-moz-placeholder { color: #555;}
.plh3::-moz-placeholder { color: #555;}
.plh3:-ms-input-placeholder { color: #555;}

.plh4::-webkit-input-placeholder { color: #888;}
.plh4:-moz-placeholder { color: #888;}
.plh4::-moz-placeholder { color: #888;}
.plh4:-ms-input-placeholder { color: #888;}

/*---------------------------------------------*/
.js-addedwish-detail {
  color: #6c7ae0;
}

/*---------------------------------------------*/
.label1 {
  position: relative;
}

.label1::after {
  content: attr(data-label1);
  font-family: Poppins-Regular;
  font-size: 10px;
  line-height: 15px;
  color: #fff;
  text-transform: uppercase;
  text-align: center;

  display: block;
  position: absolute;
  top: 3px;
  right: -9px;
  height: 15px;
  min-width: 32px;
  border-radius: 7px;
  padding: 0 4px;
  background-color: #f74877;
}

.label1.rs1::after {
  top: calc(50% - 8px);
  right: auto;
  left: 90%;
}

/*---------------------------------------------*/
.how-active1 {
  color: #333;
  border-color: #797979;
}


/*---------------------------------------------*/
.wrap-input1 {
  position: relative;
  border-bottom: 2px solid rgba(204,204,204, 0.1);
}

.input1 {
  background-color: transparent;
  width: 100%;
}

.focus-input1 {
  position: absolute;
  width: 0%;
  height: 2px;
  background-color: #6774d5;
  left: 0;
  bottom: -2px;
}

.input1:focus + .focus-input1 {
  width: 100%;
}


/*---------------------------------------------*/
.how-pagination1 {
  font-family: Poppins-Regular;
  font-size: 14px;
  color: #808080;

  width: 36px;
  height: 36px;
  border-radius: 50%;
  border: 1px solid #e6e6e6;
}

.how-pagination1:hover {
  background-color: #999;
  border-color: #999;
  color: #fff;
}

.active-pagination1 {
  background-color: #999;
  border-color: #999;
  color: #fff;
}

/*---------------------------------------------*/
.how-shadow1 {
  box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
  -moz-box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
  -webkit-box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
  -o-box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
  -ms-box-shadow: 0 0px 3px 0px rgba(0,0,0,0.2);
}

/*---------------------------------------------*/
.how-pos1 {
  position: absolute;
  top: 10px;
  right: 10px;
}

/*---------------------------------------------*/
.how-pos2 {
  padding-left: 10.7%;
  padding-right: 11%;
}

@media (max-width: 991px) {
  .how-pos2 {
    padding-left: 8%;
    padding-right: 8%;
  }
}

/*---------------------------------------------*/
.how-pos3-parent {
  position: relative;
}

.how-pos3 {
  position: absolute;
  top: -35px;
  right: 0px;
}

/*---------------------------------------------*/
.how-pos4-parent {
  position: relative;
}

.how-pos4 {
  position: absolute;
  top: calc(50% - 9px);
  left: 28px;
}

/*---------------------------------------------*/
.how-pos5-parent {
  position: relative;
}

.how-pos5 {
  position: absolute;
  top: 15px;
  left: 10px;
}



/*---------------------------------------------*/
.how-itemcart1 {
  width: 60px;
  position: relative;
  margin-right: 20px;
  cursor: pointer;
}

.how-itemcart1 img {
  width: 100%;
}

.how-itemcart1::after {
  content: '\e870';
  font-family: Linearicons-Free;
  font-size: 16px;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background-color: rgba(0,0,0,0.5);
  color: #fff;
  transition: all 0.3s;
  -webkit-transition: all 0.3s;
  -o-transition: all 0.3s;
  -moz-transition: all 0.3s;
  opacity: 0;
}

.how-itemcart1:hover:after {
  opacity: 1;
}

/*---------------------------------------------*/
.how-bor2,
.how-bor1 {
  position: relative;
  z-index: 1;
}

.how-bor2::before,
.how-bor1::before {
  content: "";
  display: block;
  position: absolute;
  z-index: -1;
  width: 100%;
  height: 100%;
  border: 3px solid #ccc;
}

.how-bor1::before {
  bottom: -21px;
  left: -21px;
}

@media (max-width: 767px) {
  .how-bor1::before {
    bottom: -21px;
    right: -21px;
    left: auto;
  }
}

.how-bor2::before {
  bottom: -21px;
  right: -21px;
}



/*==================================================================
      PSEUDO PSEUDO PSEUDO PSEUDO PSEUDO PSEUDO PSEUDO PSEUDO PSEUDO
==================================================================*/

/*//////////////////////////////////////////////////////////////////
[ Focus ]*/
.focus-in0:focus::-webkit-input-placeholder { color:transparent; }
.focus-in0:focus:-moz-placeholder { color:transparent; }
.focus-in0:focus::-moz-placeholder { color:transparent; }
.focus-in0:focus:-ms-input-placeholder { color:transparent; }




/*//////////////////////////////////////////////////////////////////
[ Hover ]*/

.hov-cl0:hover {color: #fff;}
.hov-bg0:hover {background-color: #fff;}
.hov-cl1:hover {color: #717fe0;}
.hov-bg1:hover {background-color: #717fe0;}

/*---------------------------------------------*/
.hov-img0 {
  display: block;
  overflow: hidden;
}

.hov-img0 img{
  width: 100%;
  -webkit-transition: transform 0.9s ease;
  -o-transition: transform 0.9s ease;
  -moz-transition: transform 0.9s ease;
  transition: transform 0.9s ease;
}

.hov-img0:hover img {
  -webkit-transform: scale(1.1);
  -moz-transform: scale(1.1);
  -ms-transform: scale(1.1);
  -o-transform: scale(1.1);
  transform: scale(1.1);
}

/*---------------------------------------------*/
.hov-btn1:hover {
  border-color: #222;
  background-color: #222;
  color: #fff;
}

.hov-btn1:hover i {
  color: #fff;
}

/*---------------------------------------------*/
.hov-btn2:hover {
  border-color: #fff;
  background-color: #fff;
  color: #717fe0;
}

/*---------------------------------------------*/
.hov-btn3:hover {
  border-color: #717fe0;
  background-color: #717fe0;
  color: #fff;
}

.hov-btn3:hover i {
  color: #fff;
}

/*---------------------------------------------*/
.hov-tag1:hover {
  color: #717fe0;
  border-color: #717fe0;
}


/*---------------------------------------------*/
.hov-ovelay1 {
  position: relative;
}

.hov-ovelay1::after {
  content: "";
  display: block;
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  background: rgba(103,117,214,0.8);
  opacity: 0;
  transition: all 0.3s;
  -webkit-transition: all 0.3s;
  -o-transition: all 0.3s;
  -moz-transition: all 0.3s;
}

.hov-ovelay1:hover:after {
  opacity: 1;
}


/*---------------------------------------------*/
.hov1:hover {
  color: #333;
  border-color: #797979;
}

/*---------------------------------------------*/
.hov2:hover {
  background-color: #f2f2f2;
}

/*---------------------------------------------*/
.hov3 {
  opacity: 0.6;
}

.hov3:hover {
  opacity: 1;
}




/*==================================================================
  RESPONSIVE RESPONSIVE RESPONSIVE RESPONSIVE RESPONSIVE RESPONSIVE
==================================================================*/

/*//////////////////////////////////////////////////////////////////
[ XL ]*/
@media (max-width: 1199px) {
  .m-0-xl {margin: 0;}
  .m-lr-0-xl {margin-left: 0; margin-right: 0;}
  .m-lr-15-xl {margin-left: 15px; margin-right: 15px;}
  .m-l-0-xl {margin-left: 0;}
  .m-r-0-xl {margin-right: 0;}
  .m-l-15-xl {margin-left: 15px;}
  .m-r-15-xl {margin-right: 15px;}

  .p-0-xl {padding: 0;}
  .p-lr-0-xl {padding-left: 0; padding-right: 0;}
  .p-lr-15-xl {padding-left: 15px; padding-right: 15px;}
  .p-l-0-xl {padding-left: 0;}
  .p-r-0-xl {padding-right: 0;}
  .p-l-15-xl {padding-left: 15px;}
  .p-r-15-xl {padding-right: 15px;}

  .w-full-xl {width: 100%;}

  /*---------------------------------------------*/

}


/*//////////////////////////////////////////////////////////////////
[ LG ]*/
@media (max-width: 991px) {
  .m-0-lg {margin: 0;}
  .m-lr-0-lg {margin-left: 0; margin-right: 0;}
  .m-lr-15-lg {margin-left: 15px; margin-right: 15px;}
  .m-l-0-lg {margin-left: 0;}
  .m-r-0-lg {margin-right: 0;}
  .m-l-15-lg {margin-left: 15px;}
  .m-r-15-lg {margin-right: 15px;}

  .p-0-lg {padding: 0;}
  .p-lr-0-lg {padding-left: 0; padding-right: 0;}
  .p-lr-15-lg {padding-left: 15px; padding-right: 15px;}
  .p-l-0-lg {padding-left: 0;}
  .p-r-0-lg{padding-right: 0;}
  .p-l-15-lg {padding-left: 15px;}
  .p-r-15-lg {padding-right: 15px;}

  .w-full-lg {width: 100%;}

  /*---------------------------------------------*/
  .respon4 {
    width: 50%;
  }

  /*---------------------------------------------*/
  .respon5 {
    padding-top: 50px;
    padding-bottom: 50px;
  }
}


/*//////////////////////////////////////////////////////////////////
[ MD ]*/
@media (max-width: 767px) {
  .m-0-md {margin: 0;}
  .m-lr-0-md {margin-left: 0; margin-right: 0;}
  .m-lr-15-md {margin-left: 15px; margin-right: 15px;}
  .m-l-0-md {margin-left: 0;}
  .m-r-0-md {margin-right: 0;}
  .m-l-15-md {margin-left: 15px;}
  .m-r-15-md {margin-right: 15px;}

  .p-0-md {padding: 0;}
  .p-lr-0-md {padding-left: 0; padding-right: 0;}
  .p-lr-15-md {padding-left: 15px; padding-right: 15px;}
  .p-l-0-md {padding-left: 0;}
  .p-r-0-md{padding-right: 0;}
  .p-l-15-md {padding-left: 15px;}
  .p-r-15-md {padding-right: 15px;}

  .w-full-md {width: 100%;}

  /*---------------------------------------------*/
  .respon4 {
    width: 100%;
  }

}


/*//////////////////////////////////////////////////////////////////
[ SM ]*/
@media (max-width: 575px) {
  .m-0-sm {margin: 0;}
  .m-lr-0-sm {margin-left: 0; margin-right: 0;}
  .m-lr-15-sm {margin-left: 15px; margin-right: 15px;}
  .m-l-0-sm {margin-left: 0;}
  .m-r-0-sm {margin-right: 0;}
  .m-l-15-sm {margin-left: 15px;}
  .m-r-15-sm {margin-right: 15px;}

  .p-0-sm {padding: 0;}
  .p-lr-0-sm {padding-left: 0; padding-right: 0;}
  .p-lr-15-sm {padding-left: 15px; padding-right: 15px;}
  .p-l-0-sm {padding-left: 0;}
  .p-r-0-sm{padding-right: 0;}
  .p-l-15-sm {padding-left: 15px;}
  .p-r-15-sm {padding-right: 15px;}

  .w-full-sm {width: 100%;}

  /*---------------------------------------------*/
  .respon1 {
    font-size: 40px;
  }
  
  /*---------------------------------------------*/
  .respon2 {
    font-size: 20px;
  }

  /*---------------------------------------------*/
  .respon6 {
    width: 65px;
  }

  .respon6-next {
    width: calc(100% - 65px);
  }

  /*---------------------------------------------*/
  .respon7 {
    padding-left: 60px;
  }

  
}


/*//////////////////////////////////////////////////////////////////
[ SSM ]*/
@media (max-width: 480px) {
  .m-0-ssm {margin: 0;}
  .m-lr-0-ssm {margin-left: 0; margin-right: 0;}
  .m-lr-15-ssm {margin-left: 15px; margin-right: 15px;}
  .m-l-0-ssm {margin-left: 0;}
  .m-r-0-ssm {margin-right: 0;}
  .m-l-15-ssm {margin-left: 15px;}
  .m-r-15-ssm {margin-right: 15px;}

  .p-0-ssm {padding: 0;}
  .p-lr-0-ssm {padding-left: 0; padding-right: 0;}
  .p-lr-15-ssm {padding-left: 15px; padding-right: 15px;}
  .p-l-0-ssm {padding-left: 0;}
  .p-r-0-ssm{padding-right: 0;}
  .p-l-15-ssm {padding-left: 15px;}
  .p-r-15-ssm {padding-right: 15px;}

  .w-full-ssm {width: 100%;}

  /*---------------------------------------------*/
  .respon3 {
    padding: 20px;
  }

}

</style>
	
</head>
<!--==================================
<body class="animsition">
	<!-- header -->
	<%@ include file="/common/web/header.jsp" %>
	
	<div class="container">
		<dec:body/>
	</div>
	
	<!-- footer -->
	<%@ include file="/common/web/footer.jsp" %>
	<!-- Back to top -->
	<div class="btn-back-to-top" id="myBtn">
		<span class="symbol-btn-back-to-top">
			<i class="zmdi zmdi-chevron-up"></i>
		</span>
	</div>

	<!-- Modal1 -->
	<div class="wrap-modal1 js-modal1 p-t-60 p-b-20">
		<div class="overlay-modal1 js-hide-modal1"></div>

		<div class="container">
			<div class="bg0 p-t-60 p-b-30 p-lr-15-lg how-pos3-parent">
				<button class="how-pos3 hov3 trans-04 js-hide-modal1">
					<img src="<c:url value='/template/web/images/icons/icon-close.png'/>" alt="CLOSE">
				</button>

				<div class="row">
					<div class="col-md-6 col-lg-7 p-b-30">
						<div class="p-l-25 p-r-30 p-lr-0-lg">
							<div class="wrap-slick3 flex-sb flex-w">
								<div class="wrap-slick3-dots"></div>
								<div class="wrap-slick3-arrows flex-sb-m flex-w"></div>

								<div class="slick3 gallery-lb">
									<div class="item-slick3" data-thumb="<c:url value='/template/web/images/product-detail-01.jpg'/>">
										<div class="wrap-pic-w pos-relative">
											<img src="<c:url value='/template/web/images/product-detail-01.jpg'/>" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="<c:url value='/template/web/images/product-detail-01.jpg'/>">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3" data-thumb="<c:url value='/template/web/images/product-detail-02.jpg'/>">
										<div class="wrap-pic-w pos-relative">
											<img src="<c:url value='/template/web/images/product-detail-02.jpg'/>" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="<c:url value='/template/web/images/images/product-detail-02.jpg'/>">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>

									<div class="item-slick3" data-thumb="<c:url value='/template/web/images/product-detail-03.jpg'/>">
										<div class="wrap-pic-w pos-relative">
											<img src="<c:url value='/template/web/images/product-detail-03.jpg'/>" alt="IMG-PRODUCT">

											<a class="flex-c-m size-108 how-pos1 bor0 fs-16 cl10 bg0 hov-btn3 trans-04" href="<c:url value='/template/web/images/product-detail-03.jpg'/>">
												<i class="fa fa-expand"></i>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<div class="col-md-6 col-lg-5 p-b-30">
						<div class="p-r-50 p-t-5 p-lr-0-lg">
							<h4 class="mtext-105 cl2 js-name-detail p-b-14">
								Lightweight Jacket
							</h4>

							<span class="mtext-106 cl2">
								$58.79
							</span>

							<p class="stext-102 cl3 p-t-23">
								Nulla eget sem vitae eros pharetra viverra. Nam vitae luctus ligula. Mauris consequat ornare feugiat.
							</p>
							
							<!--  -->
							<div class="p-t-33">
								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										Size
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Size S</option>
												<option>Size M</option>
												<option>Size L</option>
												<option>Size XL</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-203 flex-c-m respon6">
										Color
									</div>

									<div class="size-204 respon6-next">
										<div class="rs1-select2 bor8 bg0">
											<select class="js-select2" name="time">
												<option>Choose an option</option>
												<option>Red</option>
												<option>Blue</option>
												<option>White</option>
												<option>Grey</option>
											</select>
											<div class="dropDownSelect2"></div>
										</div>
									</div>
								</div>

								<div class="flex-w flex-r-m p-b-10">
									<div class="size-204 flex-w flex-m respon6-next">
										<div class="wrap-num-product flex-w m-r-20 m-tb-10">
											<div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-minus"></i>
											</div>

											<input class="mtext-104 cl3 txt-center num-product" type="number" name="num-product" value="1">

											<div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m">
												<i class="fs-16 zmdi zmdi-plus"></i>
											</div>
										</div>

										<button class="flex-c-m stext-101 cl0 size-101 bg1 bor1 hov-btn1 p-lr-15 trans-04 js-addcart-detail">
											Add to cart
										</button>
									</div>
								</div>	
							</div>

							<!--  -->
							<div class="flex-w flex-m p-l-100 p-t-40 respon7">
								<div class="flex-m bor9 p-r-10 m-r-11">
									<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 js-addwish-detail tooltip100" data-tooltip="Add to Wishlist">
										<i class="zmdi zmdi-favorite"></i>
									</a>
								</div>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Facebook">
									<i class="fa fa-facebook"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Twitter">
									<i class="fa fa-twitter"></i>
								</a>

								<a href="#" class="fs-14 cl3 hov-cl1 trans-04 lh-10 p-lr-5 p-tb-2 m-r-8 tooltip100" data-tooltip="Google Plus">
									<i class="fa fa-google-plus"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

<!--===============================================================================================-->	
	<script src="<c:url value='/template/web/vendor/jquery/jquery-3.2.1.min.js'/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/template/web/vendor/animsition/js/animsition.min.js'/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/template/web/vendor/bootstrap/js/popper.js'/>"></script>
	<script src="<c:url value='/template/web/vendor/bootstrap/js/bootstrap.min.js'/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/template/web/vendor/select2/select2.min.js'/>"></script>
	<script>
		$(".js-select2").each(function(){
			$(this).select2({
				minimumResultsForSearch: 20,
				dropdownParent: $(this).next('.dropDownSelect2')
			});
		})
	</script>
<!--===============================================================================================-->
	<script src="<c:url value='/template/web/vendor/daterangepicker/moment.min.js'/>"></script>
	<script src="<c:url value='/template/web/vendor/daterangepicker/daterangepicker.js'/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/template/web/vendor/slick/slick.min.js'/>"></script>
	<script src="<c:url value='/template/web/js/slick-custom.js'/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/template/web/vendor/parallax100/parallax100.js'/>"></script>
	<script>
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script src="<c:url value='/template/web/vendor/MagnificPopup/jquery.magnific-popup.min.js'/>"></script>
	<script>
		$('.gallery-lb').each(function() { // the containers for all your galleries
			$(this).magnificPopup({
		        delegate: 'a', // the selector for gallery item
		        type: 'image',
		        gallery: {
		        	enabled:true
		        },
		        mainClass: 'mfp-fade'
		    });
		});
	</script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		$(window).scroll(
				function() {
					if ($(window).scrollTop() + $(window).height() >= $(
							document).height()) {
						loadMore();
					}
				});
		function loadMore() {
			var amount = document.getElementsByClassName("product").length;
			$.ajax({
				url : "<c:url value='/JavaWebProject/load'/>",
				type : "get", //send it through get method
				data : {
					exits : amount
				},
				success : function(data) {
					var row = document.getElementById("content");
					row.innerHTML += data;
				},
				error : function(xhr) {
					//Do Something to handle error
				}
			});
		}
	</script>
<!--===============================================================================================-->
	<script src="<c:url value='/template/web/vendor/isotope/isotope.pkgd.min.js'/>"></script>
<!--===============================================================================================-->
	<script src="<c:url value='/template/web/vendor/sweetalert/sweetalert.min.js'/>"></script>
	<script>
		$('.js-addwish-b2, .js-addwish-detail').on('click', function(e){
			e.preventDefault();
		});

		$('.js-addwish-b2').each(function(){
			var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-b2');
				$(this).off('click');
			});
		});

		$('.js-addwish-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();

			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");

				$(this).addClass('js-addedwish-detail');
				$(this).off('click');
			});
		});

		/*---------------------------------------------*/

		$('.js-addcart-detail').each(function(){
			var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to cart !", "success");
			});
		});
	
	</script>
<!--===============================================================================================-->
	<script src="<c:url value='/template/web/vendor/perfect-scrollbar/perfect-scrollbar.min.js'/>"></script>
	<script>
		$('.js-pscroll').each(function(){
			$(this).css('position','relative');
			$(this).css('overflow','hidden');
			var ps = new PerfectScrollbar(this, {
				wheelSpeed: 1,
				scrollingThreshold: 1000,
				wheelPropagation: false,
			});

			$(window).on('resize', function(){
				ps.update();
			})
		});
	</script>
<!--===============================================================================================-->
	<script src="<c:url value='/template/web/js/main.js'/>"></script>
	
</body>
</html>