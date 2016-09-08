<?php $this->load->view('template/homeheader', $page, $title); ?>
<script type="text/javascript">
    $(function(){
        $('#myTable').removeClass('dataTable no-footer');
    });
</script>
        <!---****************Post Question Container ****************---->
<div class="container-fluid fluid-box-forum2">
    <div class="container forum-main-container5">
            <h1 class="content_header">Client Jobs</h1>   
           <div class="table-responsive">
            <table id="myTable">
                <thead class="thead-default">
                    <tr>
                        <th>Client Name</th>
                        <!--<th>Gender</th>
                        <th>Mobile No</th>
                        <th>Email</th>-->
                        <th>Client Amount </th>
                        <th>My Amount </th>
                        <th>Date</th>
                        <th><!--Action--></th>

                    </tr>
                </thead>
                <tbody>
                    <?php
                    $count = 1;

                    if (!empty($casedetails)) {
                        foreach ($casedetails as $key => $value) {
                            ?>
                            <tr>
                                <td><?php echo $value->name; ?></td>
                               <!-- <td><?php echo $value->gender; ?></td>
                                <td><?php echo $value->mobile; ?></td>
                                <td><?php echo $value->email; ?></td>-->
                                <td><?php echo number_format($value->fee, 2); ?></td>
                                <td><?php echo number_format($value->proposalamt, 2); ?></td>
                                <td><?php echo date('d-m-Y', strtotime($value->created_at)); ?></td>
                                <td><a href="#" class="btncustom view-job">
                                        <span style="color:#FFF;"  class="glyphicon glyphicon-search" aria-hidden="true"></span> 
                                        <strong>view</strong></a>
                                </td>
                            </tr>
                            <?php
                            $count++;
                        }
                    } else {
                        ?>
                        <tr>
                            <td colspan="8"><center>
                    
                                <div class="alert no-data-found"> 
                                No Record Found 
                                </div>
                            </center></td>
                    </tr>       
                <?php } ?>          
                </tbody>
            </table>

        </div>
    </div>
</div>
        <div style="padding:30px 30px;"></div>
<?php $this->load->view('template/footermain', $page, $title); ?>