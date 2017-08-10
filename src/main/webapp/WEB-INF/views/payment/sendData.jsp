<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page session="false" %>
<html>
    <head>
        <meta charset="utf-8">
        <title>STOIC ZENO</title>

        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta content="Stoic Zeno User Portal" name="description">
        <meta content="Stoic Zeno User Portal Keywords" name="keywords">
        <meta content="vikram" name="author">

        <!-- link to image for socio -->
        <meta property="og:url" content="-CUSTOMER VALUE-">
        <link rel="shortcut icon" href="favicon.ico">


        <!--  include the all css components -->
        <jsp:include page="../component/css.jsp"></jsp:include>

<style type="text/css">

.payNowButton2
{
	width:90%;
	height:25%;
	margin:1%;
	line-height:.5;
	background-color:#010745;
	text-align:center;
	font-size:16px;
	line-height:.5;
	color:#ecf0f1;
	align:center;
	padding-top:12%;
}
.payNowButton2:hover
{
	background-color: #1F3A93;
	color: #ecf0f1;
}
.payNowButton1
{
	width:90%;
	height:20%;
	margin:1%;
	line-height:.5;
	background-color:#010745;
	text-align:center;
	font-size:16px;
	line-height:.5;
	color:#FFF;
	align:center;
	border: none;
}
.payNowButton1:hover
{
	background-color: #FFF;
	color: #010745;
	border: 1px solid #010745; !important;
}
textarea:focus, input:focus{
    outline: none;
}
.summaryBlock
{
 	width: 90%;
    height: 40%;    
    padding: 5%;
    margin: 40px;
    margin-bottom: 5px;
    padding-bottom: 5px;
    border: .5px solid;
    border-color: #D9D9D9;
    outline: 2px solid white;
    outline-offset: 15px;
}


input[type=radio].css-checkbox
{
	position:absolute;
	z-index:-1000;
	left:-1000px;
	overflow: hidden;
	clip: rect(0 0 0 0);
	height:1px; width:1px;
	margin:-1px;
	padding:0;
	border:0;
}

input[type=radio].css-checkbox + label.css-label 
{
	padding-left:30px;
	height:25px; 
	display:inline-block;
	line-height:25px;
	background-repeat:no-repeat;
	background-position: 0 0;
	
	vertical-align:middle;
	cursor:pointer;
}

input[type=radio].css-checkbox:checked + label.css-label 
{
	background-position: 0 -25px;
}

