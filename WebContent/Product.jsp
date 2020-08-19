<%@page import="models.Product"%>
<%@page import="java.util.List"%>
<%@page import="models.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@include file="Header.jsp" %>

  
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
   <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">

<%@ include file="Menu.jsp"%>

        <!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->
            
            <%@ include file="Header-area.jsp"%>
<div class="main-content-inner">
                <div class="row">
                    <!-- table primary start -->
                    <div class="col-lg-6 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="header-title">Thead Primary</h4>
                                
                                <div class="single-table">
                                    <div class="table-responsive">
                                    <% List<Product> list = ProductDao.getProducts();%>
                                        <table class="table text-center" id="table">
                                        
                                           <input type="text" name="" style="margin-bottom: 30px">
                                            <button>ADD</button>
                                            
                                            <thead class="text-uppercase bg-primary">
                                                <tr class="text-white">
                                                    <th scope="col">ID</th>
                                                    <th scope="col">Model</th>
                                                    <th scope="col">Brand</th>
                                                    <th scope="col">Price</th>
                                                    <th scope="col">Category</th>
                                                    <th scope="col">Action</th>
                                                </tr>
                                            </thead>
                                            <% for(Product prd: list){ %>
                                            <tbody>
                                                <tr>
                                                    <td><%= prd.getId() %></td>
                                                    <td><%= prd.getModel() %></td>
                                                    <td><%= prd.getBrand()%></td>
                                                    <td><%= prd.getPrice()%></td>
                                                    <td><%= prd.getCategory()%></td>
                                                    <td><i class="ti-trash"></i> <i class="ti-pencil"></i></td>
                                                </tr>
                                                <% } %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                   
                    
                    
                    
                    
                      <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
                      <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>

    <!-- start chart js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
    <!-- start highcharts js -->
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <!-- start zingchart js -->
    <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
    <script>
    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
    </script>
    <!-- all line chart activation -->
    <script src="assets/js/line-chart.js"></script>
    <!-- all pie chart -->
    <script src="assets/js/pie-chart.js"></script>
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>

</body>
</html>