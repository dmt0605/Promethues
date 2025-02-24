<?php
if (is_array($product)) {
    extract($product);
}
    $image_path = "uploads/" . $image;
if (is_file($image_path)) {
    $image = "<img src='" . $image_path . "' height='100'>";
} else {
    $image = "Chưa Có Hình Ảnh Sản Phẩm";
}
?>

<div class="col-12 grid-margin stretch-card">
    <div class="card">
        <div class="card-body">
            <h4 class="card-title">Update Sản Phẩm : </h4>
            <p class="card-description">
                Thêm Sản Phẩm Mới
            </p>
            <form action="index.php?act=updateProduct" method="post" enctype="multipart/form-data" class="forms-sample">
                <?php if (isset($thongbao)) : ?>
                    <div class="alert alert-success" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <?php echo $thongbao ?>
                    </div>
                <?php endif ?>

                <div class="form-group">
                    <label for="exampleInputName1">Tên Sản Phẩm</label>
                    <input type="text" name="title" class="form-control" id="" placeholder="Tên Sản Phẩm" value="<?= $title ?>">
                </div>

                <!-- <div class="form-group">
          <label for="exampleSelectGender">Thể Loại Sách</label>
          <select name="title" class="form-control" id="exampleSelectGender">
            <option>Tiểu thuyết</option>
            <option>Chinh Thám</option>
            <option>Chinh Thám</option>
            <option>Chinh Thám</option>
            <option>Chinh Thám</option>
            <option>Chinh Thám</option>
          </select>
        </div> -->

                <!-- <div class="form-group">
                    <label for="exampleInputPassword4">International Standard Book Number_10</label>
                    <input type="text" name="isbn_10" class="form-control" id="" placeholder="isbn_10" >
                </div> -->

                <!-- <div class="form-group">
                    <label for="exampleInputPassword4">International Standard Book Number_13</label>
                    <input type="text" name="isbn_13" class="form-control" id="" placeholder="isbn_13">
                </div> -->

                <div class="form-group">
                    <label for="">Giá</label>
                    <input type="text" name="price" class="form-control" id="" placeholder="Giá" value="<?= $price ?>">
                </div>

                <!-- <div class="form-group">
                    <label for="exampleInputPassword4">Format</label>
                    <input type="text" name="fm_id" class="form-control" id="" placeholder="Format">
                </div> -->

                <!-- <div class="form-group">
                    <label for="exampleInputPassword4">Tác Giả</label>
                    <input type="text" name="au_id" class="form-control" id="" placeholder="Tác giả">
                </div> -->

                <!-- <div class="form-group">
                    <label for="exampleInputPassword4">Nhà Xuất Bản</label>
                    <input type="text" name="pub_id" class="form-control" id="" placeholder="Nhà Xuất Bản">
                </div> -->

                <div class="form-group">
                    <label for="">Ngày Chỉnh Sửa</label>
                    <input type="date" name="updation_date" class="form-control" id="" placeholder="Ngày Chỉnh Sửa">
                </div>
                <!-- 
        <div class="form-group">
          <label for="">Ngày Chỉnh Sửa</label>
          <input type="date" name="updation_date" class="form-control" id="" placeholder="Ngày Chỉnh Sưa">
        </div> -->

                <!-- <div class="form-group">
          <label for="exampleSelectGender">Loại Sách</label>
          <select class="form-control" id="exampleSelectGender">
            <option>Male</option>
            <option>Female</option>
          </select>
        </div> -->

                <div class="form-group">
                    <label>File upload</label>
                    <input type="file" name="image" >
                    <?= $image ?>
                    <!-- <div class="input-group col-xs-12">
            <input type="text" class="form-control file-upload-info"  placeholder="Upload Image">
            <span class="input-group-append">
              <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
            </span>
          </div> -->
                </div>


                <div style="width:85%" class="form-group">
                    <label for="">Mô tả</label>
                    <textarea name="book_description" class="form-control" id="" rows="4" cols="2">
                        <?= $book_description?>
                    </textarea>
                </div>

                <input type="hidden" name="id" value="<?= $id ?>">

                <button type="reset" name="" class="btn btn-primary mr-2" value="Nhập Lại">Nhập Lại</button>

                <button type="submit" name="button_updateProduct" class="btn btn-primary mr-2">Update</button>
                <a class="btn btn-primary mr-2" href="index.php?act=listProduct"> Danh Sách Sản Phẩm</a>
                <a class="btn btn-light" href="index.php?act=listProduct"> Thoát</a>

            </form>

        </div>
    </div>
</div>