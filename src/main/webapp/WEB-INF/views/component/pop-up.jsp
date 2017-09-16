<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<a href="${pageContext.request.contextPath }/topup">
	<div id="container-floating"> 		
    	<div id="floating-button" data-toggle="tooltip" style="right: 35px;">
        	<h6 class="fv" style="padding-top: 28px;">TOP</h6>
        	<h6 class="fv">UP</h6>  
        </div>
    </div>
</a>

<a href="${pageContext.request.contextPath }/YourPlan">
	<div id="container-floating">
    	<div id="floating-button1" data-toggle="tooltip" style="right: 35px;">
        	<h6 class="fv" style="padding-top: 28px;">YOUR</h6>
        	<h6 class="fv">PLAN</h6>  
        </div>
    </div>
</a>



<!-- Code For Floating Points (Current Plan and Top Up) -->
<!-- Code For Floating Points (Current Plan and Top Up) --
<ul class="fixedBlock">
	<li><a class="topUpBlock" href="#topUP" data-target="#topUP"
		data-toggle="modal">
			<div class="textCSS">TOP UP</div>
	</a></li>
	<li><a class="currentPlanBlock" href="#currentPlan"
		data-target="#currentPlan" data-toggle="modal">
			<div class="textCSS">YOUR PLAN</div>
	</a></li>
</ul>
<!-- End Code For Floating Points (Current Plan and Top Up) -->


<!-- Modal -->
<!-- 
<div class="modal fade" id="topUP" role="dialog" >
	<div class="modal-dialog  modal-sm">

		
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					<strong>TOP UP</strong>
				</h4>
			</div>
			<div class="modal-body">


				<div class="row" style="text-align: center;">
					<div style="font-size: 18px;">
						Out of data?
					</div>
					<div style="font-size: 18px;">
						Get more One8 on demand
					</div>
					<div style="font-size: 18px;">
						Pick an option, pay
					</div>
					<div style="font-size: 18px;">
						and browse non stop.
					</div>
				</div>

				<div class="col-md-12" style="margin-top:20px">

					<div class="   col-xs-6" >
						<a href="toup50GB?planName=Add on 5GB">
							<div class="circle1" style="height: 110px; width:110px;margin:auto;">
								<div style="font-size: 28px; padding-top: 20%;">
									5GB
								</div>
								<br> <br>
								<p style="font-size: 12px;">&#8377; 120/</p>
								<p style="font-size: 10px;">512 Kbps</p>
								<p style="font-size: 10px;">POST FUP</p>
							</div>
						</a>
					</div>

					<div class=" col-xs-6" >
						<a href="toup50GB?planName=Add on 10GB">
							<div class="circle2" style="height: 110px; width:110px;margin:auto;">
								<div style="font-size: 28px; padding-top: 20%;">
									10GB
								</div>
								<br> <br>
								<p style="font-size: 12px;">&#8377; 220/</p>
								<p style="font-size: 10px;">512 Kbps</p>
								<p style="font-size: 10px;">POST FUP</p>
							</div>
						</a>
					</div>

				</div>
			</div>
		</div>
	</div>
</div>




<div class="modal fade" id="currentPlan" role="dialog">
	<div class="modal-dialog"> 

		
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">
					<strong>YOUR PLAN</strong>
				</h4>
			</div>
			<div class="modal-body">
				<div class="col-md-12">
					<div class="row" style="margin-left: 1%; margin-top: 3%;">
						<h4>YOUR CURRENT PLAN</h4>
						<h3>${plan }</h3>
						<h3>Basic- &#8377; 849 per month</h3>
					</div>
					<hr>
					<div class="row" style="margin-left: 1%;">
						<h4>PLAN CONTENT</h4>
						<h3>${FUP} GB Data</h3>
						<h3>512Kbps Post FUP speed</h3>
					</div>
				</div>

			</div>
		</div>

	</div>
</div>


<!-- End of Modal Code for above floating point -->
