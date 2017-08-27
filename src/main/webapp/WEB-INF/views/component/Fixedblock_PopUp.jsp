<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link href="plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lato|Roboto:100" rel="stylesheet">



<style>

/*Modal css start here*/
.modal-header 
{
    padding: 8px;
    border-bottom: 1px solid #e5e5e5;
    text-align: left;
    background-color: #ffbb19;
}    
    
.modal-content 
{    
    border-radius: 0px;
    min-height: 60%;
}
.modal-dialog 
{    
    width: 30%;
}
/*Modal css ends here*/    
    
 
/*Circle css starts here*/        
.circleBlock1
{
  min-width: 50%; 
  min-height: inherit;
  margin: 10%;
    margin-left: 15%;
}
.circleBlock2
{
  min-width: 50%; 
  min-height: inherit;
  margin: 10%;
    margin-right: 15%;
}
.circle1
{
    background-color: #2980b9;
    color: #ecf0f1;
    border-radius: 50%;
    padding: 2px; 
    width: 95%;
    height: 50%;
    margin: 5%;
    text-align: center;
    text-decoration: none!important;   
    line-height:.5; 
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
    background-color: #e74c3c;
    color: #ecf0f1;
    border-radius: 50%;
    padding: 2px; 
    width: 80%;
    height: 50%;
    margin: 5%;
    text-align: center;
    text-decoration: none!important;   
    line-height:.5; 
}
/*Circle css ends here*/    
    
    
    
    
    
    
/* Floating css starts from here */
/* Floating Icons */
.fixedBlock {
  position: fixed;
  top: 40%;
  right: -2%;
  padding: 0;
  list-style: none;
  z-index: 99;
  width: 10%;
}

.fixedBlock li a {display: block;}

.fixedBlock li a {
  display: block;
  width: 80%;
  min-height: 40px; 
  padding: 8px;
  -webkit-transition:  background .2s ease-in-out;
  -moz-transition:  background .2s ease-in-out;
  -o-transition:  background .2s ease-in-out;
  transition:  background .2s ease-in-out;
}

/*.fixedBlock li:hover .currentPlanBlock {color: #c0392b ;}*/
.currentPlanBlock:hover{
  background-color: #D91E18;
  text-decoration: none;
}
.topUpBlock:hover{
  background-color: #D91E18;
  text-decoration: none;
}

.currentPlanBlock
{
  background-color: #e74c3c;
  text-decoration: none;
}

.topUpBlock
{
  background-color: #e74c3c;  
  text-decoration: none;
    border-bottom: 0.5px solid #ecf0f1;
}
.textCSS
{
  font-size: 18px;
  text-align: center;
  color: #ecf0f1;
  text-decoration: none !important;
}


/* Floating css ends from here */


/* iphone 6 plus*/
@media (max-width: 480px)
{
    .fixedBlock
    {
        width: 14%;
    }
    .textCSS
    {
        font-size: 12px;
        padding-right: 20%;
    }
    /*Modal css start here*/
    .modal-content 
    {    
        border-radius: 0px;
        min-height: 45%;
        margin: 15%;
        margin-left: 9%;
    }
    .modal-dialog 
    {    
        width: 100%;
    }
    /*Modal css ends here*/ 
    
    /*Circle css starts here*/        
    .circleBlock1
    {
      width: 175%; 
      min-height: inherit;
      margin: 50%;
      margin-left: 10%;
    }
    .circleBlock2
    {
      width: 175%; 
      min-height: inherit;
      margin: 50%;
      margin-right: 15%;
      margin-left: 100%;    
    }
    .circle1
    {
        width: 100%;
        height: 50%;
    }
    .circle2  
    {
        width: 80%;
        height: 50%;
        margin: 5%;
    }
    /*Circle css ends here*/    
    
    
}  

</style>



</head>
<body>

</body>
</html>