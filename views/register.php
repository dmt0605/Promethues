<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Prometheus Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="../publics/css/feather.css">
  <link rel="stylesheet" href="../publics/css/themify-icons.css">
  <link rel="stylesheet" href="../publics/css/publics.bundle.base.css">
  <link rel="stylesheet" href="../publics/css/style2.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <!-- endinject -->
  <link rel="shortcut icon" href="../publics/img/logo fire.svg" />
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <img src="./img/logo.svg" alt="logo">
              </div>
              <h4>New here?</h4>
              <h6 class="font-weight-light">Signing up is easy. It only takes a few steps</h6>

              <?php if(isset($error)) :?>
                <div class="alert alert-danger"> <?= $error ?> </div>
              <?php endif ?>

              <?php if(isset($register_Success)) :?>
                <div class="alert alert-success"> <?= $error ?> </div>
              <?php endif ?>

              <form action= "index.php?pgs=register"  method="post" enctype="multipart/form-data" class="pt-3">
                
              <div class="form-group">
                  <input type="email" class="form-control form-control-lg" id="exampleInputEmail1" name="usr_email" placeholder="Email">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" id="exampleInputUsername1" name="username" placeholder="Username">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg" id="exampleInputPassword1" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                  <input type="file" id="file-upload" name="avatar">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" id="exampleInputUsername1" name="fullname" placeholder="Your fullname">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" id="exampleInputUsername1" name="phone" placeholder="Phone">
                </div>
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg" id="exampleInputUsername1" name="usr_address" placeholder="Address">
                </div>
                <div class="mb-4">
                  <div class="form-check">
                    <label class="form-check-label text-muted">
                      <input type="checkbox" class="form-check-input">
                      I agree to all Terms & Conditions
                    </label>
                  </div>
                </div>
                <div class="mt-3">
                  <button class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" name="btn_sign_up">SIGN UP</button>
                </div>
                <div class="text-center mt-4 font-weight-light">
                  Already have an account? <a href="index.php?pgs=login" class="text-primary">Login</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="../publics/js/publics.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="../publics/js/off-canvas.js"></script>
  <script src="../publics/js/hoverable-collapse.js"></script>
  <script src="../publics/js/template.js"></script>
  <script src="../publics/js/setting.js"></script>
  <script src="../publics/js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>
