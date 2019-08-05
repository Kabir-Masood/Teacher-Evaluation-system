
<?php

if (empty($_SESSION['is_logged']) || $_SESSION['is_logged'] != md5(100)) {

    header("location: login.php");


}

?>






<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">


</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-md-12">


            <form>




                <div class="nav" style="margin-top:10%;  ">

                    <ul class="nav justify-content-end">
                        <li class="nav-item">
                            <a class="nav-link active" href="showdepartment.php">Department</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="showcourse.php">Course </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="showstudent.php">Student</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="showteacher.php">Teacher</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" href="showquestion.php">Question</a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link active" href="showteachercourses.php">Course teacher</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="showcoursereg.php">Course Registration</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="adminchangepassword.php">Change Password</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="Reportinterface.php">Report</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" href="logout.php">Logout</a>
                        </li>
                    </ul>
                </div>


            </form>



        </div>
    </div>
</div>
</body>
</html>