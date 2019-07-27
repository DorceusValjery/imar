<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="IMAR : CRM"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:stylesheet src="appMajestic.css"/>
    <asset:link rel="icon" href="boat/favicon.ico" type="image/x-ico"/>
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
                        <i class="mdi mdi-truck-delivery  menu-icon"></i>
                        <span class="menu-title">Supplier</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="supplier-actions">
                        <ul class="nav flex-column sub-menu">
                            <i></i>
                            <li class="nav-item "> <a class="nav-link " href="${createLink(uri: '/supplier')}"> List all suppliers </a></li>
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/supplier/create')}"> Register a new supplier </a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#purchase-actions" aria-expanded="false" aria-controls="purchase-actions">
                        <i class="mdi mdi-package-variant-closed menu-icon"></i>
                        <span class="menu-title">Purchase</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="purchase-actions">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/purchase')}"> List all purchases </a></li>
                            <li class="nav-item"> <a href="${createLink(uri: '/purchase/create')}" class="nav-link"> Register new purchase</a></li>
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
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/client')}"> List all clients </a></li>
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/client/create')}"> Register a new client </a></li>
                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#prospect-actions" aria-expanded="false" aria-controls="prospect-actions">
                        <i class="mdi mdi-thumbs-up-down menu-icon"></i>
                        <span class="menu-title">Prospect</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="prospect-actions">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/prospect')}"> List all prospect </a></li>
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/prospect/create')}"> Register a new prospect </a></li>
                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                <a class="nav-link" data-toggle="collapse" href="#certification-actions" aria-expanded="false" aria-controls="client-actions">
                    <i class="mdi mdi-checkbox-multiple-marked-outline menu-icon"></i>
                    <span class="menu-title">Certification</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="certification-actions">
                    <ul class="nav flex-column sub-menu"><li class="nav-item">
                        <li class="nav-item"><a class="nav-link" href="${createLink(uri: '/certification')}"> List all Certifications </a></li>
                        <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/certification/create')}"> Register a new Certification </a></li>
                    </ul>
                </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#specialization-actions" aria-expanded="false" aria-controls="specialization-actions">
                        <i class="mdi mdi-tag-text-outline menu-icon"></i>
                        <span class="menu-title">Specialization</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="specialization-actions">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/specialization')}"> List all specialization </a></li>
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/specialization/create')}"> Register a new specialization </a></li>
                        </ul>
                    </div>
                </li>

                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#product-actions" aria-expanded="false" aria-controls="product-actions">
                        <i class="mdi mdi-barcode-scan menu-icon"></i>
                        <span class="menu-title">Product</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="product-actions">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/product')}"> List all product </a></li>
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/product/create')}"> Register a new product </a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#review-actions" aria-expanded="false" aria-controls="review-actions">
                        <i class="mdi mdi-message-text-outline menu-icon"></i>
                        <span class="menu-title">Review</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="review-actions">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/review')}">list all reviews </a></li>
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/review/create')}"> Review a Client </a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#industry-actions" aria-expanded="false" aria-controls="industry-actions">
                        <i class="mdi mdi-factory menu-icon"></i>
                        <span class="menu-title">Industry</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="industry-actions">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/industry')}"> List all industries </a></li>
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/industry/create')}"> Register a new Industry </a></li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#port-actions" aria-expanded="false" aria-controls="port-actions">
                        <i class="mdi mdi-anchor menu-icon"></i>
                        <span class="menu-title">Port</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="port-actions">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/port')}"> List all ports </a></li>
                            <li class="nav-item"> <a class="nav-link" href="${createLink(uri: '/port/create')}"> Register a new port </a></li>
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
