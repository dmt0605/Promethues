<?php
function insert_product($title, $isbn_10, $isbn_13, $image, $price, $book_description, $fm_id, $au_id, $pub_id, $creation_date)
{
    $sql = "INSERT INTO books (title, isbn_10, isbn_13, image, price, book_description,fm_id, au_id, pub_id, creation_date) VALUES('$title', '$isbn_10', '$isbn_13', '$image', '$price', '$book_description', '$fm_id', '$au_id', '$pub_id', '$creation_date')";
    return pdo_execute_return_lastInsertID($sql);
}


function delete_product($id)
{
    $sql = "DELETE FROM books WHERE id=" . $id;
    pdo_execute($sql);
}


function load_All_hang_hoa_top10()
{

    $sql = "SELECT * FROM hang_hoa WHERE 1 order by so_luot_xem desc limit 0,10";
    $listHanghoa = pdo_query($sql);
    return $listHanghoa;
}




function load_All_book_au_fr_pub()
{

    $sql = "SELECT books.id as id , books.title as title, books.image as image, books.price as price, books.book_description as book_description, books.creation_date as creation_date, fr.fm_name as fr_name, au.au_name as au_name, pub.pub_name as pub_name
    FROM `books` 
    INNER JOIN authors as au on au.id = books.au_id
    INNER JOIN formats as fr on fr.id = books.fm_id
    INNER JOIN publishers as pub on pub.id = books.pub_id
    WHERE 1 order by id DESC;";
    $listProduct = pdo_query($sql);
    return $listProduct;
}


function load_All_hang_hoa_home()
{

    $sql = "SELECT * FROM hang_hoa WHERE 1 order by ma_hh asc limit 0,8";
    $listHanghoa = pdo_query($sql);
    return $listHanghoa;
}
function load_All_book()
{

    $sql = "SELECT * FROM books WHERE 1 order by id desc ";
    $listProduct = pdo_query($sql);
    return $listProduct;
}

function load_All_hang_hoa($keyword, $maloaihh)
{

    $sql = "SELECT * FROM hang_hoa WHERE 1 ";
    if ($keyword != "") {
        $sql .= " and ten_hh like '%" . $keyword . "%'";
    }
    if ($maloaihh > 0) {
        $sql .= " and ma_loaihh = '" . $maloaihh . "'";
    }
    $sql .= " order by ma_hh desc";
    $listHanghoa = pdo_query($sql);
    return $listHanghoa;
}

function load_ten_dm($ma_loaihh)
{   
    if($ma_loaihh > 0) {
    $sql = "SELECT * FROM loai WHERE ma_loai=" . $ma_loaihh;
    $loai =  pdo_query_one($sql);
    extract($loai);
    return $ten_loai;
    } else {
        return "";
    }
}

function load_one_product($id)
{
    $sql = "SELECT * FROM books WHERE id=" . $id ;
    $loai =  pdo_query_one($sql);
    return $loai;
}

function load_hang_hoa_cung_loai($ma_hh, $ma_loaihh)
{
    $sql = "SELECT * FROM hang_hoa WHERE ma_loaihh=".$ma_loaihh." AND ma_hh <> " . $ma_hh;
    $loai =  pdo_query($sql);
    return $loai;
}

function update_product($id, $title, $price, $book_description, $updation_date, $image)
{
    if ($image != "") {
        $sql = "UPDATE books SET title ='" . $title . "',  price ='" . $price . "',  updation_date ='" . $updation_date . "',  image ='" . $image . "',  book_description ='" . $book_description . "' WHERE id=".$id;
    }
    else {
        $sql = "UPDATE books SET title ='" . $title . "',  price ='" . $price . "',  updation_date ='" . $updation_date . "',  book_description ='" . $book_description . "' WHERE id=".$id;
    }
    pdo_execute($sql);
}

function count_hang_hoa()
{
    $sql = "SELECT COUNT(`ma_hh`) as SoLuongHangHoa FROM `hang_hoa` WHERE 1;";
    $hanghoa = pdo_query_one($sql);
    return $hanghoa;
}
?>