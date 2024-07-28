<?php
session_start();
if (isset($_SESSION["users"])) {
    header("location:index.php");
}



?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prometheus - BookStore</title>
    <link rel="stylesheet" href="./publics/css/style.css">
    <link rel="stylesheet" href="./publics/css/style2.css">
    <link rel="stylesheet" href="./publics/css/slicknav.min.css">
    <link rel="stylesheet" href="./publics/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./publics/css/magnific-popup.css">
    <link rel="stylesheet" href="./publics/css/jquery-ui.min.css">
    <link rel="stylesheet" href="./publics/css/font-awesome.min.css">
    <link rel="stylesheet" href="./publics/css/elegant-icons.css">
    <link rel="stylesheet" href="./publics/css/bootstrap.min.css">
    <link rel="shortcut icon" href="./publics/img/logofire.svg" />

</head>

<body>
    <?php
    include "models/pdo.php";
    include "models/conn.php";
    include "models/func_user.php";
    include "views/header.php";

    if (isset($_SESSION['user']) && (count($_SESSION['user']))) {
        extract($_SESSION['user']);
        $user_info = get_user($id);
        $_SESSION['user'] = $user_info;
        extract($user_info);
    }
    // include "models/conn.php";
    if (isset($_GET['pgs']) && ($_GET['pgs'] != "")) {
        $pgs = $_GET['pgs'];
        switch ($pgs) {
            case 'books':
                include "views/books.php";
                break;
            case 'eBooks':
                include "views/eBooks.php";
                break;
            case 'audioBooks':
                include "views/audioBooks.php";
                break;
            case 'blog':
                include "views/blog.php";
                break;
            case 'contact':
                include "views/contact.php";
                break;
            case 'logout':
                include "views/logout.php";
                break;
            case 'login':
                if (isset($_POST["btn_sign_in"])) {
                    //  include "models/conn.php"
                    $username = $_POST["username"];
                    $password = $_POST["password"];
                    // check_user($username, $password);   
                    $query = $conn->prepare('SELECT * FROM users WHERE username = :username');
                    $query->bindValue(':username', $username);
                    $query->execute();
                    $user = $query->fetch(PDO::FETCH_ASSOC);

                    if ($user) {
                        if (md5($password) == $user['password']) {
                            $_SESSION['user'] = $user;
                            header('location: index.php');
                        } else {
                            echo $password;
                            echo  'Mat khau sai';
                            echo $user['password'];
                        }
                    } else {
                        echo "Tài khoản sai";
                    }
                }
                include "views/login.php";
                break;
            case 'register':
                if (isset($_POST["btn_sign_up"])) {
                    $usr_email = $_POST['usr_email'];
                    $username = $_POST['username'];
                    $password = md5($_POST['password']);

                    $avatar = $_FILES['avatar']['name'];
                    $target_dir = "publics/upload/";
                    $target_file = $target_dir . basename($_FILES["avatar"]["name"]);
                    if (move_uploaded_file($_FILES["avatar"]["tmp_name"], $target_file)) {
                    }


                    $fullname = $_POST['fullname'];
                    $phone = $_POST['phone'];
                    $usr_address = $_POST['usr_address'];


                    //var_dump($check_usr_email_username);
                    $error = "";

                    if ($usr_email == "" || $username == "" || $password == "" || $fullname == "" || $phone == "") {
                        $error = "Vui Lòng Nhập Đầy Đủ Thông Tin !!!";
                    } else {
                        //$check_usr_email_username = check_email_username($usr_email);
                        $sql = "SELECT  * FROM users WHERE usr_email = ? or username = ?";
                        $stmt = $conn->prepare($sql);
                        $stmt->execute([$usr_email, $username]);
                        $count = $stmt->rowCount();
                        if ($count > 0) {
                            $error = " Tài Khoản Đã Tồn Tại !";
                        } else {
                            add_users($usr_email, $username, $password, $avatar, $fullname, $phone, $usr_address);
                            header("location:index.php");
                            $register_Success = "Đăng Ký Thành Công !";
                        }
                    }


                    // foreach ($check_usr_email_username as $check_email_username) {
                    //     extract($check_email_username);


                    //         if ($usr_email == $email_db || $username == $username_db) {
                    //             $error = "Email hoặc Username Này Đã Có Người Đăng Ký ! Hãy Thử Email Khác !";
                    //         } 

                    //         if ( $email_db > 0 ) {
                    //             $error = "ĐÃ có chủ!";
                    //         } else {
                    //             $error = "Chưa có chủ!";
                    //         }
                    //     }


                    //add_users($usr_email, $username, $password, $avatar, $fullname, $phone, $usr_address);
                    // header("location:index.php");

                }

                include "views/register.php";
                break;
            case 'forgotpass':
                if (isset($_POST['btn_reset'])) {
                    $email = $_POST['usr_email'];

                    //kiểm tra email trong db
                    $sql = "SELECT  * FROM users WHERE usr_email = ?";
                    $stmt = $conn->prepare($sql);
                    $stmt->execute([$email]);
                    $count = $stmt->rowCount();

                    if ($count == 0) {
                        $loi = "Email bạn nhập chưa đăng ký thành viên với chúng tôi";
                    } else {
                        echo $newpass = substr(rand(0, 9999), 0, 8);
                        $passmd5 = md5($newpass);
                        $sql = "UPDATE users SET password = ? WHERE usr_email = ?";
                        $stmt = $conn->prepare($sql);
                        $stmt->execute([$passmd5, $email]);
                        // echo "Đã cập nhật";
                        $kq = send_mail($email, $newpass);
                        if ($kq == true) {
                            echo "<script>document.location='./views/thongbao.php';</script>";
                        }
                    }
                }
                //$email = $_POST['usr_email'];
                if (isset($email) == true) {
                    $email;
                }
                include "views/forgotpass.php";
                break;
            case 'updateuser':
                if (isset($_POST["btn_updateuser"])) {
                    $id = $_POST['id'];
                    //$password = $_POST['$password'];
                    $username = $_POST['username'];
                    $fullname = $_POST['fullname'];
                    $phone = $_POST['phone'];
                    $usr_address = $_POST['usr_address'];
                    $avatar = $_FILES['avatar']['name'];
                    $target_dir = "publics/upload/";
                    $target_file = $target_dir . basename($_FILES["avatar"]["name"]);
                    if (move_uploaded_file($_FILES["avatar"]["tmp_name"], $target_file)) {
                    }
                    update_user($id, $username, $avatar, $fullname, $phone, $usr_address);
                }

                include "views/updateuser.php";
                break;

            case 'updatePass':
                if (isset($_POST["btn_updatePass"])) {
                    $password = $_POST['password'];
                    $password_New = $_POST['password_New'];
                    $password_Confirm = $_POST['password_Confirm'];
                    //echo $id;
                    $query = $conn->prepare('SELECT * FROM users WHERE id = :id');
                    $query->bindValue(':id', $id);
                    $query->execute();
                    $user_updatepass = $query->fetch(PDO::FETCH_ASSOC);
                    $error = "";

                    if ($password != "") {
                        if ($user_updatepass) {  // kiểm tra mảng user có tồn tại
                            if (md5($password) == $user_updatepass['password']) { //  kiểm tra mk hiện tại
                                if ($password_New != "") {
                                    if ($password_Confirm != "") {
                                        if ($password_New == $password_Confirm) {
                                            $passNew_db = md5($password_New);
                                            update_PassUser($id, $passNew_db);
                                            $update_Success = "Cập Nhật Mật Khẩu Thành Công !!!";
                                        } else {
                                            $error = " Mật khẩu mới không trùng với mật khẩu xác nhận !";
                                        }
                                    } else {
                                        $error = " Vui Lòng Xác Nhận Mật Khẩu Mới !";
                                    }
                                } else {
                                    $error = " Vui lòng nhập mật khẩu mới !";
                                }
                            } else {
                                $error = " Mật khẩu không khớp !";
                            }
                        }
                    } else {
                        $error = " Vui lòng nhập mật khẩu hiện tại !";
                    }



                    // if ($user_updatepass) { // kiểm tra mảng user

                    //     if (md5($password) == $user_updatepass['password']) { //  kiểm tra mk hiện tại
                    //         if ($password_New != "") {
                    //             // update_PassUser($id, $password_New);
                    //             echo "Được update";
                    //         } else {
                    //             echo "Không được để trống new pass";
                    //         }
                    //     } else {
                    //         echo "sai mk";
                    //     }
                    // }
                }
                include 'views/updatePass.php';
                break;

            default:
                include "views/home.php";
                break;
        }
    } else {
        include "views/home.php";
    }

    include "views/footer.php";
    ?>
</body>

</html>