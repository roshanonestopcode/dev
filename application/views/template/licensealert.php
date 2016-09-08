<div  role="dialog" id="alert-form"class="modal  fade alert-form" data-backdrop="" style="margin-top:10%;">
    <div class="modal-dialog model-dailogue-width">
        <div class="modal-content">
            <?= form_open_multipart('clients/savepracticeexp', array('class' => 'frmpracticeexp', 'id' => "frmpracticeexp")); ?>

            <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <div class="modal-title" align="center" style="font-size:18px;color:#07a3f0;font-weight: bold;">Select Your Expertise</div>



            </div>
            <div class="modal-body">
            </div>
            <div class="modal-footer">
              <button class="submit-alert-button" id="btn-save-practice-exp">Save</button>
            </div>
            <?= form_close(); ?>
        </div>
    </div>
</div>



<div id="licence-form"  role="dialog" class="modal modal-message modal-danger fade licence-form" data-backdrop="" style="top:30% !important">
    <div class="modal-dialog  model-dailogue-width">
        <div class="modal-content">
            <div class="modal-header">
               <div class="modal-title">Alert</div>
            </div>
            <div class="modal-body">
                <div class="w3-note">
                        <font style="color:#000;"> Please Upload your license.</font> <strong><a href="<?php echo base_url(); ?>lawyer_license"><font style="color:#07a3f0;">Click Here</font></a> </strong>
                </div>
            </div>
            <div class="modal-footer">
              <button class="submit-alert-button" data-dismiss="modal">OK</button>

            </div>

        </div>
    </div>
</div>



<div id="verify-form"  role="dialog" class="modal modal-message modal-danger fade verify-form" data-backdrop="" style="top:30% !important">
    <div class="modal-dialog  model-dailogue-width">
        <div class="modal-content">
            <div class="modal-header">
               <div class="modal-title">Alert</div>
            </div>
            <div class="modal-body">
                <div class="w3-note">
                    <font style="color:#000;"> Your license is at our End now, Wait For 24 Hrs.</font>
                        <strong>
                            <a href="<?php echo base_url(); ?>lawyer_license">
                                <font style="color:#07a3f0;">Click Here</font>
                            </a>
                        </strong>
                </div>
            </div>
            <div class="modal-footer">
                <button class="submit-alert-button">OK</button>
            </div>

        </div>
    </div>
</div>

<style>
    .modal-content {
        -webkit-border-radius: 0 !important;
        -webkit-background-clip: padding-box !important;
        -moz-border-radius: 0 !important;
        -moz-background-clip: padding !important;
        border-radius: 6px !important;
        background-clip: padding-box !important;
        -webkit-box-shadow: 0 0 40px rgba(0,0,0,.5) !important;
        -moz-box-shadow: 0 0 40px rgba(0,0,0,.5) !important;
        box-shadow: 0 0 40px rgba(0,0,0,.5) !important;
        color: #000 !important;
        background-color: #fff !important;
        border: rgba(0,0,0,0) !important;
    }
    .modal-message .modal-dialog {
        width: 400px !important;
    }
    .modal-message .modal-body, .modal-message .modal-footer, .modal-message .modal-header, .modal-message .modal-title {
        background: 0 0 !important;
        border: none !important;
        margin: 0 !important;
        padding: 0 20px !important;
        text-align: center!important;
    }

    .modal-message .modal-title {
        font-size: 20px !important;
        font-weight: bold;
        color: #07a3f0 !important;
        margin-bottom: 3px !important;
    }

    .modal-message .modal-body {
        color: #737373 !important;
    }

    .modal-message .modal-header {
        color: #fff !important;
        margin-bottom: 10px !important;
        padding: 15px 0 8px !important;
    }
    .modal-message .modal-header .fa,
    .modal-message .modal-header
    .glyphicon, .modal-message
    .modal-header .typcn, .modal-message .modal-header .wi {
        font-size: 30px !important;
    }

    .modal-message .modal-footer {
        margin: 25px 0 20px !important;
        padding-bottom: 10px !important;
    }

    .modal-message.modal-success .modal-header {
        color: #53a93f !important;
        border-bottom: 3px solid #a0d468 !important;
    }

    .modal-message.modal-info .modal-header {
        color: #57b5e3 !important;
        border-bottom: 3px solid #57b5e3 !important;
    }

    .modal-message.modal-danger .modal-header {
        color: #d73d32 !important;
        border-bottom: 3px solid #07a3f0 !important;
    }

    .modal-message.modal-warning .modal-header {
        color: #f4b400 !important;
        border-bottom: 3px solid #ffce55 !important;
    }


</style>
