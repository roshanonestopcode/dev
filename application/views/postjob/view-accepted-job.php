<?php $this->load->view('template/homeheader', $page, $title); ?>



<!--<div class="container-fluid fluid-box-forum-inner">-->
<div class="container-fluid fluid-box-forum2">
<!---****************Post Question Container ****************---->
<div class="container forum-main-container5">       
<!--<div class="container forum-main-container1">-->                                                                               
<div class="table-responsive">    
 <h1 class="content_header">Accepted Jobs</h1>      
    <table id="myTable">
        <thead class="thead-default">
            <tr>
                <th>Lawyer Name</th>
               <!-- <th>Gender</th>
                <th>Mobile No</th>
                <th>Email</th>-->
                <th>Experience</th>
                <th>Proposed Amount(<i class="fa fa-inr"></i>)</th>
                <th>Charged Amount(<i class="fa fa-inr"></i>)</th>
                <th>Category</th>
                <th>Date</th>
                <th><!--Action-->&nbsp; &nbsp;</th>
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
                                <!--<td><?php echo $value->gender; ?></td>
                                <td><?php echo $value->mobile; ?></td>
                                <td><?php echo $value->email; ?></td>-->
                                <td><?php echo $value->experience; ?></td>
                                <td><?php echo number_format($value->fee, 2); ?></td>
                                <td><?php echo number_format($value->proposalamt, 2); ?></td>
                                <td>C</td>
                                <td><?php echo date('d-m-Y',  strtotime($value->created_at)); ?></td>
                                <td><a href="<?php echo base_url();?>view_job_proposal/<?php echo base64_encryption($value->id);?>" class="btncustom view-job"><span style="color:#FFF;" class="glyphicon glyphicon-search" aria-hidden="true"></span> <strong>view</strong></a></td>

                            </tr>
                      <?php
                            $count++;
                        }
                    } else {
                        ?>
                        <tr>
                            <td colspan="12">
                                <div class="alert no-data-found"> 
                                    No Record Found 
                                    </div>
                                </td>
                    </tr>       
                <?php } ?>               
                            
        </tbody>
    </table>
</div>

        </div>
    </div>
<?php $this->load->view('template/footermain', $page, $title); ?>