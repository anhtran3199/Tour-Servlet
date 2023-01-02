<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Trang chủ</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="">Bán vé Tour du lịch</a>
    <!-- Sidebar Toggle-->
    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
    <!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
        <div class="input-group">
            <input class="form-control" type="text" placeholder="Nhập tên tour cần tìm ..." aria-describedby="btnNavbarSearch" />
            <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
        </div>
    </form>
    <!-- Navbar-->
    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#!">Logout</a></li>
            </ul>
        </li>
    </ul>
</nav>
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
            <div class="sb-sidenav-menu">
                <div class="nav">
                    <a class="nav-link" href="">
                        <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                        Trang chủ
                    </a>
                    <div class="sb-sidenav-menu-heading">Chức năng</div>
                    <a class="nav-link collapsed" href="#" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                        <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                        Đặt vé cho khách hàng
                    </a>
        </nav>
    </div>
    <div id="layoutSidenav_content">
        <!-- Nội dung trang web -->
        <h2 class="title m-auto mt-2 mb-5" >Danh sách Tour du lịch</h2>
        <div class="container-fluid">
            <table class="table m-2 mt-1 table-striped">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Tên Tour</th>
                    <th>Ngày xuất phát</th>
                    <th>Ngày về</th>
                    <th>Mô Tả</th>
                    <th>Số lượng còn lại</th>
                    <th>Giá tiền (VNĐ)</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                    <c:forEach var = "tour" items = "${listTours}">
                        <tr>
                            <td><c:out value="${tour.id}"/></td>
                            <td><c:out value="${tour.name}"/></td>
                            <td><c:out value="${tour.startDate}"/></td>
                            <td><c:out value="${tour.endDate}"/></td>
                            <td><c:out value="${tour.description}"/></td>
                            <td><c:out value="${tour.quantity}"/></td>
                            <td><c:out value="${tour.price}"/></td>
                            <td class="align-middle">
                                <a class="btn btn-info" type="submit" th:href="">Xem chi tiết</a>
                                <a class="btn btn-primary" type="reset" th:href="">Đặt vé</a>
                            </td>
                        </tr>
                    </c:forEach>
<%--                <block>--%>
<%--                    <tr>--%>
<%--                        <td>1</td>--%>
<%--                        <td>Du lịch Nha Trang</td>--%>
<%--                        <td>Khánh Hòa</td>--%>
<%--                        <td>20/10/2021</td>--%>
<%--                        <td>7 ngày</td>--%>
<%--                        <td>Máy bay</td>--%>
<%--                        <td>20</td>--%>
<%--                        <td>20000000</td>--%>
<%--                        <td class="align-middle">--%>
<%--                            <a class="btn btn-info" type="submit" th:href="">Xem chi tiết</a>--%>
<%--                            <a class="btn btn-primary" type="reset" th:href="">Đặt vé</a>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                </block>--%>
<%--                <block>--%>
<%--                    <tr>--%>
<%--                        <td>2</td>--%>
<%--                        <td>Du lịch Vịnh Hạ Long</td>--%>
<%--                        <td>Quảng Ninh</td>--%>
<%--                        <td>21/10/2021</td>--%>
<%--                        <td>3 ngày 2 đêm</td>--%>
<%--                        <td>Xe khách</td>--%>
<%--                        <td>30</td>--%>
<%--                        <td>5000000</td>--%>
<%--                        <td class="align-middle">--%>
<%--                            <a class="btn btn-info" type="submit" th:href="">Xem chi tiết</a>--%>
<%--                            <a class="btn btn-primary" type="reset" th:href="">Đặt vé</a>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                </block>--%>
<%--                <block>--%>
<%--                    <tr>--%>
<%--                        <td>3</td>--%>
<%--                        <td>Du lịch Làng cổ Đường Lâm</td>--%>
<%--                        <td>Hà Nội</td>--%>
<%--                        <td>21/10/2021</td>--%>
<%--                        <td>1 ngày</td>--%>
<%--                        <td>Xe khách</td>--%>
<%--                        <td>10</td>--%>
<%--                        <td>2000000</td>--%>
<%--                        <td class="align-middle">--%>
<%--                            <a class="btn btn-info" type="submit" th:href="">Xem chi tiết</a>--%>
<%--                            <a class="btn btn-primary" type="reset" th:href="">Đặt vé</a>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                </block>--%>
                </tbody>
            </table>
        </div>

        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Your Website 2021</div>
                    <div>
                        <a href="#">Privacy Policy</a>
                        &middot;
                        <a href="#">Terms &amp; Conditions</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="js/scripts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
<script src="assets/demo/chart-area-demo.js"></script>
<script src="assets/demo/chart-bar-demo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
<script src="js/datatables-simple-demo.js"></script>
</body>
</html>