label.css-label
{
	background-image:url(http://csscheckbox.com/checkboxes/u/csscheckbox_98809849d4d88f570f5ad4ce6c2be5b1.png);
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}


/* iphone 6 plus*/
@media (max-width: 480px)
{
	payNowButton1
 	{
		width: 40%;
		height: 5%;	
		padding-top: 5%;
		width: 70%;
		height: 10%;	
		padding-top: 2%;
 	}
 	.payNowButton2
 	{
 		width: 80%;
 		height: 15%;
 	}
	
	.summaryBlock
	{
		height: 70%;
	}
	

}

/* iphone 6*/
@media (max-width: 380px)
{
}
</style>
   
<script>

    window.onload = function () {
        var d = new Date().getTime();
        document.getElementById("tid").value = d;
    };
</script>


</head>
<body class="corporate">

      <!-- BEGIN TOP BAR -->
      <div class="pre-header">
          <div class="container">
              <div class="row">
                  <!-- BEGIN TOP BAR MENU -->
                  <div class="col-md-12 col-sm-12 additional-nav" style=" font-size:12px; font-color:000000">
                      <ul class="list-unstyled list-inline pull-right ">
                          <li ><i class=" fa fa-phone"></i><span>Lets Talk: +91 9019602602</span></li>
                      </ul>
                  </div>
                  <!-- END TOP BAR MENU -->
              </div>
          </div>
      </div>
      <!-- END TOP BAR -->
            
         <!-- BEGIN HEADER -->
         <div class="header">
             <div class="container">
                 <a class="site-logo" href="#">
                     <img src="corporate/img/logos/logo.png" alt="Stoic Zeno"> </a>
                 <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>
                 <!-- BEGIN NAVIGATION -->
                 <div class="header-navigation pull-right font-transform-inherit" style="font-size:12px">
                     <ul>
                         <li class="dropdown active"> </li>
                         <li ><a href="${pageContext.request.contextPath }/dashboard">Home</a></li>
                     <li class="active" ><a href="${pageContext.request.contextPath }/billingPayment">Make Payment</a></li>  
                     <li><a href="${pageContext.request.contextPath }/service">Service Request</a></li> 
                     <li><a href="${pageContext.request.contextPath }/help">Help</a></li> 
                     <li><a href="${pageContext.request.contextPath }/parental-control">Parental Control</a></li>
                     <li class="dropdown">
                         <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                             Settings      
                         </a>

                         <ul class="dropdown-menu">
                             <li><a href="${pageContext.request.contextPath }/profile">Profile</a></li>
                             <li><a href="${pageContext.request.contextPath }/logout">Logout</a></li>
                         </ul>
                     </li>
                 </ul>
             </div>
             <!-- END NAVIGATION -->
         </div>
     </div>
     <!-- Header END -->
        
<!-- BEGIN STEPS -->

 <div class="row front-steps-wrapper"  style="margin-left: 0.001%;width: 100%;">
     <div class="col-lg-12 col-md-12 col-sm-12 front-step-col">
         <div class="front-step front-stepv">
             <div class="row">
                 <div class="col-lg-12 col-md-12 col-sm-12 margin-top-5 " style="padding-left: 10%;">
                     
                     	<div class="col-md-6">
                     		<h2 style="font-family:Roboto; font-size:30px">Billing Summary</h2>
                     	</div>  
                     	
                    
                 </div>
             </div>
         </div>
     </div>
 </div>
 <!-- END STEPS -->


<div class="main">
	<div class="container">  
		<div class="col-lg-12 col-md-12 col-sm-12" >

			<form method="post" name="customerData" action="ccavRequestHandler" class="form-horizontal form-without-legend ">
			
				<div class="form-group">
					<div class="col-md-1">
					</div> 
                	<div class="col-lg-10 col-md-10 col-sm-10 " style=" padding-bottom:16">
                	
	                	<div class="summaryBlock">
	                		<div class="row">
		                		<div class="col-md-4">
			                		<p style=" font-size:14px; line-height:.5">Account No : ${user_details.getActid() }  </p><br>
			                		<p style=" font-size:14px; line-height:.5">Name : ${user_details.getFirst_name() } ${user_details.getLast_name() } </p><br>
			                        <p style=" font-size:14px; line-height:.5">Amount : ${pendingAmount }/-  </p><br>
			                        <p style=" font-size:14px; line-height:.5">Email  : ${user_details.getEmail() }</p><br>
			                        <p style=" font-size:14px; line-height:.5">Mobile No.  : ${user_details.getMobileno() } </p><br>
			                    </div>
			                    <div class="col-md-8">
			                    
			                    	<div class="row">
				                    	<div class="col-md-2">
				                    	</div>
				                    	<div class="col-md-5">
						                    <input type="radio" name="payment_option" value="OPTCRDC" id="radio1" class="css-checkbox" />
			                    			<label for="radio1" class="css-label radGroup1">Credit Card</label><br>
										
											<input type="radio" name="payment_option" value="OPTDBCRD" id="radio2" class="css-checkbox" />
			                    			<label for="radio2" class="css-label radGroup1">Debit Card</label><br>
			                    			
			                    			<input type="radio" name="payment_option" value="OPTNBK" id="radio3" class="css-checkbox" />
			                    			<label for="radio3" class="css-label radGroup1">Net Banking</label><br>
											
											<input type="radio" name="payment_option" value="OPTCASHC" id="radio4" class="css-checkbox" />
			                    			<label for="radio4" class="css-label radGroup1">Cash Card</label><br>
		                    			</div>
		                    			
		                    			<div class="col-md-5">
			                    			<input type="radio" name="payment_option" value="OPTMOBP" id="radio5" class="css-checkbox" />
			                    			<label for="radio5" class="css-label radGroup1">Mobile Payments</label><br>
			                    			
			                    			<input type="radio" name="payment_option" value="OPTEMI" id="radio6" class="css-checkbox" />
			                    			<label for="radio6" class="css-label radGroup1">EMI</label><br>
			                    			
			                    			<input type="radio" name="payment_option" value="OPTWLT" id="radio7" class="css-checkbox" />
			                    			<label for="radio7" class="css-label radGroup1">Wallet</label><br>
										</div>	
				                	</div><!-- end row -->
				                	<div class="row">
				                		<div class="col-md-7">
				                		</div>
				                		<div class="col-md-5">
				                			<button class="payNowButton1" type="submit" >
		                     				Confirm Payment
		                     			</button>
				                		</div>
				                	
				                	</div>    	
				                </div>   
			           		</div>	 
			                <div class="col-md-9">
			                </div>
	                        <div class="row col-md-3" style="margin-top: 5%;">
	                        	
		                        	
	                     		
                     		</div>
                     		<div class="col-md-4">
			                </div> 
	                    </div>
	        
	                    
		               	<input readonly="readonly" type="hidden" name="tid" id="tid" value=""/><!-- Transaction ID -->
		               	<input type="hidden" name="merchant_id" value="127191"/><!-- Merchant Id	: -->
					   	<input type="hidden" name="order_id" value="1236556561"/><!-- Order Id	: -->
					   	<input type="hidden" name="amount" value="${pendingAmount }"   />
						<input type="hidden" name="billing_name" value="${user_details.getFirst_name() } ${user_details.getLast_name() }"/><!-- billing name -->
						<input type="hidden" name="billing_address" value="${user_details.getAddress() }"/><!-- billing address -->
						<input type="hidden" name="billing_city" value="${user_details.getCityname() }"/><!-- billing city -->
						<input type="hidden" name="billing_zip" value="${user_details.getPin() }"/><!-- billing zip -->
				        <input type="hidden" name="billing_country" value="${user_details.getCountryname() }"/><!-- billing country -->
						<input type="hidden" name="billing_tel" value="${user_details.getMobileno() }"/><!-- billing tel -->
						<input type="hidden" name="billing_email" value="${user_details.getEmail() }"/><!-- billing email -->
					   	
					   	
						<input type="hidden" name="currency" value="INR"/><!-- Currency	: -->
						<input type="hidden" name="redirect_url" value="http://52.172.215.71:8080/zeno/ccavResponseHandler"/><!-- Redirect URL	: -->
						<input type="hidden" name="cancel_url" value="http://52.172.215.71:8080/zeno/ccavResponseHandler"/><!-- Cancel URL	: -->
					 	<input type="hidden" name="language" value="EN"/><!-- Language	: -->
		                <input readonly="readonly" type="hidden" name="tid" id="tid" value=""/><!-- Transction ID -->
		                
		                <input type="hidden" name="merchant_id" value="127191"/><!-- Merchant ID -->
						<input type="hidden" name="order_id" value="123654789"/><!-- order id -->
						<input type="hidden" name="amount" value="1.00"/><!--Amount  -->
						<input type="hidden" name="currency" value="INR"/><!-- currency -->
						<input type="hidden" name="redirect_url" value="http://52.172.215.71:8080/zeno/ccavResponseHandler"/><!-- Redirect URL -->
						<input type="hidden" name="cancel_url" value="http://52.172.215.71:8080/zeno/ccavResponseHandler"/><!-- cancel url -->
					 	<input type="hidden" name="language" value="EN"/><!-- Language -->
						<input type="hidden" name="billing_name" value="Charli"/><!-- billing name -->
				        <input type="hidden" name="billing_address" value="Room no 1101, near Railway station Ambad"/><!-- billing address -->
				        <input type="hidden" name="billing_city" value="Indore"/><!-- billing city -->
				        <input type="hidden" name="billing_state" value="MH"/><!-- billing state -->
				        <input type="hidden" name="billing_zip" value="425001"/><!-- billing zip -->
				        <input type="hidden" name="billing_country" value="India"/><!-- billing country -->
				        <input type="hidden" name="billing_tel" value="9896226054"/><!-- billing tel -->
				        <input type="hidden" name="billing_email" value="test@gmail.com"/><!-- billing email -->
				        <input type="hidden" name="billing_name" value="Charli"/><!--billing name  -->
				        <input type="hidden" name="billing_address" value="Room no 1101, near Railway station Ambad"/><!-- billing address -->
				        <input type="hidden" name="billing_city" value="Indore"/><!-- billing city -->
				        <input type="hidden" name="billing_state" value="MH"/><!-- billing state -->
				        <input type="hidden" name="billing_zip" value="425001"/><!-- billing zip -->
				        <input type="hidden" name="billing_country" value="India"/><!-- billing country -->
				        <input type="hidden" name="billing_tel" value="9896226054"/><!-- billing tel -->
				        <input type="hidden" name="billing_email" value="test@gmail.com"/><!-- billing email -->
				        <input type="hidden" name="delivery_name" value="Chaplin"/><!--shiping name  -->
				        <input type="hidden" name="delivery_address" value="room no.701 near bus stand"/><!-- shiping address -->
				        <input type="hidden" name="delivery_city" value="Hyderabad"/><!-- shiping city -->
				        <input type="hidden" name="delivery_state" value="Andhra"/><!-- shiping state -->
				        <input type="hidden" name="delivery_zip" value="425001"/><!-- shiping zip -->
				        <input type="hidden" name="delivery_country" value="India"/><!-- shiping country -->
				        <input type="hidden" name="delivery_tel" value="9896226054"/><!-- shiping tel -->
				        <input type="hidden" name="merchant_param1" value="additional Info."/><!-- merchant param1 -->
				        <input type="hidden" name="merchant_param2" value="additional Info."/><!-- merchant param2 -->
				        <input type="hidden" name="merchant_param3" value="additional Info."/><!-- merchant param3 -->
						<input type="hidden" name="merchant_param4" value="additional Info."/><!-- merchant param4 -->
						<input type="hidden" name="merchant_param5" value="additional Info."/><!-- merchant param5 -->
				        <input type="hidden" name="delivery_name" value="Chaplin"/><!-- shiping name -->
				        <input type="hidden" name="delivery_address" value="room no.701 near bus stand"/><!-- shiping address -->
				        <input type="hidden" name="delivery_city" value="Hyderabad"/><!-- shiping city -->
				        <input type="hidden" name="delivery_state" value="Andhra"/><!-- shiping state -->
				        <input type="hidden" name="delivery_zip" value="425001"/><!-- shiping zip -->
				        <input type="hidden" name="delivery_country" value="India"/><!-- shiping country -->
				        <input type="hidden" name="delivery_tel" value="9896226054"/><!-- shiping tel -->
				        <input type="hidden" name="merchant_param1" value="additional Info."/><!-- merchant param1 -->
				        <input type="hidden" name="merchant_param2" value="additional Info."/><!-- merchant param2 -->
				        <input type="hidden" name="merchant_param3" value="additional Info."/><!-- merchant param3 -->
						<input type="hidden" name="merchant_param4" value="additional Info."/><!-- merchant param4 -->
						<input type="hidden" name="merchant_param5" value="additional Info."/><!-- merchant param5 -->
						
						
				       
				         <!-- EMI section start -->
				         
				         
			          	<div id="emi_div" style="display: none">
				      	<input readonly="readonly" type="hidden" id="emi_plan_id"  name="emi_plan_id" value=""/>
				      	<input readonly="readonly" type="hidden" id="emi_tenure_id" name="emi_tenure_id" value=""/>
				      	<input readonly="readonly" type="hidden" id="emi_plan_id"  name="emi_plan_id" value=""/>
				      	<input readonly="readonly" type="hidden" id="emi_tenure_id" name="emi_tenure_id" value=""/>
						<select name="emi_banks"  id="emi_banks">
						</select>
						
						<div id="emi_duration" class="span12">
				        <td id="processing_fee" colspan="2">
					        	
				       
				             <input type="text" id="card_type" name="card_type" value="" readonly="readonly"/><!-- card type -->
				             <select name="card_name" id="card_name"> <option value="">Select Card Name</option> </select> </td>
				       
				             <input type="text" id="data_accept" name="data_accept" readonly="readonly"/><!-- Data accept -->
		
				             <input type="text" id="card_number" name="card_number" value=""/><!-- card number -->
				         
				             <input type="text" name="expiry_month" value=""/><!-- expiry month -->
		
				          	 <input type="text" name="expiry_year" value=""/><!--  -->
				             <input type="text" name="cvv_number" value=""/><!-- cvv number -->
				         
				       <input type="text" name="issuing_bank" value=""/><!-- issueing bank -->
				       <input type="text" name="mobile_number" value=""/><!-- mobile number -->
				       <input type="text" name="mm_id" value=""/><!-- mm_id -->
				       <input type="text" name="otp" value=""/><!-- otp -->
				       <input type="hidden" id="data_accept" name="data_accept" readonly="readonly"/><!-- data accept -->
				       <input type="hidden" id="card_number" name="card_number" value=""/><!-- card number -->
				       <input type="hidden" name="expiry_month" value=""/><!-- expry month -->
				       <input type="hidden" name="expiry_year" value=""/><!-- expiry year -->
				       <input type="hidden" name="cvv_number" value=""/><!-- cvv number -->
				       <input type="hidden" name="issuing_bank" value=""/><!-- issuing bank -->
				       <input type="hidden" name="mobile_number" value=""/><!--mobile no  -->
				       <input type="hidden" name="mm_id" value=""/><!-- mmid -->
				       <input type="hidden" name="otp" value=""/><!-- otp -->
				       <input name="promo_code" id="promo_code" type="hidden" /> 
				        
				        </div>
				        </div>
				        
			
					</div><!-- col-md-10 -->
					<div class="col-md-1">
					</div>
				</div><!-- Form group -->      
			</form>
	      

		</div>
	</div>
</div>

<!-- included pop up -->
            <jsp:include page="../component/pop-up.jsp"></jsp:include>

                <!-- BEGIN FOOTER -->
                <div class="footer" style="font-size:10px; line-height:1"><!--style="font-family:Roboto; position: fixed; right: 0; bottom: 0; left: 0;"-->
                    <div class="container">
                        <div class="row">
                            <!-- BEGIN COPYRIGHT -->
                            <div class="col-md-10 col-sm-10 padding-bottom-10 " > 2017 &copy Stoic Zeno. ALL Rights Reserved.&nbsp 
                                <a href="#">Privacy Policy</a> |
                                <a href="javascript:;">Terms of Service</a> |
                                <a href="javascript:;">Refund and Cancellation</a> |
                                <a href="javascript:;">Feedback</a> |
                                <a href="javascript:;">Contact Us</a>
                            </div>
                            <!-- END COPYRIGHT -->
                        </div>
                    </div>
                </div>
                <!-- END FOOTER -->
                <!-- Load javascripts at bottom, this will reduce page load time -->
            <jsp:include page="../component/js.jsp"></jsp:include>
            <!-- END BODY -->	     
	     
	      
	      
	      
</body>
<!-- <script language="javascript" type="text/javascript" src="json.js"></script>-->
<!-- <script src="jquery-1.7.2.min.js"></script>-->
 <script language="javascript" type="text/javascript" src="js/json.js"></script>
 <script src="js/jquery-1.7.2.min.js"></script>
<script type="text/javascript">
  $(function(){
  
	 /* json object contains
	 	1) payOptType - Will contain payment options allocated to the merchant. Options may include Credit Card, Net Banking, Debit Card, Cash Cards or Mobile Payments.
	 	2) cardType - Will contain card type allocated to the merchant. Options may include Credit Card, Net Banking, Debit Card, Cash Cards or Mobile Payments.
	 	3) cardName - Will contain name of card. E.g. Visa, MasterCard, American Express or and bank name in case of Net banking. 
	 	4) status - Will help in identifying the status of the payment mode. Options may include Active or Down.
	 	5) dataAcceptedAt - It tell data accept at CCAvenue or Service provider
	 	6)error -  This parameter will enable you to troubleshoot any configuration related issues. It will provide error description.
	 */	  
  	  var jsonData;
  	  var access_code = "" // shared by CCAVENUE 
  	  var amount="10.00";
  	  var currency="INR";
  	  
      $.ajax({
           url:'https://secure.ccavenue.com/transaction/transaction.do?command=getJsonData&access_code='+access_code+'&currency='+currency+'&amount='+amount,
           dataType: 'jsonp',
           jsonp: false,
           jsonpCallback: 'processData',
           success: function (data) { 
                 jsonData = data;
                 // processData method for reference
                 processData(data);
                 // get Promotion details
                 $.each(jsonData, function (index, value) {
                     if (value.Promotions != undefined && value.Promotions != null) {
                         var promotionsArray = $.parseJSON(value.Promotions);
                         $.each(promotionsArray, function () {
                             console.log(this['promoId'] + " " + this['promoCardName']);
                             var promotions = "<option value=" + this['promoId'] + ">"
							  		+ this['promoName'] + " - " + this['promoPayOptTypeDesc'] + "-" + this['promoCardName'] + " - " + currency + " " + this['discountValue'] + "  " +
							  		this['promoType'] + "</option>";
                             $("#promo_code").find("option:last").after(promotions);
                         });
                     }
                 }); 
           },
           error: function(xhr, textStatus, errorThrown) {
               alert('An error occurred! ' + ( errorThrown ? errorThrown :xhr.status ));
               //console.log("Error occured");
           }
   		});
   		
   		$(".payOption").click(function(){
   			var paymentOption="";
   			var cardArray="";
   			var payThrough,emiPlanTr;
		    var emiBanksArray,emiPlansArray;
   			
           	paymentOption = $(this).val();
           	$("#card_type").val(paymentOption.replace("OPT",""));
           	$("#card_name").children().remove(); // remove old card names from old one
            $("#card_name").append("<option value=''>Select</option>");
           	$("#emi_div").hide();
           	
           	//console.log(jsonData);
           	$.each(jsonData, function(index,value) {
           		//console.log(value);
            	  if(paymentOption !="OPTEMI"){
	            	 if(value.payOpt==paymentOption){
	            		cardArray = $.parseJSON(value[paymentOption]);
	                	$.each(cardArray, function() {
	    	            	$("#card_name").find("option:last").after("<option class='"+this['dataAcceptedAt']+" "+this['status']+"'  value='"+this['cardName']+"'>"+this['cardName']+"</option>");
	                	});
	                 }
	              }
	              
	              if(paymentOption =="OPTEMI"){
		              if(value.payOpt=="OPTEMI"){
		              	$("#emi_div").show();
		              	$("#card_type").val("CRDC");
		              	$("#data_accept").val("Y");
		              	$("#emi_plan_id").val("");
						$("#emi_tenure_id").val("");
						$("span.emi_fees").hide();
		              	$("#emi_banks").children().remove();
		              	$("#emi_banks").append("<option value=''>Select your Bank</option>");
		              	$("#emi_tbl").children().remove();
		              	
	                    emiBanksArray = $.parseJSON(value.EmiBanks);
	                    emiPlansArray = $.parseJSON(value.EmiPlans);
	                	$.each(emiBanksArray, function() {
	    	            	payThrough = "<option value='"+this['planId']+"' class='"+this['BINs']+"' id='"+this['subventionPaidBy']+"' label='"+this['midProcesses']+"'>"+this['gtwName']+"</option>";
	    	            	$("#emi_banks").append(payThrough);
	                	});
	                	
	                	emiPlanTr="<tr><td>&nbsp;</td><td>EMI Plan</td><td>Monthly Installments</td><td>Total Cost</td></tr>";
							
	                	$.each(emiPlansArray, function() {
		                	emiPlanTr=emiPlanTr+
							"<tr class='tenuremonth "+this['planId']+"' id='"+this['tenureId']+"' style='display: none'>"+
								"<td> <input type='radio' name='emi_plan_radio' id='"+this['tenureMonths']+"' value='"+this['tenureId']+"' class='emi_plan_radio' > </td>"+
								"<td>"+this['tenureMonths']+ "EMIs. <label class='merchant_subvention'>@ <label class='emi_processing_fee_percent'>"+this['processingFeePercent']+"</label>&nbsp;%p.a</label>"+
								"</td>"+
								"<td>"+this['currency']+"&nbsp;"+this['emiAmount'].toFixed(2)+
								"</td>"+
								"<td><label class='currency'>"+this['currency']+"</label>&nbsp;"+ 
									"<label class='emiTotal'>"+this['total'].toFixed(2)+"</label>"+
									"<label class='emi_processing_fee_plan' style='display: none;'>"+this['emiProcessingFee'].toFixed(2)+"</label>"+
									"<label class='planId' style='display: none;'>"+this['planId']+"</label>"+
								"</td>"+
							"</tr>";
						});
						$("#emi_tbl").append(emiPlanTr);
	                 } 
                  }
           	});
           	
         });
   
	  
      $("#card_name").click(function(){
      	if($(this).find(":selected").hasClass("DOWN")){
      		alert("Selected option is currently unavailable. Select another payment option or try again later.");
      	}
      	if($(this).find(":selected").hasClass("CCAvenue")){
      		$("#data_accept").val("Y");
      	}else{
      		$("#data_accept").val("N");
      	}
      });
          
     // Emi section start      
          $("#emi_banks").live("change",function(){
	           if($(this).val() != ""){
	           		var cardsProcess="";
	           		$("#emi_tbl").show();
	           		cardsProcess=$("#emi_banks option:selected").attr("label").split("|");
					$("#card_name").children().remove();
					$("#card_name").append("<option value=''>Select</option>");
				    $.each(cardsProcess,function(index,card){
				        $("#card_name").find("option:last").after("<option class=CCAvenue value='"+card+"' >"+card+"</option>");
				    });
					$("#emi_plan_id").val($(this).val());
					$(".tenuremonth").hide();
					$("."+$(this).val()+"").show();
					$("."+$(this).val()).find("input:radio[name=emi_plan_radio]").first().attr("checked",true);
					$("."+$(this).val()).find("input:radio[name=emi_plan_radio]").first().trigger("click");
					 
					 if($("#emi_banks option:selected").attr("id")=="Customer"){
						$("#processing_fee").show();
					 }else{
						$("#processing_fee").hide();
					 }
					 
				}else{
					$("#emi_plan_id").val("");
					$("#emi_tenure_id").val("");
					$("#emi_tbl").hide();
				}
				
				
				
				$("label.emi_processing_fee_percent").each(function(){
					if($(this).text()==0){
						$(this).closest("tr").find("label.merchant_subvention").hide();
					}
				});
				
		 });
		 
		 $(".emi_plan_radio").live("click",function(){
			var processingFee="";
			$("#emi_tenure_id").val($(this).val());
			processingFee=
					"<span class='emi_fees' >"+
			 			"Processing Fee:"+$(this).closest('tr').find('label.currency').text()+"&nbsp;"+
			 			"<label id='processingFee'>"+$(this).closest('tr').find('label.emi_processing_fee_plan').text()+
			 			"</label><br/>"+
                			"Processing fee will be charged only on the first EMI."+
                	"</span>";
             $("#processing_fee").children().remove();
             $("#processing_fee").append(processingFee);
             
             // If processing fee is 0 then hiding emi_fee span
             if($("#processingFee").text()==0){
             	$(".emi_fees").hide();
             }
			  
		});
		
		
		$("#card_number").focusout(function(){
			/*
			 emi_banks(select box) option class attribute contains two fields either allcards or bin no supported by that emi 
			*/ 
			if($('input[name="payment_option"]:checked').val() == "OPTEMI"){
				if(!($("#emi_banks option:selected").hasClass("allcards"))){
				  if(!$('#emi_banks option:selected').hasClass($(this).val().substring(0,6))){
					  alert("Selected EMI is not available for entered credit card.");
				  }
			   }
		   }
		  
		});
			
			
	// Emi section end 		
   
   
   // below code for reference 
 
   function processData(data){
         var paymentOptions = [];
         var creditCards = [];
         var debitCards = [];
         var netBanks = [];
         var cashCards = [];
         var mobilePayments=[];
         $.each(data, function() {
         	 // this.error shows if any error   	
             console.log(this.error);
              paymentOptions.push(this.payOpt);
              switch(this.payOpt){
                case 'OPTCRDC':
                	var jsonData = this.OPTCRDC;
                 	var obj = $.parseJSON(jsonData);
                 	$.each(obj, function() {
                 		creditCards.push(this['cardName']);
                	});
                break;
                case 'OPTDBCRD':
                	var jsonData = this.OPTDBCRD;
                 	var obj = $.parseJSON(jsonData);
                 	$.each(obj, function() {
                 		debitCards.push(this['cardName']);
                	});
                break;
              	case 'OPTNBK':
	              	var jsonData = this.OPTNBK;
	                var obj = $.parseJSON(jsonData);
	                $.each(obj, function() {
	                 	netBanks.push(this['cardName']);
	                });
                break;
                
                case 'OPTCASHC':
                  var jsonData = this.OPTCASHC;
                  var obj =  $.parseJSON(jsonData);
                  $.each(obj, function() {
                  	cashCards.push(this['cardName']);
                  });
                 break;
                   
                  case 'OPTMOBP':
                  var jsonData = this.OPTMOBP;
                  var obj =  $.parseJSON(jsonData);
                  $.each(obj, function() {
                  	mobilePayments.push(this['cardName']);
                  });
              }
              
            });
           
           //console.log(creditCards);
          // console.log(debitCards);
          // console.log(netBanks);
          // console.log(cashCards);
         //  console.log(mobilePayments);
            
      }
  });
</script>
</html>
