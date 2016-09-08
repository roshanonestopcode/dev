<?php
$this->load->view('template/homeheader', $page, $title);
?>


<div class="container-fluid fluid-box">
    <div class="container small-fluid-box">

        <!---=======================================lawyer-invite-form ===============-------->
        <div class="container-fluid">
            <div class="form" style="min-height: 413px;">
                <ul class="tab-group">
                    <h2 style="color:#07a3f0;">Invite your Lawyer</h2>
                </ul>

                <div class="tab-content">
                    <form>
                        <div class="form-group">
                            <textarea cols="12" rows="2" name="message" class="form-control" placeholder="Type your Text Here.."></textarea>
                        </div>

                        <div class="form-group ">
                            <div class="select-style">
                                <select name="category" id="category">
                                    <option value="">Type of Work</option>
                                    <option>ABC</option>
                                    <option>ABC</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-control" id="inputEmail" placeholder="Your Job Name">
                        </div>

                        <div class="form-group">
                            <textarea cols="12" rows="2" name="description" class="form-control" placeholder="Job Description">
                        
                            </textarea>
                        </div>

                        <div class="form-group">
                            <input type="text" class="form-control" id="inputEmail" placeholder="Your Job Name">
                        </div>

                        <div class="form-group ">
                            <div class="select-style">
                                <select name="category" id="category">
                                    <option value="">Estimated Duration</option>
                                    <option>ABC</option>
                                    <option>ABC</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <input type="submit" class="button button-block-login-fb " value="Invite Lawyer">
                        </div>

                    </form>
                </div>  
            </div>
        </div>
        <!---====================================End lawyer-invite-form ===============-------->


    </div>
</div>
<div style="margin-bottom: 0px !important; padding-top:20px; ">
    <?php $this->load->view('template/footermain', $page, $title); ?>
</div>