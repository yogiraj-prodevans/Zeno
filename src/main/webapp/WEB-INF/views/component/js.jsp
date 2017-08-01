<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!--[if lt IE 9]>
    <script src="plugins/respond.min.js"></script>
    <![endif]-->
  <script src="plugins/jquery.min.js" type="text/javascript"></script>
  <script src="plugins/jquery-migrate.min.js" type="text/javascript"></script>
  <script src="plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="corporate/scripts/back-to-top.js" type="text/javascript"></script>
  <!-- END CORE PLUGINS -->
  <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
  <script src="plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script>
  <!-- pop up -->
  <!-- slider for products -->
  <script src="corporate/scripts/layout.js" type="text/javascript"></script>
  <script type="text/javascript">
    jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initFixHeaderWithPreHeader(); /* Switch On Header Fixing (only if you have pre-header) */
            Layout.initNavScrolling();
        });
  </script>
  <!-- END PAGE LEVEL JAVASCRIPTS -->