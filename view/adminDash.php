<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../Assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../Assets/css/dataTables.css">
    <link rel="stylesheet" href="../Assets/css/responsive.dataTables.min.css">
    <title>Dashboard Administrador</title>
    <style>
        .admin-header{
            background-image: url("../Assets/img/Forma 1.png");
        }

        body{
            background: url("../Assets/img/background.png");
            background-size: cover;
        }

        .admin-asside{
            min-height: inherit;
            background: #013f8b;
            background-size: cover;
        }
        .area-button{
            display: inline-block;
            background: linear-gradient(180deg, rgba(0,212,255,1) 0%, rgba(151,237,255,1) 50%, rgba(255,255,255,1) 100%);
            width: 95%;
            margin: .1rem;
            border-radius: 5px;
            border-style: solid;
            border-width: 2px;
            border-color: #0069D0;
            color: blue;
            text-align: left;
            padding: 0 .2rem 0 .2rem;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 admin-header">
                <!-- HEADER ADMIN -->
                <?php require "adminHeader.php"; ?>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 admin-asside">
                <?php require "adminAside.php"; ?>
            </div>
            <div class="col-lg-9">
                <?php require "adminDashboard.php"?>
            </div>
        </div>
    </div>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="../Assets/js/jquery.min.js"></script>
<script src="../Assets/js/bootstrap.min.js"></script>
<script src="../Assets/js/adminDashboard.js"></script>
</body>
</html>