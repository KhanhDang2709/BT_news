    <?php
    include "header.php";
    ?>
    <!-- News With Sidebar Start -->
    <div class="container-fluid mt-5 pt-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-title">
                                <h4 class="m-0 text-uppercase font-weight-bold">Result: 6item(s)</h4>
                                <a class="text-secondary font-weight-medium text-decoration-none" href="">View All</a>
                            </div>
                        </div>
                        <?php
                        if (isset($_GET['keyword'])) {
                            $keyword = $_GET['keyword'];
                            $start = 0;
                            $count = 6;
                            $search = $item->search($keyword, $start, $count);
                            $searchCount = $item->searchCount($keyword);
                            //var_dump(count($searchCount));
                            echo count($searchCount);
                        ?>
                            <?php
                            foreach ($search as $key => $value) :
                                $cateName = $category->getNameById($value['category']);
                            ?>
                                <div class="col-lg-6">

                                    <div class="position-relative mb-3">


                                        <img class="img-fluid w-100" src="img/<?php echo $value['image'] ?>" style="object-fit: cover;">

                                        <div class="bg-white border border-top-0 p-4">
                                            <div class="mb-2">
                                                <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2" href=""><?php echo $cateName[0]['name'] ?></a>
                                                <a class="text-body" href=""><small><?php echo isset($value['created_at']) ? date("M d, Y", strtotime($value['created_at'])) : 'No date available'; ?></small></a>
                                            </div>
                                            <a class="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href=""><?php echo $value['name'] ?></a>
                                            <p class="m-0"><?php echo $value['excerpt'] ?></p>
                                        </div>
                                        <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
                                            <div class="d-flex align-items-center">
                                                <img class="rounded-circle mr-2" src="img/user.jpg" width="25" height="25" alt="">
                                                <small>John Doe</small>
                                            </div>
                                            <div class="d-flex align-items-center">
                                                <small class="ml-3"><i class="far fa-eye mr-2"></i>12345</small>
                                                <small class="ml-3"><i class="far fa-comment mr-2"></i>123</small>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                            <?php endforeach ?>
                        <?php } else {
                            echo "Vui long nhap tu khoa";
                        }
                        ?>
                    </div>
                </div>

                <div class="col-lg-4">
                    <!-- Social Follow Start -->
                    <?php include "social-sidebar.php" ?>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- News With Sidebar End -->
    <?php include "footer.php" ?>

    <!-- Footer Start -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary btn-square back-to-top"><i class="fa fa-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>