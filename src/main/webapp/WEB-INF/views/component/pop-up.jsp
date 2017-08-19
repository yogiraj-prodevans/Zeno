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
<div id="currentPlan" class="modal fade" style="margin-top:10%;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color:#FFF">&times;</button>
                <h4 class="modal-title">Current Plan</h4>
            </div>

            <div class="modal-body" style="margin-bottom:20%">
              <div class="col-md-12 col-sm-12 v_b" style="margin-top:10%">

                <div class="col-lg-6 col-md-6">
                  <p style="font-size:15px; color:#010745; line-height:2">Your Current Plan</p>
                  <p style="font-size:10px; color:gray; line-height:1.5">Plan Name : ${SubscriptionDetails.getRatePlan() } </p>
                  <p style="font-size:10px; color:gray; line-height:1.5">Basic - INR 849 Per Month </p>
                </div>
                <div class="col-lg-6 col-md-6 ">  
                    <p style="font-size:15px; color:#010745; line-height:2">Plan Content</p>
                    <p style="font-size:10px; color:gray; line-height:1.5">${SubscriptionDetails.getFUPLimit() }GB Data</p>
                    <p style="font-size:10px; color:gray; line-height:1.5">512Kbps Post FUP Speed</p>
                </div> 

              </div><!-- Col-md-12 -->
            </div><!-- Modal Body -->
        </div>
    </div>
</div>



<div id="topUp" class="modal fade" style="margin-top:10%;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" style="color:#FFF">&times;</button>
                <h4 class="modal-title">Top Up</h4>
            </div>
            
            <div class="modal-body" >
  
              <table class="row col-md-12">
                <tr>
                  <td>
                    <div class="circleBlock1">
                      <a href="#">
                        <div class="circle1">
                          <br><p style="font-size:16px;">5GB</p><br>
                          <p style="font-size:12px;">INR 120/</p>
                          <p style="font-size:10px;">512 Kbps</p>
                          <p style="font-size:10px;">post FUP</p>
                        </div>   
                      </a>
                    </div>  
                  </td>
                  <td>
                    <div class="circleBlock2">
                      <a href="#">
                        <div class="circle2">
                          <br><p style="font-size:16px;">10GB</p><br>
                          <p style="font-size:12px;">INR 220/</p>
                          <p style="font-size:10px;">512 Kbps</p>
                          <p style="font-size:10px;">post FUP</p>
                        </div>
                      </a>   
                    </div>
                  </td>
                </tr>
              </table>

            </div> <!-- Modal body close-->
            
        </div>
    </div>
</div>

<!-- End of Modal Code for above floating point -->
