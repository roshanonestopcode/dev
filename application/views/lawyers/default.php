<style>
    .container_one{ height:640px;}
    .container_one::before {content: "";background-image:url(<?php echo base_url() ?>/assets/images/banner.jpg);opacity: 0.1;top: 0;left: 0;bottom: 0;right: 0;position: absolute;
                            z-index: -1; background-attachment:fixed; background-size:cover;}
    .select-style{border: 1px solid #ccc;min-width: 160px;border-radius: 3px;overflow: hidden;
                  background: #edeef3 url("<?php echo base_url() ?>assets/images/drop-icon.png") no-repeat 90% 50%; color:#0088ba; margin:0 auto; font-size:20px;border-top:1px solid #999;border-left:1px solid #999;}
    </style>

    <?php
    $this->load->view('template/homeheader', $page, $title);
    ?>
    <div class="container">
    <div style="margin-top:6%;" class="row">
        <div align="center" style="padding-left:25%;" class="col-md-12">
            <form class="form-control form-search">
                <input type="text" placeholder="Search.." class="form-search-input">
                <button style="float:left;" class="btn btn-primary" type="submit">
                    <span aria-hidden="true" class="glyphicon glyphicon-search"></span>
                </button>
            </form>
        </div>
    </div>
</div>
<div class="container-fluid fluid-box">
    <div class="container small-fluid-box">
        <div class="row small-fluid-box1">

            <div class="col-md-4">
                <div class="select-style">
                    <select>
                        <option value="Android Developer">Android Developer</option>
                        <option value="Android Developer">Android Developer</option>
                        <option value="Android Developer">Android Developer</option>
                        <option value="Android Developer">Android Developer</option>
                    </select>
                </div>
            </div>

            <div class="col-md-4">
                <div class="select-style">
                    <select>
                        <option value="Android Developer">Android Developer</option>
                        <option value="Android Developer">Android Developer</option>
                        <option value="Android Developer">Android Developer</option>
                        <option value="Android Developer">Android Developer</option>
                    </select>
                </div>
            </div>

            <div class="col-md-4">
                <div class="select-style">
                    <select>
                        <option value="Android Developer">Android Developer</option>
                        <option value="Android Developer">Android Developer</option>
                        <option value="Android Developer">Android Developer</option>
                        <option value="Android Developer">Android Developer</option>
                    </select>
                </div>
            </div>

        </div>


        <!----Lawyers with Exp.---->
        <div class="row small-fluid-box1">
            <div class="col-md-3">
                <img style="border:1px solid #0088ba; width:200px; height:200px;" class="img-circle img-responsive" src="assets/images/demo.jpg">
            </div>

            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-6">
                        <h2>Ajay Kumar</h2>
                    </div>

                    <div class="col-md-6 rate-right ">
                        <div class="row">
                            <div style="position:absolute; right:10px;bottom:30px;color:#0088ba;">65 Responses</div>
                        </div>

                        <div class="row">
                            <div class="rating">
                                <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                            </div>
                            <div style="position:absolute; right:12px;">200 Raiting</div>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-12">
                        <img class="img-responsive" src="assets/images/location.png">
                        <h3> City : Chandigarh,</h3>
                        <h3>  Exp:1-5 years</h3>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12">
                        <p class="lawyer-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever , <a class="readmore-lyw" href="#">Read More</a></p>
                    </div>

                </div>
                <div class="row lawyer-cat-area">
                    <div class="col-md-12">
                        <a href="#">Marriages and Mat..</a>
                        <a href="#">Marriages and Mat..</a>
                        <a href="#">Marriages and Mat..</a>
                    </div>
                </div>
            </div>

        </div>
        <!----Lawyers with Exp.---->



        <!----Lawyers with Exp.---->
        <div class="row small-fluid-box1">
            <div class="col-md-3">
                <img style="border:1px solid #0088ba; width:200px; height:200px;" class="img-circle img-responsive" src="assets/images/demo.jpg">
            </div>

            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-6">
                        <h2>Ajay Kumar</h2>
                    </div>

                    <div class="col-md-6 rate-right ">
                        <div class="row">
                            <div style="position:absolute; right:10px;bottom:30px;color:#0088ba;">65 Responses</div>
                        </div>

                        <div class="row">
                            <div class="rating">
                                <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                            </div>
                            <div style="position:absolute; right:12px;">200 Raiting</div>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-12">
                        <img class="img-responsive" src="assets/images/location.png">
                        <h3> City : Chandigarh,</h3>
                        <h3>  Exp:1-5 years</h3>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12">
                        <p class="lawyer-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever , <a class="readmore-lyw" href="#">Read More</a></p>
                    </div>

                </div>
                <div class="row lawyer-cat-area">
                    <div class="col-md-12">
                        <a href="#">Marriages and Mat..</a>
                        <a href="#">Marriages and Mat..</a>
                        <a href="#">Marriages and Mat..</a>
                    </div>
                </div>
            </div>

        </div>
        <!----Lawyers with Exp.---->



        <!----Lawyers with Exp.---->
        <div class="row small-fluid-box1">
            <div class="col-md-3">
                <img style="border:1px solid #0088ba; width:200px; height:200px;" class="img-circle img-responsive" src="assets/images/demo.jpg">
            </div>

            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-6">
                        <h2>Ajay Kumar</h2>
                    </div>

                    <div class="col-md-6 rate-right ">
                        <div class="row">
                            <div style="position:absolute; right:10px;bottom:30px;color:#0088ba;">65 Responses</div>
                        </div>

                        <div class="row">
                            <div class="rating">
                                <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                            </div>
                            <div style="position:absolute; right:12px;">200 Raiting</div>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-12">
                        <img class="img-responsive" src="assets/images/location.png">
                        <h3> City : Chandigarh,</h3>
                        <h3>  Exp:1-5 years</h3>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12">
                        <p class="lawyer-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever , <a class="readmore-lyw" href="#">Read More</a></p>
                    </div>

                </div>
                <div class="row lawyer-cat-area">
                    <div class="col-md-12">
                        <a href="#">Marriages and Mat..</a>
                        <a href="#">Marriages and Mat..</a>
                        <a href="#">Marriages and Mat..</a>
                    </div>
                </div>
            </div>

        </div>
        <!----Lawyers with Exp.---->



        <!----Lawyers with Exp.---->
        <div class="row small-fluid-box1">
            <div class="col-md-3">
                <img style="border:1px solid #0088ba; width:200px; height:200px;" class="img-circle img-responsive" src="assets/images/demo.jpg">
            </div>

            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-6">
                        <h2>Ajay Kumar</h2>
                    </div>

                    <div class="col-md-6 rate-right ">
                        <div class="row">
                            <div style="position:absolute; right:10px;bottom:30px;color:#0088ba;">65 Responses</div>
                        </div>

                        <div class="row">
                            <div class="rating">
                                <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                            </div>
                            <div style="position:absolute; right:12px;">200 Raiting</div>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-12">
                        <img class="img-responsive" src="assets/images/location.png">
                        <h3> City : Chandigarh,</h3>
                        <h3>  Exp:1-5 years</h3>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12">
                        <p class="lawyer-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever , <a class="readmore-lyw" href="#">Read More</a></p>
                    </div>

                </div>
                <div class="row lawyer-cat-area">
                    <div class="col-md-12">
                        <a href="#">Marriages and Mat..</a>
                        <a href="#">Marriages and Mat..</a>
                        <a href="#">Marriages and Mat..</a>
                    </div>
                </div>
            </div>

        </div>
        <!----Lawyers with Exp.---->




        <!----Lawyers with Exp.---->
        <div class="row small-fluid-box1">
            <div class="col-md-3">
                <img style="border:1px solid #0088ba; width:200px; height:200px;" class="img-circle img-responsive" src="assets/images/demo.jpg">
            </div>

            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-6">
                        <h2>Ajay Kumar</h2>
                    </div>

                    <div class="col-md-6 rate-right ">
                        <div class="row">
                            <div style="position:absolute; right:10px;bottom:30px;color:#0088ba;">65 Responses</div>
                        </div>

                        <div class="row">
                            <div class="rating">
                                <span>☆</span><span>☆</span><span>☆</span><span>☆</span><span>☆</span>
                            </div>
                            <div style="position:absolute; right:12px;">200 Raiting</div>
                        </div>
                    </div>

                </div>

                <div class="row">
                    <div class="col-md-12">
                        <img class="img-responsive" src="assets/images/location.png">
                        <h3> City : Chandigarh,</h3>
                        <h3>  Exp:1-5 years</h3>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-12">
                        <p class="lawyer-desc">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever , <a class="readmore-lyw" href="#">Read More</a></p>
                    </div>

                </div>
                <div class="row lawyer-cat-area">
                    <div class="col-md-12">
                        <a href="#">Marriages and Mat..</a>
                        <a href="#">Marriages and Mat..</a>
                        <a href="#">Marriages and Mat..</a>
                    </div>
                </div>
            </div>

        </div>
        <!----Lawyers with Exp.---->

        <!----Pagination-------->
        <div class="row">
            <div class="col-md-12">
                <div id="content">
                    <ul class="paginate pag4 clearfix">
                        <li class="single">Page 4 of 5</li>
                        <li class="navpage"><a href="#">prev</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li class="current">4</li>
                        <li><a href="#">5</a></li>
                        <li class="navpage"><a href="#">next</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!----Pagination-------->
    </div>
</div>