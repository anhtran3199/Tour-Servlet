<%--
  Created by IntelliJ IDEA.
  User: Anh
  Date: 11/11/2021
  Time: 7:04 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Mua vé</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
    <link href="css/styles.css" rel="stylesheet" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    <!-- Navbar Brand-->
    <a class="navbar-brand ps-3" href="index.html">Bán vé Tour du lịch</a>
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
                    <a class="nav-link" href="index.html">
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
        <h2 class="title m-auto mt-2 mb-5" >Xác nhận in vé</h2>
        <div class="container">
            <form action="" class="col-sm-auto justify-content-sm-center">
                <div class="form-group">
                    <label for="username"><strong>Tên tour</strong></label>
                    <input type="text" class="form-control" id="" placeholder="">
                </div>
                <div class="form-group">
                    <label for="password"><strong>Nơi đi</strong></label>
                    <input type="text" class="form-control" id="" placeholder="">
                </div>
                <div class="form-group">
                    <label for="password"><strong>Nơi đến</strong></label>
                    <input type="text" class="form-control" id="" placeholder="">
                </div>
                <div class="form-group">
                    <label><strong>Dịch vụ</strong></label>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input" value="">Ăn uống
                        </label>
                    </div>
                    <div class="form-check">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input" value="">Khách sạn cao cấp
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label><strong>Phương tiện</strong></label>
                    <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio1" name="customRadio" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio1">Xe khách</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio2" name="customRadio" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio2">Xe giường nằm</label>
                    </div>
                    <div class="custom-control custom-radio">
                        <input type="radio" id="customRadio3" name="customRadio" class="custom-control-input">
                        <label class="custom-control-label" for="customRadio3">Máy bay/Tàu hỏa</label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="password"><strong>Ngày đi</strong></label>
                    <input type="date" class="form-control" id="" placeholder="">
                </div>
                <div class="form-group">
                    <label for="username"><strong>Tên khách hàng</strong></label>
                    <input type="text" class="form-control" id="" placeholder="">
                </div>
                <div class="form-group">
                    <label for="username"><strong>Số lượng vé</strong></label>
                    <input type="number" class="form-control" id="" placeholder="">
                </div>
                <div class="form-group">
                    <label for="username"><strong>Giá vé (VNĐ)</strong></label>
                    <input type="text" class="form-control" id="" placeholder="">
                </div>
                <button type="submit" class="btn btn-primary float-right">Quay lại</button>
                <button type="submit" class="btn btn-danger float-right  mr-1">OK</button>
            </form>
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

