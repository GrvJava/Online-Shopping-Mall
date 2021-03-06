<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="condb2.*" %>
    <%@ page import="java.sql.*"%>
     <%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>DASHGUM - Bootstrap Admin Template</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-datepicker/css/datepicker.css" />
    <link rel="stylesheet" type="text/css" href="assets/js/bootstrap-daterangepicker/daterangepicker.css" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="index.html" class="logo"><b>Welcome Admin</b></a>
            <!--logo end-->
           
            <div class="top-menu">
            	<ul class="nav pull-right top-menu">
                    <li><a class="logout" href="index.html">Logout</a></li>
            	</ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-desktop"></i>
                          <span>Welcome</span>
                      </a>
                      <ul class="sub">
                           <li class="active"><a  href="aprofile.jsp">Dashboard</a></li>
                     
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-th"></i>
                          <span>Sales</span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="sales.jsp">Products Sold</a></li>
                       
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Add Product</span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="addapple.jsp">Add Apple Product</a></li>
                          <li class="active"><a  href="addsony.jsp">Add Sony Product</a></li>
                          <li class="active"><a  href="addhtc.jsp">Add HTC Product</a></li>
                          <li class="active"><a  href="addsamsung.jsp">Add Samsung Product</a></li>
                          <li class="active"><a  href="addnokia.jsp">Add Nokia Product</a></li>
                      </ul>
                  </li>
                    <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Update Product</span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="updateapple.jsp">Update Apple Product</a></li>
                          <li class="active"><a  href="updatesony.jsp">Update Sony Product</a></li>
                          <li class="active"><a  href="updatehtc.jsp">Update HTC Product</a></li>
                          <li class="active"><a  href="updatesamsung.jsp">Update Samsung Product</a></li>
                          <li class="active"><a  href="updatenokia.jsp">Update Nokia Product</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-tasks"></i>
                          <span>Delete Product</span>
                      </a>
                      <ul class="sub">
                          <li class="active"><a  href="deleteapple.jsp">Delete Apple Product</a></li>
                          <li class="active"><a  href="deletesony.jsp">Delete Sony Product</a></li>
                          <li class="active"><a  href="deletehtc.jsp">Delete HTC Product</a></li>
                          <li class="active"><a  href="deletesamsung.jsp">Delete Samsung Product</a></li>
                          <li class="active"><a  href="deletenokia.jsp">Delete Nokia Product</a></li>
                      </ul>
                  </li>
				 
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      
    
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper">
           <%
		String sql1="select * from sales";
		ResultSet rs1=DbConnection.FechApple(sql1);
		%>
		  		<div class="row mt">
			  		<div class="col-lg-12">
                      <div class="content-panel">
                      <h4><i class="fa fa-angle-right"></i>Products Purchased</h4>
                          <section id="unseen">
                            <table class="table table-bordered table-striped table-condensed">
                              <thead>
                              
                             <tr>
                                  <th>Date</th>
                              	  <th>Booking Id</th>
                                  <th>Cus-EMAIL</th>
                                  <th>NAME</th>
                                  <th>Products</th>
                                  <th>PICS</th>
                                  <th>Total</th>
                              </tr>
                              </thead>
                              <tbody>
                             <%
                             
                             while(rs1.next())
                             {
                            	 
                                out.println("<tr>");
                                out.println("<td>"+rs1.getString(7)+"</td>");
                                out.println("<td>"+rs1.getString(1)+"</td>");
                                out.println("<td>"+rs1.getString(2)+"</td>");
                                out.println("<td>"+rs1.getString(3)+"</td>");
                                out.println("<td>"+rs1.getString(4)+"</td>");
                                StringTokenizer st=new StringTokenizer(rs1.getString(5),"#");
                                out.println("<td>");
                                while(st.hasMoreTokens())
                                {
                                	String mypath="pdimg/"+st.nextToken();
                                	out.println("<img src='"+mypath+"' height='50' width='50'/>");
                                	System.out.println("++++++++++"+mypath);
                                }
                                out.println("</td>");
                                out.println("<td>"+rs1.getString(6)+"</td>");
                                
                                
                             }
                             out.println("</tr>");
                             %>
                              </tbody>
                          </table>
                         
		  	
		  	
                          </section>
                      </div><!-- /content-panel -->
                  </div><!-- /col-lg-12 -->
              </div><!-- /row -->

		</section><! --/wrapper -->
      </section>
          

      <!--footer start-->
      
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>

	<!--custom switch-->
	<script src="assets/js/bootstrap-switch.js"></script>
	
	<!--custom tagsinput-->
	<script src="assets/js/jquery.tagsinput.js"></script>
	
	<!--custom checkbox & radio-->
	
	<script type="text/javascript" src="assets/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/date.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap-daterangepicker/daterangepicker.js"></script>
	
	<script type="text/javascript" src="assets/js/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
	
	
	<script src="assets/js/form-component.js"></script>    
    
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  </body>
</html>