<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

    <script type="text/javascript">
    
    	/*
	    function addVoteUpClass() 
	    {
	    	jQuery(".sampleClass").css({"width":"80%", "height":"89%", "top":"40px", "color":"red"});
	    		   
	    }
    	*/
    	/*
	    var succeed = false;

	    $.ajax({
	    async: false,
	    url: "getStatus",
	    success: function() {
	         succeed = true;
	    }});
	    
	    alert(succeed);
	    */
	    
	   
	    
	    $(document).ready(function(){
	    	
		    	var	jsonData = $.ajax({
		            url: "getStatus",
		            dataType: "text",
		            async: false		            
		        });		
		    
		    	var response = jsonData["responseText"];
		    	
		    	if(response === "true")
	    		{
		    		document.getElementById("theImage").style.visibility = "visible";
		    		document.getElementById("floating-button3").style.visibility = "visible";
		    		jQuery(".sampleClass").css({"color":"red"});
	    		}
		    	else
	    		{
		    		document.getElementById("theImage").style.visibility = "hidden";
		    		document.getElementById("floating-button3").style.visibility = "hidden";
	    		}

	    	});
    	
	    
	    
    </script>    
    
    