<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- Code For Floating Points (Current Plan and Top Up) -->
<ul class="fixedBlock">
  <li>
    <a class="currentPlanBlock" href="#currentPlan" data-toggle="modal">
      <div class="textCSS">
        Current Plans
      </div>
    </a>
  </li>
  <li>
    <a class="topUpBlock" href="#topUp" data-toggle="modal">
      <div class="textCSS">
        Top Up
      </div>
    </a>
  </li>
</ul>
<!-- End Code For Floating Points (Current Plan and Top Up) -->

<!-- Modal Code for above floating point -->
<div id="currentPlan" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Current Plan</h4>
            </div>

            <div class="modal-body" style="margin-bottom:60%">

              <div class="col-md-3">
              </div>
              <div class="col-md-6 col-sm-6 v_b ">
                <div class="content-form-page" >
                  <form class="form-horizontal form-without-legend" role="form">
                    <div class="form-group"> <label for="email" class="col-lg-12 control-label"> <span class="require"></span></label>
                      <div class="col-lg-12">
                       <p style="font-size:15px; color:gray; line-height:2">Your Current Plan</p>
                        <p style="font-size:10px; color:gray; line-height:1.5">Plan Name</p>
                        <p style="font-size:10px; color:gray; line-height:1.5">Basic - INR 849 Per Month </p>
                        <div style=" padding-top:10%">
                          <p style="font-size:15px; color:gray; line-height:2">Plan Content</p>
                          <p style="font-size:10px; color:gray; line-height:1.5">1. 40GB Data <br/>2. 512Kbps Post FUP Speed</p>  
                        </div> 
                        <label for="email" class="col-lg-12 control-label"><a style="color:#F2F2F2F2; font-size:11px" href="#"><button type="submit" style=" color:#F2F2F2F2; font-size:14px; font-family:Roboto" class="btn btn-primary ">ok</button></a>
                        </label>
                      </div>
                    </div>
                  </form>
                </div>
              </div><!-- Col-md-12 -->
              <div class="col-md-3">
              </div>

            </div><!-- Modal Body -->
        </div>
    </div>
</div>


<div id="topUp" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Top Up</h4>
            </div>
            
            <div class="modal-body" style="margin-bottom:50%">
  
              <div class="col-md-2">
              </div>
              <div class="col-md-3">
                 <div class="circle1">
                    <p class="forTopUpText" style="font-size:16px;">5GB</p><br>
                    <p class="forTopUpText" style="font-size:12px;">₹ 120/</p>
                    <p class="forTopUpText" style="font-size:10px;">512 Kbps</p>
                    <p class="forTopUpText" style="font-size:10px;">post FUP</p>
                 </div>   
              </div>    
              <div class="col-md-3">
                 <div class="circle2">
                    <p class="forTopUpText" style="font-size:16px;">10GB</p><br>
                    <p class="forTopUpText" style="font-size:12px;">₹ 220/</p>
                    <p class="forTopUpText" style="font-size:10px;">512 Kbps</p>
                    <p class="forTopUpText" style="font-size:10px;">post FUP</p>
                 </div>   
              </div>
              <div class="col-md-2">
              </div>

            </div> <!-- Modal body close-->
            
        </div>
    </div>
</div>

<!-- End of Modal Code for above floating point -->