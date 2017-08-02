<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Fonts START -->
  <link href="https://fonts.googleapis.com/css?family=Lato|Roboto:100" rel="stylesheet">
  <!-- Fonts END -->
  <!-- Global styles START -->          
  <link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Global styles END --> 
   
  <!-- Page level plugin styles START -->
  <link href="pages/css/animate.css" rel="stylesheet">
  <link href="plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="corporate/css/styleblue.css" rel="stylesheet">
  <link href="corporate/css/style-responsive.css" rel="stylesheet">
  <link href="corporate/css/themes/blue.css" rel="stylesheet" id="style-color">
  <link href="corporate/css/custom.css" rel="stylesheet">
  <!-- Theme styles END -->
 <style type="text/css">
    .v_text {
      font-family: 'Lato', sans-serif;
      font-size: 20px;
    }
  .div2 {
    width: 280px;
    height: 180px;    
    padding: 20px;
    margin: 40px;
    margin-bottom: 5px;
    padding-bottom: 5px;
    border: .5px solid;
    border-color: #D9D9D9;
    outline: 2px solid white;
    outline-offset: 15px;

  }
  .divBill {
    width: 88%;
    height: 25%;    
    margin-left: 50px;
    margin-top: 5px;
    border: .5px solid;
    border-color: #D9D9D9;
    outline: 2px solid white;
    outline-offset: 5px;  
    margin-bottom: 2%;
}
.divRuppe {
    width: 120px;
    height: 40px;    
    padding: 20px;
    margin: 10%;
    border: .5px solid;
    border-color: #D9D9D9;
    outline: 2px solid white;
    outline-offset: 15px;
  }
.for3Text{
  font-size:16px; 
  margin:10%; 
  line-height:.5;
}

 /* For TopUp modal*/ 
.modal-dialog 
{
  width: 35%;
  height:90%;
}
.modal-content 
{
    height: 60%;
}       
.modal-header 
{
    background-color: #010745;
    padding:16px 16px;
    color:#FFF;
}
.v_b 
{
    border-style: dashed;
    border-width: 1px;
    border-color: #D9D9D9;
}

.circle1
{
    color: #010745;
    border-radius: 50%;
    border: 1px solid #010745;
    padding: 20px; 
    width: 140%;
    height: 80%; 
    margin: 40px;
    text-align: center;
    text-decoration: none!important;   
    margin:10%; 
    line-height:.5; 
}
.circle1:hover
{
  color: #FFF;
  background-color: #010745;
  border: 1px solid #FFF;
  text-decoration: none!important;
}

a
{
 text-decoration: none;
}
a:hover{
 text-decoration: none;
}

.circle2  
{
    color: #010745;
    border-radius: 50%;
    border: 2px solid #010745;
    padding: 20px; 
    width: 140%;
    height: 80%; 
    margin: 40px;
    text-align: center;
    text-decoration: none!important;   
    margin:10%; 
    line-height:.5; 
}
.circle2:hover
{
  color: #FFF;
  background-color: #010745;
  border: 1px solid #FFF;
  text-decoration: none!important;
}

/* Floating css starts from here */
/* Floating Icons */
.fixedBlock {
  position: fixed;
  top: 40%;
  right: -2%;
  padding: 0;
  list-style: none;
  z-index: 99;
  width: 8%;
}

.fixedBlock li a {display: block;}

.fixedBlock li a {
  display: block;
  width: 90%;
  padding: 10px;
  -webkit-transition:  background .2s ease-in-out;
  -moz-transition:  background .2s ease-in-out;
  -o-transition:  background .2s ease-in-out;
  transition:  background .2s ease-in-out;
}

/*.fixedBlock li:hover .currentPlanBlock {color: #c0392b ;}*/
.currentPlanBlock:hover{
  background-color: #1F3A93;
  text-decoration: none;
}
.topUpBlock:hover{
  background-color: #D91E18;
  text-decoration: none;
}

.currentPlanBlock
{
  background-color: #010745;
  text-decoration: none;
}

.topUpBlock
{
  background-color: #F22613;  
  text-decoration: none;
}
.textCSS
{
  font-size: 10px;
  padding: :8px;
  color: #ecf0f1;
  text-decoration: none !important;
}
/* Floating css ends from here */


/* iphone 6 plus*/
@media (max-width: 480px){
  .divBill {
    width:75%;
    height: 60%;
  }
  .divRuppe{
    margin: 2%;
    margin-left: 10%;
    margin-bottom: 10%;
  }
  .for3Text{
    margin: 10%;
    margin-bottom: 1%;
  }
  .modal-dialog 
  {
    width: 90%;
    height:100%;
  }
  .circle1
  {
    width: 30%;
    height:35%; 
  }
  .circle2
  {
    width: 30%;
    height:35%; 
  }
}

/* iphone 6*/
@media (max-width: 380px){
  .divBill {
    width:82%;
    height: 65%;
  }
  .modal-dialog 
  {
    width: 90%;
    height:100%;
  }
  .circle1
  {
    width: 35%;
    height:40%; 
  }
  .circle2
  {
    width: 35%;
    height:40%; 
  }
}



  </style>
