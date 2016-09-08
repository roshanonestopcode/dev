<div id="post-case-alert"  role="dialog" class="modal modal-message modal-success fade " data-backdrop="" style="top:30% !important"> 
    <div class="modal-dialog  model-dailogue-width">
        <div class="modal-content">
            <div class="modal-header">
                <i class="glyphicon glyphicon-fire"></i>

            </div>
            <div class="modal-body">
                <div class="modal-title">Alert</div>
                <div class="w3-note">
                    <center><p><strong>Case: </strong>
                            Please post your case. <strong><a style="color:#777;" href="<?php echo base_url(); ?>post_case">Click Here</a> </strong>
                        </p>
                    </center>
                </div>
            </div>
             <div class="modal-footer">

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
        font-size: 17px !important;
        color: #737373 !important;
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
        border-bottom: 3px solid #e46f61 !important;
    }

    .modal-message.modal-warning .modal-header {
        color: #f4b400 !important;
        border-bottom: 3px solid #ffce55 !important;
    }


</style>