<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="boat/favicon.ico" type="image/x-ico"/>

    <asset:stylesheet src="application.css"/>

    <g:layoutHead/>
</head>

<body>

<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
            <div class="navbar-brand-wrapper d-flex justify-content-center">
                <div class="navbar-brand-inner-wrapper d-flex justify-content-between align-items-center w-100">
                    <a class="navbar-brand brand-logo" href="index.html"><asset:image src="imar.png" alt="logo"/></a>
                    <a class="navbar-brand brand-logo-mini" href="index.html"><asset:image src="imar.png" alt="logo"/></a>
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="mdi mdi-sort-variant"></span>
                    </button>
                </div>
            </div>
            <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                <ul class="navbar-nav mr-lg-4 w-100">
                    <li class="nav-item nav-search d-none d-lg-block w-100">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="search">
                                    <i class="mdi mdi-magnify"></i>
                                </span>
                            </div>
                            <input type="text" class="form-control" placeholder="Search now" aria-label="search" aria-describedby="search">
                        </div>
                    </li>
                </ul>
                <ul class="navbar-nav navbar-nav-right">
                    <li class="nav-item nav-profile dropdown">
                        <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                            <i class="mdi mdi-account menu-icon"></i>
                            <span class="nav-profile-name">Utilisateur</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                            <a class="dropdown-item">
                                <i class="mdi mdi-settings text-primary"></i>
                                Settings
                            </a>
                            <a class="dropdown-item">
                                <i class="mdi mdi-logout text-primary"></i>
                                Logout
                            </a>
                        </div>
                    </li>
                </ul>
                <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                    <span class="mdi mdi-menu"></span>
                </button>
            </div>
        </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
    <!-- partial:partials/_sidebar.html -->
    <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#supplier-actions" aria-expanded="false" aria-controls="supplier-actions">
                        <i class="mdi mdi-truck  menu-icon"></i>
                        <span class="menu-title">Supplier</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="supplier-actions">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Register new supplier </a></li>
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/login-2.html"> Update supplier information </a></li>
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> Search supplier information </a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#order-actions" aria-expanded="false" aria-controls="order-actions">
                        <i class="mdi mdi-package-variant-closed menu-icon"></i>
                        <span class="menu-title">Orders</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="order-actions">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Register new Order </a></li>
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/login-2.html"> Update order information </a></li>
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> Search order information </a></li>
                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#client-actions" aria-expanded="false" aria-controls="client-actions">
                        <i class="mdi mdi-account menu-icon"></i>
                        <span class="menu-title">Clients</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="client-actions">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Register new client </a></li>
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/login-2.html"> Update client information </a></li>
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> Search client information </a></li>
                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#certification-actions" aria-expanded="false" aria-controls="client-actions">
                        <i class="mdi mdi-account menu-icon"></i>
                        <span class="menu-title">Certification</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="certification-actions">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Register a new Certification </a></li>
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/login-2.html"> Update a certification's information </a></li>
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> Search client information </a></li>
                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#product-actions" aria-expanded="false" aria-controls="client-actions">
                        <i class="mdi mdi-account menu-icon"></i>
                        <span class="menu-title">Product</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="product-actions">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Register new product </a></li>
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/login-2.html"> Update product's information </a></li>
                            <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> Search product information </a></li>
                        </ul>
                    </div>
                </li>

            </ul>
        </nav>
    <!-- partial -->
    <g:layoutBody/>
    </div>
    <!-- page-body-wrapper ends -->
</div>
<!-- container-scroller -->
<asset:javascript src="application.js"/>

</body>
</html>
