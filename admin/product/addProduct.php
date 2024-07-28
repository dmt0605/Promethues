<div class="col-10 grid-margin stretch-card">
  <div class="card">
    <div class="card-body">
      <h4 class="card-title">Thêm Sản Phẩm Mới</h4>
      <p class="card-description">
        Thêm Sản Phẩm Mới
      </p>

      <!-- Form Thêm sp -->
      <form action="index.php?act=addProduct" method="post" enctype="multipart/form-data" class="forms-sample">

        <!-- Thông Báo Khi Thêm SP Mới Thành Công -->
        <?php if (isset($thongbao)) : ?>
          <div class="alert alert-success" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
            <?php echo $thongbao ?>
          </div>
        <?php endif ?>
        <!-- Thông Báo Khi Thêm SP Mới Thành Công -->

        <div class="form-group">
          <label for="exampleInputName1">Tên Sản Phẩm</label>
          <input type="text" name="title" class="form-control" id="" placeholder="Tên Sản Phẩm" required id="title">
        </div>

        <div class="form-group">
          <label for="exampleSelectGender">Danh Mục ( Category )</label>
          <select style="width:30% ; height:210px" multiple name="categories[]" class="form-control" id="">
            <?php
            foreach ($listCategory as $category) {
              extract($category);
              echo '
                <option value="' . $id . '">' . $categ_name . '</option>;
                ';
            }
            ?>
          </select>
        </div>




        <div class="form-group">
          <label for="exampleInputPassword4">International Standard Book Number_10</label>
          <input type="text" name="isbn_10" class="form-control" id="" placeholder="isbn_10" required>
        </div>

        <div class="form-group">
          <label for="exampleInputPassword4">International Standard Book Number_13</label>
          <input type="text" name="isbn_13" class="form-control" id="" placeholder="isbn_13" required>
        </div>

        <div class="form-group">
          <label for="">Giá</label>

          <input type="number" name="price" class="form-control" id="" placeholder="Giá $$$" required>
        </div>

        <div class="form-group">
          <label for="exampleSelectGender">Loại Sách ( Format )</label>
          <select name="fm_id" class="form-control" id="">
            <?php
            foreach ($listFormat  as $format) {
              extract($format);
              echo '
                <option value="' . $id . '">' . $fm_name . '</option>;
                ';
            }
            ?>
          </select>
        </div>

        <div class="form-group">
          <label for="exampleInputPassword4">Tác Giả</label>
          <select name="au_id" class="form-control" id="">
            <?php
            foreach ($listAuthor  as $author) {
              extract($author);
              echo '
                <option value="' . $id . '">' . $au_name . '</option>;
                ';
            }
            ?>
          </select>
        </div>

        <div class="form-group">
          <label for="exampleInputPassword4">Nhà Xuất Bản</label>
          <select name="pub_id" class="form-control" id="">
            <?php
            foreach ($listPublisher  as $publisher) {
              extract($publisher);
              echo '
                <option value="' . $id . '">' . $pub_name . '</option>;
                ';
            }
            ?>
          </select>
        </div>

        <div class="form-group">
          <label for="">Ngày Xuất Bản</label>
          <input style="width:20%" type="date" name="creation_date" class="form-control" id="current-time" placeholder="Ngày Xuất Bản" required>

          <input type="text" id="creation_date" name="creation_date" value="" />
          <button class="btn btn-primary" onclick="setDomain()">Lấy Thời Gian Hiện Tại</button>
          <script>
            function setDomain() {
            var curDate = new Date();

            // Ngày hiện tại
            var curDay = curDate.getDate();

            var curMinute = curDate.getMinutes();

            var curHour = curDate.getHours();

            var curSeconds = curDate.getSeconds();

            // Tháng hiện tại
            var curMonth = curDate.getMonth() + 1;

            // Năm hiện tại
            var curYear = curDate.getFullYear();

            var domain = curDay + "/" + curMonth + "/" + curYear + " " + curHour + ":" + curMinute + ":" + curSeconds;
            document.getElementById('creation_date').setAttribute('value', domain);
            }
          </script>
        </div>

        <div class="form-group">
          <label>File upload</label>
          <!-- <input type="file" name="image" required> -->
          <div class="input-group col-xs-12">
            <input type="file" name="image" required class="form-control file-upload-info" placeholder="Upload Image">
            <span class="input-group-append">
              <button class="file-upload-browse btn btn-primary" type="button">Upload</button>
            </span>
          </div>
        </div>


        <div class="form-group">
          <label for="">Mô tả</label>
          <textarea name="book_description" class="form-control" id="" rows="4"></textarea>
        </div>

        <button type="reset" name="" class="btn btn-primary mr-2" value="Nhập Lại">Nhập Lại</button>

        <button type="submit" name="button_addProduct" class="btn btn-primary mr-2">Gửi</button>
        <a class="btn btn-primary mr-2" href="index.php?act=listProduct"> Danh Sách Sản Phẩm</a>
        <a class="btn btn-light" href="index.php?act=listProduct"> Thoát</a>
        <div id="current-time"></div>

      </form>

      <!-- Form Thêm sp -->

    </div>
  </div>
</div>