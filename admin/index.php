<?php

include "../models/pdo.php";
include "../models/conn.php";
include "../models/func_product.php";
include "../models/func_category.php";
include "../models/func_comment.php";
include "../models/func_user.php";
include "../models/func_chart.php";
include "../models/func_formats.php";
include "../models/func_author.php";
include "../models/func_publishers.php";
include "header.php";

if (isset($_GET['act'])) {
    $act = $_GET['act'];
    switch ($act) {
        case 'listProduct':
            // $listPublisher = load_publisher();
            // $listAuthor = load_author();
            // $listFormat = load_format();
            // $listProduct = load_All_book();
            $listbook_au_fr_pub = load_All_book_au_fr_pub();
            include "product/listProduct.php";
            break;

            // case 'addProduct-page':
            //     $listProduct = load_All_book();
            //     include "product/listProduct.php";
            //     break;

        case 'addProduct':
            // Kiểm tra xem user có click vào nút add không
            if (isset($_POST['button_addProduct'])) {
                $title = $_POST['title'];
                $isbn_10 = $_POST['isbn_10'];
                $isbn_13 = $_POST['isbn_13'];
                $price = $_POST['price'];
                $book_description = $_POST['book_description'];
                $categories = $_POST['categories'];
                $fm_id = $_POST['fm_id'];
                $au_id = $_POST['au_id'];
                $pub_id = $_POST['pub_id'];
                $creation_date = $_POST['creation_date'];

                $image = $_FILES['image']['name'];
                $target_dir = "uploads/";
                $target_file = $target_dir . basename($_FILES["image"]["name"]); // name, tmp_name : Key truy xuất tới file
                if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
                    // echo "The file " . htmlspecialchars(basename($_FILES["fileToUpload"]["name"])) . " has been uploaded.";
                } else {
                    //  echo "Sorry, there was an error uploading your file.";
                }

                // Lấy lastID của product để add vào book_category :
                $lastInsertID = insert_product($title, $isbn_10, $isbn_13, $image, $price, $book_description, $fm_id, $au_id, $pub_id, $creation_date);
                //var_dump($lastInsertID);
                foreach ($categories as $category) {
                    insert_book_category($lastInsertID, $category);
                }


                $thongbao = "Thêm Loại Sản Phẩm Mới Thành Công !!!";
            }
            $listPublisher = load_publisher();
            $listAuthor = load_author();
            $listFormat = load_format();
            $listCategory = load_name_category();
            $listProduct = load_All_book();
            include "product/addProduct.php";
            break;

        case 'page_updateProduct':
            if (isset($_GET['id']) && ($_GET['id']) > 0) {
                $product = load_one_product($_GET['id']);
            }
            // $listProduct = load_All_book();
            include "product/updateProduct.php";
            break;

        case 'updateProduct':
            if (isset($_POST['button_updateProduct'])) {
                $id = $_POST['id'];
                $title = $_POST['title'];
                $price = $_POST['price'];
                $book_description = $_POST['book_description'];
                $updation_date = $_POST['updation_date'];
                $image = $_FILES['image']['name'];
                $target_dir = "uploads/";
                $target_file = $target_dir . basename($_FILES["image"]["name"]); // name, tmp_name : Key truy xuất tới file
                if (move_uploaded_file($_FILES["image"]["tmp_name"], $target_file)) {
                    // echo "The file " . htmlspecialchars(basename($_FILES["fileToUpload"]["name"])) . " has been uploaded.";
                } else {
                    //  echo "Sorry, there was an error uploading your file.";
                }
                update_product($id, $title, $price, $book_description, $updation_date, $image);
                $thongbao = "Cập Nhật Thành Công !!!";
            } else {
                echo "Chưa có dữ liệu";
            }
            $listbook_au_fr_pub =  load_All_book_au_fr_pub();
            // $listProduct = load_All_book();
            // header('location: index.php?act=listProduct');
            include "product/listProduct.php";
            break;

        case 'delProduct':
            if (isset($_GET['id']) && ($_GET['id']) > 0) {
                $idpro_del = $_GET['id'];
                $listBook_Categories = list_book_category($idpro_del);
                if(is_array($listBook_Categories)) {
                    extract($listBook_Categories);
                    echo $title;
                    echo $bk_id;
                    delete_book_category($bk_id);
                    delete_product($idpro_del);
                } else {
                    delete_product($idpro_del);
                }
                
                $thongbao_del = "Xóa Thành Công Sản Phẩm : id: $bk_id - $title !";
            }
            $listCategory = load_name_category();
            $listbook_au_fr_pub =  load_All_book_au_fr_pub();
            include "product/listProduct.php";
            break;
            // End Products
        case 'listUser':
            $listUsers = load_All_users();
            include "auth/listUser.php";
            break;
        case 'addUser':

            include "auth/addUser.php";
            break;
             // End Users

        // CATEGORY
        case 'listCategory':
            $listCategory=load_All_category();
            include "category/listCategory.php";
            break;

        // start add Categoris
        case 'addCategory':
            if(isset($_POST['button_addCategory'])){
                $categ_name=$_POST['categ_name'];
                $categ_description=$_POST['categ_description'];
                insert_category($categ_name,$categ_description);
                $thongbao = "Thêm Loại Danh Mục Mới Thành Công !!!";
                
            }
            include "category/addCategory.php";
            break;
            // end add Categoris

            // Strat del Categoris
        case 'delCategory':
            if(isset($_GET['id']) && ($_GET['id']>0)){
                $id=$_GET['id'];
                $thongbao=delete_category($id);
            }
            $listCategory=load_All_category();
            include "category/listCategory.php";
            break;
            // end add Categoris

            // Strat update Categoris
        case 'updateCategory':
            if(isset($_GET['id']) && ($_GET['id']>0)){
                $id=$_GET['id'];
                $get_oneCatagory=get_oneCatagory($id);
                include "category/updateCategory.php";
            }
            break;

        case 'updateCategory1':
            if(isset($_POST['button_updateCategory'])){
                $id=$_POST['id'];
                $categ_name=$_POST['categ_name'];
                $categ_description=$_POST['categ_description'];
                update_category($categ_name,$categ_description,$id);
                $thongbao = "Cập nhật Danh Mục Thành Công !!!";
                $get_oneCatagory=get_oneCatagory($id);
                include "category/updateCategory.php";
            }
            break;
        // end update Categoris
//          FORMATS
        case 'listFormats':
            $listFormats=load_All_formats();
            include "formats/listFormats.php";
            break;

        // start add Formats
        case 'addFormats':
            if(isset($_POST['button_addFormats'])){
                $fm_name=$_POST['fm_name'];
                $fm_description=$_POST['fm_description'];
                insert_formats($fm_name,$fm_description);
                $thongbao = "Thêm Loại Sách Mới Thành Công !!!";
            }
            include "formats/addFormats.php";
            break;
        // end add Formats

        // start update Fomats
        case 'updateFormats':
            if(isset($_GET['id']) && ($_GET['id']>0)){
                $id = $_GET['id'];
                $get_oneFormats=get_oneFormats($id);
                include "formats/updateFormats.php";
            }

        case 'updateFomarts1':
            if(isset($_POST['button_updateFomarts'])){
                $id=$_POST['fm_id'];
                $fm_name=$_POST['fm_name'];
                $fm_description=$_POST['fm_description'];
                update_formats($fm_name,$fm_description,$id);
                $thongbao = "Cập nhật Danh Mục Thành Công !!!";
                $get_oneFormats=get_oneFormats($id);
                include "formats/updateFormats.php";

            }
            break;
        // end update Fomats

        // start del Fomats
        case 'delFormats':
            if(isset($_GET['id'])&&($_GET['id']>0)){
                $id=$_GET['id'];
                $thongbao=delete_formats($id);
            }
            $listFormats=load_All_formats();
            include "formats/listFormats.php";
            break;
        // end del Fomats
        //AUTHOR  
        case 'listAuthor':
            $listAuthor=load_All_Author();
            include "author/listAuthor.php";
            break;
        // End Authors

        // start add Author

        case 'addAuthor':  
             if(isset($_POST['button_addAuthor'])){
                $au_name=$_POST['au_name'];
                $au_description=$_POST['au_description'];
                $au_email=$_POST['au_email'];
                insert_author($au_name,$au_description,$au_email);
                $thongbao = "Thêm Tác Giả  Mới Thành Công !!!";
            }
            include "author/addAuthor.php";
            break;

        // end add Author

        // start update Author
        case 'updateAuthor':
            if(isset($_GET['id']) && ($_GET['id']>0)){
                $id = $_GET['id'];
                $get_oneAuthor=get_oneAuthor($id);
                include "author/updateAuthor.php";
            }

        case 'updateAuthor1':
            if(isset($_POST['button_updateAuthor'])){
                $id=$_POST['au_id'];
                $au_name=$_POST['au_name'];
                $au_email=$_POST['au_email'];
                $au_description=$_POST['au_description'];
                update_author($au_name,$au_email,$au_description,$id);
                $thongbao = "Cập nhật Tác giả Thành Công !!!";
                $get_oneAuthor=get_oneAuthor($id);
                include "author/updateAuthor.php";

            }
            break;
        // end update Author

        case 'delAuthor':
            if(isset($_GET['id'])&&($_GET['id']>0)){
                $id=$_GET['id'];
                $thongbao=delete_author($id);
            }
            $listAuthor=load_All_Author();
            include "author/listAuthor.php";
            break;
            // PUBLISHERS
        case 'listPublishers':
            $listPublishers=load_All_publishers();
            include "publishers/listPublishers.php";
            break;
        
        // start add publish
        case 'addPublishers':
            if(isset($_POST['button_addPublishers'])){
                $pub_name=$_POST['pub_name'];
                $pub_gmail=$_POST['pub_gmail'];
                $pub_address=$_POST['pub_address'];
                $pub_description=$_POST['pub_description'];
                insert_publishers($pub_name,$pub_gmail,$pub_address,$pub_description);
                $thongbao = "Thêm Nhà Xuất Bản Mới Thành Công !!!";
            }
            include "publishers/addPublishers.php";
            break;
        // end add publish

        // start update publish
        case 'updatePublishers':
            if(isset($_GET['id']) && ($_GET['id']>0)){
                $id = $_GET['id'];
                $get_onePublishers=get_onePublishers($id);
                include "publishers/updatePublishers.php";
            }

        case 'updatePublishers1':
            if(isset($_POST['button_updatePublishers'])){
                $id=$_POST['pub_id'];
                $pub_name=$_POST['pub_name'];
                $pub_gmail=$_POST['pub_gmail'];
                $pub_address=$_POST['pub_address'];
                $pub_description=$_POST['pub_description'];
                update_publishers($pub_name,$pub_gmail,$pub_address,$pub_description,$id);
                $thongbao = "Cập nhật Tác giả Thành Công !!!";
                $get_onePublishers=get_onePublishers($id);
                include "publishers/updatePublishers.php";

            }
                break;
        // end update publish

        // start del publish
        case 'delPublishers':
            if(isset($_GET['id'])&&($_GET['id']>0)){
                $id=$_GET['id'];
                $thongbao=delete_publishers($id);
            }
            $listPublishers=load_All_publishers();
            include "publishers/listPublishers.php";
            break;
        // end del publish


        case 'listCharts':
            include "charts/listChart.php";
            break;
            // End Charts
        case 'listComment':
            include "comments/listComment.php";
            break;
            // End Comments
        default:
            include "home.php";
            break;
    }
} else {
    include "home.php";
}

// include "footer.php";
