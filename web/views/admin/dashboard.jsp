<%-- 
    Document   : dashboard
    Created on : Mar 10, 2024, 1:51:06 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>SB Admin - Dashboard</title>

        <!-- Custom fonts for this template-->
        <link href="${pageContext.request.contextPath}/vendor-admin/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

        <!-- Page level plugin CSS-->
        <link href="${pageContext.request.contextPath}/vendor-admin/datatables/dataTables.bootstrap4.css" rel="stylesheet">

        <!-- Custom styles for this template-->
        <link href="${pageContext.request.contextPath}/css/sb-admin.css" rel="stylesheet">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/colReorder-bootstrap4.css">
        <style>
            .error{
                color:red;
            }
        </style>


    </head>

    <body id="page-top">
        <jsp:include page="../common/admin/header-admin.jsp"></jsp:include>

            <div id="wrapper">

                <!-- Sidebar -->
            <jsp:include page="../common/admin/sideBar.jsp"></jsp:include>

                <div id="content-wrapper">

                    <div class="container-fluid">

                        <!-- Breadcrumbs-->
                    <jsp:include page="../common/admin/breadcrumbs.jsp"></jsp:include>

                        <!-- DataTables Example -->
                        <div class="card mb-3">
                            <div class="card-header">
                                <i class="fas fa-table"></i>
                                Data Table Fruit Products
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th name="id">Id</th>
                                                <th width="10%">Name</th>
                                                <th>Image</th>
                                                <th>Quantity</th>
                                                <th>Price</th>
                                                <th>Category</th>
                                                <th>Description</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${listProduct}" var="p">
                                            <tr>
                                                <td name="id">${p.id}</td>
                                                <td name="name">${p.name}</td>
                                                <td name="image">
                                                    <img src="${p.image}" width="100" height="100"/>
                                                </td>
                                                <td name="quantity">${p.quantity}</td>
                                                <td name="price">${p.price}</td>
                                                <td name="category">${p.category.name}</td>
                                                <td name="description">${p.description}</td>
                                                <td>
                                                    <button type="button" class="btn btn-outline-success"
                                                            data-toggle="modal" data-target="#editModal"
                                                            onclick="editProduct(this)"> 
                                                        Edit 
                                                    </button>
                                                    <button type="button" class="btn btn-outline-danger"
                                                            data-toggle="modal" data-target="#deleteModal"
                                                            onclick="deleteProduct(${p.id})">
                                                        Delete
                                                    </button>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                    </div>

                </div>
                <!-- /.container-fluid -->

                <jsp:include page="../common/admin/footer-admin.jsp"></jsp:include>
                
                </div>
                <!-- /.content-wrapper -->

            </div>
            <!-- /#wrapper -->

            <!-- Scroll to Top Button-->
            <a class="scroll-to-top rounded" href="${pageContext.request.contextPath}/#page-top">
            <i class="fas fa-angle-up"></i>
        </a>


        <jsp:include page="addProduct.jsp"></jsp:include>
        <jsp:include page="deleteProduct.jsp"></jsp:include>
        <jsp:include page="editProduct.jsp"></jsp:include>

            <!-- Bootstrap core JavaScript-->
        <script src="${pageContext.request.contextPath}/vendor-admin/jquery/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/vendor-admin/bootstrap/js/bootstrap.bundle.min.js"></script>

        <!-- Core plugin JavaScript-->
        <script src="${pageContext.request.contextPath}/vendor-admin/jquery-easing/jquery.easing.min.js"></script>

        <!-- Page level plugin JavaScript-->
        <script src="${pageContext.request.contextPath}/vendor-admin/chart.js/Chart.min.js"></script>
        <script src="${pageContext.request.contextPath}/vendor-admin/datatables/jquery.dataTables.js"></script>
        <script src="${pageContext.request.contextPath}/vendor-admin/datatables/dataTables.bootstrap4.js"></script>

        <!-- Custom scripts for all pages-->
        <script src="${pageContext.request.contextPath}/js/sb-admin.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/colReorder-bootstrap4-min.js"></script>
        <script src="${pageContext.request.contextPath}/js/colReorder-dataTables-min.js"></script>

        <!-- Demo scripts for this page-->
        <script src="${pageContext.request.contextPath}/js/demo/datatables-demo.js"></script>
        <script src="${pageContext.request.contextPath}/js/demo/chart-area-demo.js"></script>
        <script src="${pageContext.request.contextPath}/js/colReorder-dataTables-min.js"></script>
        <script src="${pageContext.request.contextPath}/js/colReorder-bootstrap4-min.js"></script>


    </body>

</html>
