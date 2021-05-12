<?php
    session_start();
    ob_start();
    include("model/connection.php");
    include("model/userauth.php");
    include("functions/timeago.php");
    include("functions/helpers.php");
    accesslevel("2","3");
    //$selectTestType=selecttype();
    $notyType="newrequest";//use this and the body attributes on pages u want to receive noty for new request
    $_SESSION["rtu"]=$_SERVER['REQUEST_URI'];	
	if($role=="admin"){
            
        if(empty($_SESSION["lm_mybranch"])){
            $selectBranch="";
        }else{
            $selectBranch="AND createtest.branch='$branch'";
        }
        $selectTestType="";

    }elseif($role=="user"){
       
        $access2=$_SESSION["lm_access2"];
        $access3=$_SESSION["lm_access3"];
        if(!empty($access2) && !empty($access3)){

            $selectTestType="";
    
        }elseif(!empty($access2)){
           
            $testType="1";
            $selectTestType="AND createtest.testtype='$testType'";
    
        }elseif(!empty($access3)){
    
            $testType="2";
            $selectTestType="AND createtest.testtype='$testType'";
    
        }
        $selectBranch="AND createtest.branch='$branch'";
    }




    //var_dump($selectTestType);
    $query="SELECT createtest.*,registerpatient.*,createtest.date as datecreated FROM createtest INNER JOIN registerpatient ON createtest.patientid=registerpatient.patientid WHERE createtest.centerusername='$centerusername' AND ((createtest.teststatus='0' AND createtest.date > NOW() - INTERVAL 2 MONTH) OR (createtest.teststatus='1'  AND createtest.date > NOW() - INTERVAL 1 MONTH)) $selectBranch $selectTestType ORDER BY createtest.teststatus,createtest.date DESC;";
    $query.="SELECT commonresult FROM commonresult WHERE centerusername='$centerusername';";
    $query.="SELECT *  FROM usedcomments WHERE centerusername='$centerusername'";
    mysqli_multi_query($conn,$query) or die(mysqli_error($conn));
    $result= mysqli_store_result($conn);

    mysqli_next_result($conn);
    $resultcommon= mysqli_store_result($conn);

    mysqli_next_result($conn);
    $usedcommentresult= mysqli_store_result($conn);
	
	//very necessary dont touch it same as the one on printout.php
	if(isset($_POST["printoptions"]))
	{
		$labno=$_POST["labno"];
		$patientid=$_POST["patientid"];
		$testtodo=$_POST["testtodo"];
		$_SESSION["lm_testtodo"]=$testtodo;
		
	}
	
	
?>

<!DOCTYPE html>
<html lang="en">
    
    <head>
        <?php require_once("templates/head.php");?>
        <style>
            .notice{
                position:fixed;
                top:72px;
                left:45%;      
                display:none;
                z-index:99999px;
            }
           
          .hidden,.notfound,.notfound1,.notfound2{
                display:none
            }
            .ex-page-content{
                padding-top:50px

            }
            .edit-alert {
                display:none;
                margin-top:30px;
            }
            #wth{
                width:100%!important;
            }


        </style>
    </head>

    <body data-noty-type="<?php echo $noty=isset($notyType)?$notyType:false ?>" class="body-color">
        <!-- Begin page -->
        <div id="wrapper">

             <!-- Topbar Start -->
             <div class="navbar-custom">
                <?php require_once("templates/maintopbar.php");?> 
            </div>
            <!-- end Topbar -->

            <!-- ========== Left Sidebar Start ========== -->
            <div class="left-side-menu">

                <div class="slimscroll-menu">

                    <!--- Sidemenu -->
                    <?php require_once("templates/leftsidemenu.php");?>
                    <!-- End Sidebar -->

                    <div class="clearfix"></div>

                </div>
                <!-- Sidebar -left -->

            </div>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">
                    <!-- Start Content-->
                    <div class="container-fluid">
                        <!-- start page title -->
                        <div class="col-lg-12 container" style="margin-top:20px">
                            <div class="row">                        
                                <div class="col-lg-3 no-pad top" >               
                                    <div class="card-box2">
                                        <div>
                                            <h4 style="padding:20px 0px 0px 10px" class="m-t-0 header-title float-left"><b>Pending Test</b></h4>
                                            <div class="dropdown float-right" style="margin: 15px 15px 0px;">
                                                <a href="#" class="dropdown-toggle arrow-none" data-toggle="dropdown" aria-expanded="false">
                                                    <i class="mdi mdi-dots-vertical m-0 text-muted h3"></i>
                                                </a>
                                                <div class="hidden dropdown-menu dropdown-menu-right" x-placement="bottom-end" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(24px, 27px, 0px);">
                                                    <a data-type="seen" class="action dropdown-item" href="javascript:void(0)">Mark all as seen</a>
                                                    
                                                </div>
                                                
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                        <hr>
                                        <div style="margin-bottom:10px" class="col-lg-12">
                                            <input id="searchpatient" placeholder="Search patient by name,id and contact" type="text" class="form-control">
                                            <!-- <select id="filter" style="margin-top:2px" class="col-12 form-control float-right"><option value="1">--filter Records--</option><option value="1">select All</option><option value="2">unselect All</option></select> -->
                                        </div><div class="clearfix"></div><hr>
                                       
                                        <div class="nicescroll " style="height:400px;padding:0px">															
                                            <table class="table table-striped">
                                            <tbody>
                                                    <div class="notfound1 ex-page-content text-center">
                                                        <img style="height:100px;width:100px;margin-bottom:10px" src="assets/images/defaults/norecord.png"/>
                                                        <p style="position:relative;bottom:2px" class="text-muted">
                                                            No Record Found.<br>Try Refining your Search Well.
                                                        </p>
                                                    </div>
                                                    <?php 
                                                        if($result)
                                                        {
                                                            if(mysqli_num_rows($result)>0)
                                                            {
                                                                while($row=mysqli_fetch_assoc($result))
                                                                {

                                                                    $id=$row["id"];
                                                                    $firstname=$row["firstname"];
                                                                    $surname=$row["surname"]; 
                                                                    $fullname=$firstname." ".$surname;
                                                                    $patientid=$row["patientid"]; 
                                                                    $contact=$row["contact"];                       
                                                                    $yob=$row["yob"]; 
                                                                    $mob=$row["mob"]; 
                                                                    $mob=date("m", strtotime($mob));//convert to digit
                                                                    $dob=$row["dob"];
                                                                    $birthday=$yob."-".$mob."-".$dob;
                                                                    $age=calculate_age($birthday);
                                                                    $birthday1=date("Y-m-d",strtotime($birthday));
                                                                    $gender=$row["gender"]; 
                                                                    $labno=$row["labno"];
                                                                    $sessionId=$row["sessionid"];
                                                                    $testStatus=$row["teststatus"];
                                                                    if($testStatus=="1"){
                                                                        $statusColor="text-success";
                                                                    }elseif($testStatus=="0"){
                                                                        $statusColor="text-primary";
                                                                    }else{
                                                                        $statusColor="text-primary";
                                                                        $testStatus="0"; //reset teststatus to zero if it is empty
                                                                    }
                                                                    $testType=$row["testtype"];
                                                                    if($testType=="1"){
                                                                        $classType="lab-test";
                                                                    }elseif($testType=="2"){
                                                                        $classType="radiology-test";
                                                                    }
                                                                    $selectedTest=$row["selectedtest"]; 
                                                                    $selectedTest=unserialize(base64_decode($selectedTest)); 
                                                                    $selectedTest=htmlspecialchars(json_encode($selectedTest));
                                                                    $rowdate=$row["datecreated"];
                                                                    $date=date("D,jS M Y",strtotime($rowdate));

                                                                    $query="SELECT testresult,comment FROM labtest WHERE labno='$labno'";
                                                                    $result1=mysqli_query($conn,$query);   
                                                        
                                                                    if($result1)
                                                                    {	
                                                        
                                                                        if(mysqli_num_rows($result1)>0)
                                                                        {
                                                                            $row1=mysqli_fetch_assoc($result1);
                                                                            $testresult=$row1["testresult"];
                                                                            $comment=$row1["comment"];
                                                                            $testresult=unserialize(base64_decode($testresult)); 
                                                                            $testresult=htmlspecialchars(json_encode($testresult));

                                                                        }else{

                                                                            $testresult="";
                                                                            $comment="";
                                                                        }
                                                                        
                                                                        mysqli_free_result($result1);

                                                                    }else{

                                                                        $testresult="";
                                                                        $comment="";
                                                                    } 
                                                                   
                                                                    echo '
                                                                    <tr  class="userlist1 " data-filter-item1 data-filter-fullname="'.strtolower($fullname).'"  data-filter-firstname="'.strtolower($firstname).'"  data-filter-surname="'.strtolower($surname).'" data-filter-contact="'.strtolower($contact).'" data-filter-patientid="'.strtolower($patientid).'" 
                                                                    data-fullname="'.ucwords($fullname).'" 
                                                                    data-firstname="'.$firstname.'"
                                                                    data-surname="'.$surname.'"
                                                                    data-contact="'.$contact.'" 
                                                                    data-patientid="'.$patientid.'"
                                                                    data-age="'.$age.'" 
                                                                    data-birthday="'.$birthday1.'"                    
                                                                    data-gender="'.$gender.'"         
                                                                    data-labno="'.$labno.'"   
                                                                    data-sessionid="'.$sessionId.'"   
                                                                    data-testtype="'.$testType.'" 
                                                                    data-selectedtest="'.$selectedTest.'" 
                                                                    data-testresult="'.$testresult.'" 
                                                                    data-comment="'.$comment.'"
                                                                    data-isdone="'.$testStatus.'"
                                                                    data-date="'.$date.'" 
                                                                    data-id="'.$id.'">
                                                                        <td style="width:15px"><span   data-id="'.$id.'" style="cursor:pointer;display:inline;margin-left:5px" class="fa fa-plus text-danger"></span></td>                                             
                                                                        <td class="'.$statusColor.' pending text-primary '.$classType.'" style="cursor:pointer;">'.ucwords($fullname).'<span class="badge badge-gray" style="margin-right:1px;float:right;background-color: #dee2e6;">'.time_ago(strtotime($rowdate)).'</span></td>
                                                                                                        
                                                                    </tr>';
                                                                        
                                                                    
                                                                }
                                                                
                                                                
                                                            }else
                                                            {
                                                                echo '<div class="autonotfound1 ex-page-content text-center">
                                                                        <img style="height:100px;width:100px;margin-bottom:10px" src="assets/images/defaults/norecord.png"/>
                                                                        <p style="position:relative;bottom:2px" class="text-muted">
                                                                            No Pending Lab Test  Available.
                                                                        </p>
                                                                    </div>';
                                                                
                                                            }
                                                        }else
                                                        {
                                                            echo '<div class="autonotfound1 ex-page-content text-center">
                                                                    <img style="height:100px;width:100px;margin-bottom:10px" src="assets/images/defaults/norecord.png"/>
                                                                    <p style="position:relative;bottom:2px" class="text-muted">
                                                                        Problem connecting...<a href="">Refresh page</a>
                                                                    </p>
                                                                </div>';
                                                            
                                                        }
                                                    
                                                    ?>                         
                                                </tbody>
                                            </table>                                            
                                        </div>
                                    </div>
                                    <div class="card-box2">
                                        <div class="sub-box" style="padding: 10px 10px;">
                                            <h6><b>Select test parameters below</b></h6>
                                        </div>
                                        <div  style="height:475px;padding:0px;border:1px solid #DEE2E6" id="displaytest">
                                            <div style="height:475px;padding:0px;border:1px solid #DEE2E6">
                                                <div style="padding:70px 0px 230px 70px">
                                                    <img class="text-center" style="height:80px;width:80px" src="assets/images/defaults/norecord.png"/><br>
                                                    <p class="text-muted">
                                                        No test selected
                                                    </p>
                                                </div>
                                                <div id="display-on-fetch">
                                                    <span id="display-loader"></span>
                                                    <div style="">
                                                        <div class="sub-box" style="padding: 0px 10px; border-radius: 0 0 4px 4px;">
                                                            <div style="padding-top: 10px;">
                                                                <select class="form-control" id="example-select" >
                                                                    <option selected="">---No Test Available----</option>
                                                                    
                                                                </select>
                                                            </div>
                                                            <div style="padding-top: 10px">
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <a href="#" class="btn btn-primary backtop" style="margin-top:100px;font-size: 20px;position: fixed;bottom: 90px;">
                                            <i class="fe-chevron-up"></i>
                                        </a>
                                    </div>
                                </div> 

                                <div class="col-lg-9">
                                    <div>
                                        <div class="card-box">
                                            <div class="page-title-box">
                                                <h4 class="m-t-0 header-title"><b>Perform  Selected Test</b></h4><hr> 
                                                <div style="float:left" class="btn-group mb-2">
                                                    <button  type="button" id="done" data-labno="" data-patientid="" data-isdone="" class="done options btn btn-success waves-effect">Done</button>
                                                </div>
                                                <div class="dropdown float-right">
                                                    <a href="#" class="dropdown-toggle arrow-none" data-toggle="dropdown" aria-expanded="false">
                                                        <i class="mdi mdi-dots-vertical m-0 text-muted h3"></i>
                                                    </a>
                                                    <div class="hidden dropdown-menu dropdown-menu-right" x-placement="bottom-end" >
                                                        
                                                        <a title="Test performed archive" href="labtestarchive?pos=1&t=s&testtype=Any&tn=0" class="action dropdown-item">Archive</a>
                                                        <a class="action dropdown-item" href="toptest?pos=1&t=s&testtype=Any&gender=Any&year=<?php echo date("Y")?>&age=Any">Top performed test</a>
                                                        <a id="attachments" href="javascript:void(0)" class="action dropdown-item"><span class="fa fa-upload"></span> Upload</a>
                                                    </div> 
                                                </div>
												
												<div class="clearfix"></div>
                                            </div>
											        
                                            <div class="sub-box col-lg-12" style="padding: 10px;margin-bottom: 20px;">
                                                <div class="page-title-box">
                                                    <h6 class="sub-title">Patient Info</h6>
                                                </div>
                                               
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <form>
                                                            <div class="form-group row mb-3">
                                                                <label for="inputEmail3" class="col-4 col-form-label">Patient ID:<span style="color:Red">*</span></label>
                                                                <div class="col-8">
                                                                    <input id="patientid" class="form-control" type="text" readonly>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row mb-3">
                                                                <label for="inputEmail3" class="col-4 col-form-label">Patient Name:<span style="color:Red">*</span></label>
                                                                <div class="col-8">
                                                                    <input id="fullname" class="form-control" type="text" readonly>
                                                                </div>
                                                            </div>
                                                            
                                                            <div class="form-group row mb-3">
                                                                <label for="inputEmail3" class="col-4 col-form-label">Lab Number:<span style="color:Red">*</span></label>
                                                                <div class="col-8">
                                                                    <input id="labno" class="form-control" type="text" readonly>
                                                                </div>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    
                                                    <div class="col-lg-6">
                                                        <form>
                                                            <div class="form-group row mb-3">
                                                                <label for="inputEmail3" class="col-4 col-form-label">Age:<span style="color:Red">*</span></label>
                                                                <div class="col-8">
                                                                    <input id="age" name="age" class="form-control" type="" readonly>
                                                                </div>
                                                            </div>
                                                            <div class="form-group row mb-3">
                                                                <label for="inputEmail3" class="col-4 col-form-label">Gender:<span style="color:Red">*</span></label>
                                                                <div class="col-8">
                                                                    <input id="gender" class="form-control" type="" readonly>
                                                                </div>
                                                            </div>
                                                            <div  id="scroll-to"></div>
                                                            <div class="form-group row mb-3">
                                                                <label for="inputEmail3" class="col-4 col-form-label">Date Created :</label>
                                                                <div class="col-8">
                                                                    <input id="date" class="form-control" type="text" readonly>
                                                                </div>
                                                            </div>
                                                            <input id="sessionid" class="form-control" value="" type="hidden" readonly>
                                                            <input id="testtype" class="form-control" value="" type="hidden" readonly>
                                                        </form>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div class="form-group">
                                                            <label for="inputEmail3">Test Requested</label>
                                                            <div id="test-requested" class="col-12" style="min-height:50px;border-radius:5px;width:100%;border:1px solid #e3e3e3;padding:10px">
                                                                 
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>                                                 
                                            <div  class="col-lg-12 sub-box2">
                                                <div class="page-title-box">
                                                    <h6 id="page-title" class="sub-title">Medical laboratory test result:</h6>
                                                </div>
                                                <div class="row">
                                                    <div class="col-lg-12">
                                                        <div>
                                                            <h4 id="parametername" class="text-primary" style="margin:0px"></h4><span style="font-size:12px" id="parametername-testname"></span>
                                                        </div>
                                                        <div id="display-area">
                                                            <div  id="lab-display-area">
                                                                <div class="row" style="padding: 10px;">
                                                                    <div class="col-lg-7 sub-box2">
                                                                        <div class="page-title-box">
                                                                            <h6 class="sub-title">Input Your Findings </h6>
                                                                        </div>
                                                                        <div id="result-entry">
                                                                            <div class="form-group row mb-1" id="input1">
                                                                                <div class="col-lg-12">
                                                                                    <input list="commonresult" autocomplete="on" id="findings" name="findings" class="form-control"  type="text">

                                                                                    <a class="lab-input1 bg-info text-light inputToggle float-right mt-2" style="padding:1px 4px;border-radius: 3px;font-size: 14px;" data-plugin="tippy" data-tippy-arrow="true" data-tippy-placement="top" title="Expand Input Field"><i class="fe-maximize"></i></a>
                                                                                </div>
                                                                            </div>
                                                                            <!-- <div class="form-group row mb-2" id="input2" style="display: none">
                                                                                <div class="col-lg-12">
                                                                                    <a href="javascript:void(0)" id="commoncomments" class="text-danger float-right mb-2">Common Findings</a>

                                                                                    <textarea list="commonresult" autocomplete="on" id="findings" name="findings" class="form-control"  type="text" rows="6"></textarea>

                                                                                    <a class="lab-input2 bg-info text-light inputToggle float-right mt-2 mb-1" style="padding:1px 4px;border-radius: 3px;font-size: 14px;" data-plugin="tippy" data-tippy-arrow="true" data-tippy-placement="top" title="Minimize Input Field"><i class="fe-minimize"></i></a>
                                                                                </div>
                                                                            </div> -->
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-lg-5 container mg-top">
                                                                        <div class="sub-box2" style="padding: 10px;">
                                                                            <div class="page-title-box">
                                                                                <h6 class="sub-title">Reference Range</h6>
                                                                            </div>
                                                                            <div class="form-group row mb-3">
                                                                                <div class="col-lg-12">
                                                                                    <h4 id="parameterrange" class="text-center" style="background: aliceblue;padding: 10px;border-radius: 4px;"></h4>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="control-btn">
                                                                    <button id="add" type="button" class="btn btn-primary waves-effect waves-light">Add</button>                                                                
                                                                    <button id="removeall" type="button" class="btn btn-primary waves-effect waves-light">Remove All</button>
                                                                </div>
                                                                <div style="max-height:800px" class="nicescroll table-responsive col-lg-12">
                                                                    <div class="row">            
                                                                        <table class="test-table table table-hover table-bordered table-striped">
                                                                            <thead class="">
                                                                                <tr>
                                                                                    <th>#</th>
                                                                                    <th>Test Name</th>
                                                                                    <th>Parameter</th>
                                                                                    <th>Result</th>
                                                                                    <th>Reference</th>
                                                                                    <th>Action</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody id="tbody-selectedtest">
                                                                                <tr id="notestselected">
                                                                                    <td style="background:#f4f8fb" class="text-center" colspan="7">No Test Selected</td>
                                                                                </tr>

                                                                            </tbody>
                                                                        </table>                  
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div  class="hidden" id="radiology-display-area">
                                                                <div class="row" style="padding: 10px;">
                                                                    <div class="col-lg-12 sub-box2">
                                                                        <div class="page-title-box">
                                                                            <p class="sub-title"><span>Input your findings</span><a href="javascript:void(0)" id="commonfindings" class="text-danger float-right">Common findings</a></p>
                                                                            <div class="clearfix"></div>
                                                                        </div>
                                                                        <div class="form-group row mb-3">
                                                                            <div class="col-lg-12">
                                                                                <textarea id="findings" name="findings" class="form-control"  type="text"></textarea>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="control-btn">
                                                                    <button id="add" type="button" class="btn btn-primary waves-effect waves-light">Add</button>                                                                
                                                                    <button id="removeall" type="button" class="btn btn-primary waves-effect waves-light">Remove All</button>
                                                                </div>
                                                                <div id="wth" style="max-height:800px;" class="nicescroll table-responsive col-lg-12">
                                                                    <div class="row">            
                                                                        <table class="test-table table table-hover table-bordered table-striped">
                                                                            <thead class="">
                                                                                <tr>
                                                                                    <th>#</th>
                                                                                    <th>Test Name</th>
                                                                                    <th>Parameter</th>
                                                                                    <th>Result</th>
                                                                                    <th>Action</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody id="tbody-selectedtest">
                                                                                <tr id="notestselected">
                                                                                    <td style="background:#f4f8fb" class="text-center" colspan="7">No Test Selected</td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>                  
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <datalist id="commonresult">
                                                            <?php
                                                            if($resultcommon)
                                                            {
                                                            
                                                                while($row=mysqli_fetch_assoc($resultcommon))
                                                                {
                                                                    $commonresult=$row["commonresult"];
                                                                    echo '<option value="'.$commonresult.'">'.$commonresult.'</option>';

                                                                }
                                                                echo '<option value="'.date("d/m/Y").'">'.date("d/m/Y").'</option>
                                                                <option value="'.date("d-m-Y").'">'.date("d-m-Y").'</option>
                                                                <option value="'.date("H:i:s").'">'.date("H:i:s").'</option>
                                                                <option value="'.date("H:i a").'">'.date("H:i a").'</option>
                                                                <option value="'.date("h:i a").'">'.date("h:i a").'</option>';
                                                            }
                                                            
                                                            ?>
                                                        </datalist>
                                                        <div class="row">
                                                            <div class="col-lg-12">
                                                                <p class="sub-title"><span>Impressions and recommendations:</span><a href="javascript:void(0)" id="commoncomments" class="text-danger float-right">Common comments</a></p>
                                                                <div class="clearfix"></div>
                                                            </div>
                                                        </div>
                                                        <div class="form-group row mb-3">
                                                            <div class="col-lg-12">
                                                                <!-- <textarea id="comment" rows="5" class="form-control"></textarea> -->
                                                                <div class="comment" id="summernote-editor">
																
															    </div>
                                                            </div>
                                                        </div>                           
                                                        <div class="clearfix"></div>
                                                         <hr>
                                                        <div class="control-btn">
                                                            <button type="button" class="save btn btn-primary waves-effect waves-light">Save</button>
                                                            <button data-labno="" id="preview" type="button" class="btn btn-primary waves-effect waves-light">Preview</button>
                                                            <a href="" id="refreshner" type="button" class="btn btn-primary waves-effect waves-light">Refresh</a>
                                                        </div>
                                                       
                                                    </div>
                                                </div>
                                            </div>
                                            
                                        </div>
                                    </div> <!-- end col -->
                                </div> 
                            </div><!-- end row -->                        
                        </div>
                    </div> <!-- container -->
                </div> <!-- content -->
                <!--  Modal content for the above example -->
               <div class="testresult modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title editmodaltitle" id="myLargeModalLabel">Pending Test</h4><br>
                                <div style="margin-left:160px" id="edit-success"  class="alert alert-success edit-alert" role="alert">
                                   
                                </div>
                                <div style="margin-left:160px" id="edit-danger"  class="alert alert-danger edit-alert" role="alert">
                                   
                                </div>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            </div>
                            <div id="testresult-body" class="modal-body">
                               
                            </div>
                            <div class="modal-footer">
								<div style="float:left;position: absolute;left: 20px;" class="btn-group mb-2">
									<button  type="button" id="done" data-labno=""  class="done options btn btn-success waves-effect">Done</button>
								</div>
                                <div class="btn-group mb-2">
                                    <button data-labno="" type="button" class="btn btn-success">Preview</button>
                                    <button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="mdi mdi-chevron-down"></i>
                                    </button>
                                    <div class="dropdown-menu" x-placement="bottom-start" style="position: absolute; will-change: transform; top: 0px; left: 0px; transform: translate3d(82px, 35px, 0px);">
                                        <a  data-labno="" id="printall" class="options dropdown-item" href="javascript:void(0)">Preview All</a>
                                        <a  data-labno="" id="printselected" class="options dropdown-item" href="javascript:void(0)">Preview Selected</a>
                                        
                                    </div>
                                    <button style="margin-left:5px" type="button" class="btn btn-danger waves-effect" data-dismiss="modal">OK</button>
                                </div>
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal -->
                <!--  Modal content for the above example -->
                <div class="commentmodal modal fade bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title editmodaltitle" id="myLargeModalLabel">Commonly Used Comments</h4><br>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            </div>
                            <div id="testresult-body" class="modal-body">
                                <div class="form-group" style="margin:0px 20px">
                                    <input id="searchcomment" type="text" class="form-control" placeholder="search by comment name">
                                </div>
                                <div style="height: 500px" class="nicescroll">
                                    <div class="notfound2 ex-page-content text-center">
                                        <img style="height:100px;width:100px;margin-bottom:10px" src="assets/images/defaults/norecord.png"/>
                                        <p style="position:relative;bottom:2px" class="text-muted">
                                            No Record Found.<br>Try Refining your Search Well.
                                        </p>
                                    </div>
                                    <?php
                                    if($usedcommentresult)
                                    {
                                        if(mysqli_num_rows($usedcommentresult)>0)
                                        {

                                                while($row=mysqli_fetch_assoc($usedcommentresult))
                                                {
                                                    $commentname=$row["commentname"];
                                                    $comment=$row["comment"];
                                                    echo '<div data-filter-item2 data-filter-commentname="'.$commentname.'" class="commentlist comment-area">
                                                        <h5 class="commentname com-n">Comment Name : '. ucwords($commentname).'
                                                            <span id=""  title="select comment" class="copycomment  copier mdi mdi-content-copy btn btn-primary btn-sm"></span>
                                                        </h5>
                                                        <div class="form-group con-view">
                                                            <div class="col-lg-12">
                                                                <div class="commenter">'.htmlspecialchars_decode(stripslashes($comment)).'</div>
                                                            </div>
                                                        </div>
                                                    </div>';

                                                }

                                        }else{

                                                echo '<div class="autonotfound2 ex-page-content text-center">
                                                    <img style="height:100px;width:100px;margin-bottom:10px" src="assets/images/defaults/norecord.png"/>
                                                    <p style="position:relative;bottom:2px" class="text-muted">
                                                        No common test comments available.<a href="usedcomments">Create comments</a>.
                                                    </p>
                                                </div>';
                                            }
                                            

                                        }

                                    else{

                                        echo '<div class="ex-page-content text-center">
                                            <img style="height:100px;width:100px;margin-bottom:10px" src="assets/images/defaults/norecord.png"/>
                                            <p style="position:relative;bottom:2px" class="text-muted">
                                            Problem connecting...<a href="">Refresh page</a>
                                            </p>
                                        </div>';
                                    }
                                    
                                    ?>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-danger waves-effect" data-dismiss="modal">cancel</button>
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal-dialog -->
                </div><!-- /.modal -->
               
                <!-- Footer Start -->
                <?php require_once("templates/footer.php")?>
                <!-- end Footer -->

                </div>

            <!-- ============================================================== -->
            <!-- End Page content -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->

        <!-- Right Sidebar -->
        <div class="right-bar">
            <?php require_once("templates/userrightside.php")?>
        </div>
        <!-- /Right-bar -->

        <!-- Right bar overlay-->
        <div class="rightbar-overlay"></div>
        
        <!-- Vendor js -->
        <script src="assets/js/vendor.min.js"></script>
         <!-- Init js-->
        <script src="assets/libs/nicescroll/nicescroll.js"></script>
        <script src="assets/libs/moment/moment.min.js"></script>
        <script src="assets/libs/tippy-js/tippy.all.min.js"></script>
        <!-- App js -->
        <script src="assets/js/app.min.js"></script>   
		<script src="assets/plugins/bootstrap-filestyle/js/bootstrap-filestyle.min.js" type="text/javascript"></script>
        <!-- Summernote js -->
        <script src="assets/libs/summernote/summernote-bs4.min.js"></script>
        <!-- Init js -->
        <script src="assets/js/pages/form-summernote.init.js"></script>
        <script src="assets/plugins/notifyjs/js/notify.js"></script>
		<script src="assets/js/howler.min.js"></script>
        <script src="assets/js/custom.js"></script>		

       
        <script>
        $(document).ready(function()
        {
            $(".nicescroll").niceScroll({
                cursorcolor:"#e3e3e3",
                cursorwidth:"10px"
            });

            
            //pricing for extension starts here
            a=0
            //todo-list todo-input-text
            $("body").on("click",".remove",function()
            {
                var rs=confirm("Are you sure to Delete Parameter")
                if(rs)
                {
                    $(this).parents("tr").fadeOut().remove();
                    
                    var b=0;
                    $('.test-badge').each(function()
                    {
                        $(this).html(++b)
                        
                        
                    })
                    
                    var count=$('.test-badge').length
                    a=count;
					
					if($("#tbody-selectedtest").children(".selectedparameters").length<1)
					{
						
						$("#tbody-selectedtest").append('<tr id="notestselected"><td style="background:#f4f8fb" class="text-center" colspan="7">No Test Selected</td></tr>')//hide the no drugs selected row     */

					}

                    var testName= $(this).parents("tr").attr("data-parametertestname");
                    var parameterName=$(this).parents("tr").attr("data-parametername");

                    $("#displaytest").find('.parameters[data-parametername="' + parameterName + '"].parameters[data-testname="' + testName + '"]').css({"color":"#72747b"}); 
                    $("#displaytest").find('.parameters[data-parametername="' + parameterName + '"].parameters[data-testname="' + testName + '"]').attr("data-parameter-status","0");  
                       
                }
            })

            $("body").on("click",".edit-result",function()
            {

                var parametername=$(this).parents("tr").attr("data-parametername");  
				var testname=$(this).parents("tr").attr("data-testname");
                var parametername=$(this).parents("tr").attr("data-parametername");                
                var reference=$(this).parents("tr").attr("data-reference"); 
                var testname=$(this).parents("tr").attr("data-parametertestname");
                var unit=$(this).parents("tr").attr("data-unit");
                var range=$(this).parents("tr").attr("data-parameterrange");
                var findings=$(this).parents("tr").attr("data-findings");
                $("#findings").val(findings);
                
                $("#parametername").html(parametername).attr({"data-parametertestname":testname,"data-reference":reference,"data-unit":unit})
                $("#parametername-testname").html(testname);
                $("#parameterrange").html(range)
                $("#findings").focus()
                $('html,body').animate({
                    scrollTop:$("#scroll-to").offset().top
                },500)
                //fetch configurations
                $(this).parents("tr").fadeOut().remove();
                    
                var b=0;
                $('.test-badge').each(function()
                {
                    $(this).html(++b)
                    
                    
                })
                
                var count=$('.test-badge').length
                a=count;
                
                if($("#tbody-selectedtest").children(".selectedparameters").length<1)
                {
                    
                    $("#tbody-selectedtest").append('<tr id="notestselected"><td style="background:#f4f8fb" class="text-center" colspan="7">No Test Selected</td></tr>')//hide the no drugs selected row     */

                }



            })

            $("body").on("click","#removeall",function(e)
            {
				if( $("#tbody-selectedtest").find(".selectedparameters").length>0)
				{
				
					var ra=confirm("Are you sure to Delete Parameter")
					if(ra)
					{
						e.preventDefault();
						$("#tbody-selectedtest").html("");	            
						a=0  //very necessary
						
						$("#tbody-selectedtest").append('<tr id="notestselected"><td style="background:#f4f8fb" class="text-center" colspan="7">No Test Selected</td></tr>')
					}


                    $("#displaytest").find('.parameters').css({"color":"#72747b"}); 
                    $("#displaytest").find('.parameters').attr("data-parameter-status","0"); 
				}
            }) 


            var labContent=$('#lab-display-area').clone();
            var radiologyContent=$('#radiology-display-area').clone();
           
            $('body').on('click','.pending',function()
            {
                //populate biodata	
                $("#patientid").val($(this).parents("tr").attr("data-patientid"));                
                $("#fullname").val($(this).parents("tr").attr("data-fullname"));
                $("#gender").val($(this).parents("tr").attr("data-gender"));                 
                $("#age").val($(this).parents("tr").attr("data-age")).attr("data-birthday",$(this).parents("tr").attr("data-birthday")); 
                $("#labno").val($(this).parents("tr").attr("data-labno"));
                $("#sessionid").val($(this).parents("tr").attr("data-sessionid"));
                $("#testtype").val($(this).parents("tr").attr("data-testtype"));
                $("#date").val($(this).parents("tr").attr("data-date"));

                //for resetting fields
                a=0;
                //var selectedtest=$(this).parents("tr").attr("data-selectedtest");
                var testType=$(this).parents("tr").attr("data-testtype");
                $(".note-editable").html(comment);

                if(testType=="1"){
                    $(".range").show(); 
                    $("#attachments").hide(); 
                    $("#display-area").html("").append(labContent);
                    $("#page-title").html("Medical Laboratory test result");

                }else if(testType=="2"){

                    $(".range").hide(); 
                    $("#attachments").show();  
                    $("#display-area").html("").append(radiologyContent).find("#radiology-display-area").show();
                    $("#page-title").html("Radiology test result");

                    
                }


                $("#tbody-selectedtest").html("");
                $(".note-editable").html("");
                $("#tbody-selectedtest").find("#notestselected").remove().hide()//hide the no drugs selected row     */
                $("#parameterrange").html("")
                $("#parametername").html("")          
                $("#findings").val("");               
                $("#parametername").attr("data-parametertestname","");
                $("#parametername").attr("data-reference","");
                

                if($("#tbody-selectedtest").children(".selectedparameters").length<1)
                {
                    $("#tbody-selectedtest").append('<tr id="notestselected"><td style="background:#f4f8fb" class="text-center" colspan="7">No Test Selected</td></tr>')
                    
                }

                var displaySelected="";
                var selectedtest=$(this).parents("tr").attr("data-selectedtest");
                testselected=JSON.parse(selectedtest)
                const values = Object.values(testselected)
                for (const value of values)
                {
                    thistestname=value["testname"];
                    displaySelected+=thistestname+" , ";

                }
                $("#test-requested").html(displaySelected);
                var labno=$(this).parents("tr").attr("data-labno");
                var patientid=$(this).parents("tr").attr("data-patientid"); 
                var isdone=$(this).parents("tr").attr("data-isdone");
                var comment=$(this).parents("tr").attr("data-comment"); 
                var testresult=$(this).parents("tr").attr("data-testresult"); 
                $(".done").attr({"data-labno":labno,"data-isdone":isdone,"data-patientid":patientid});
                //console.log(testresult);
                if(testresult=="")
                {
                    $("#preview").attr("data-labno","");
                    $(".save").html("Save");
                }else
                {
                    $("#preview").attr("data-labno",labno);//very necessary for the preview display
                    $(".options").attr({"data-labno":labno,"data-isdone":isdone,"data-patientid":patientid});
                   
                    $(".save").html("Update");
                    //$(".comment").val(comment);
                    $(".note-editable").html(comment);

                    testresult=JSON.parse(testresult)
                    const values = Object.values(testresult)
                    for (const value of values)
                    {
                    
                        var parameterrange=value["parameterrange"];              
                        var parametername=value["parametername"];                      		
                        var findings=value["findings"];      
                        var parametertestname=value["parametertestname"];      
                        var reference=value["reference"];      
                        var unit=value["unit"]; 
                        
                       
                        $("#tbody-selectedtest").find("#notestselected").remove().hide()//hide the no drugs selected row    
                        $("#tbody-selectedtest").append('<tr class="selectedparameters" data-parametertestname="'+parametertestname+'" data-parametername="'+parametername+'" data-unit="'+unit+'" data-reference="'+reference+'" data-parameterrange="'+parameterrange+'" data-findings="'+findings+'"><td style="width:80px"><span  class="test-badge badge badge-sm badge-pill badge-info m-r-10">'+ ++a +'</span></td><td>'+parametertestname +'</td><td>'+parametername +'</td><td class="cashprice">'+ findings +'</td><td class="range">'+ parameterrange +'</td><td ><span  title="Edit" class="edit-result fas fa-pencil-alt text-primary" style="cursor:pointer;margin-right:10px"></span><span title="Remove" style="cursor:pointer" class="remove fa fa-trash text-danger" style="cursor:pointer"></span></td></tr>');
                        testType=="1"?$(".range").show():$(".range").hide();
                    }

                }
                $('html,body').animate({
                    scrollTop:$("#scroll-to").offset().top
                },500)
                //fetch configurations

                $("#displaytest").html("<img style='margin:25% 45% 20%;width:50px;height:50px' src='assets/images/defaults/loader.gif'/>")
                $.ajax
                ({
                    url:"/model/mod-fetchlabtest.php",
                    type:"POST", 
                    data:{'selectedtest':selectedtest},
                    success:(function(response)
                    {
                        $("#displaytest").html(response);
                        $(".nicescroll").niceScroll({
                            cursorcolor:"#e3e3e3",
                            cursorwidth:"10px"
                        });

                        //console.log(pointerArray)
                        //auto indicate what has already been done
                        if($("#tbody-selectedtest").children(".selectedparameters").length>0)
                        {
                            
                            var testParametersObj={};
                            counter=0;			
                            $("#tbody-selectedtest").find("tr").each(function()
                            {
                                var objectDetails={};
                                var parameterTestName=$(this).attr("data-parametertestname");	
                                var parameterName=$(this).attr("data-parametername");	
                                objectDetails[parameterTestName]=parameterName
                                testParametersObj[counter++]=objectDetails;
                            })

                            $.each(testParametersObj, function( key, value ) {
                                $.each(value, function( key, value ) {
                                    $("#displaytest").find('.parameters[data-parametername="' + value + '"].parameters[data-testname="' + key + '"]').css({"color":"red"}); 
                                    $("#displaytest").find('.parameters[data-parametername="' + value + '"].parameters[data-testname="' + key + '"]').attr("data-parameter-status","1");  
                                })
                            });
                            
                        }
                        //autoselect the next available test
                        var pointerArray=$("#displaytest").find('.parameters[data-parametername="' + parametertestname + '"].parameters[data-parameter-status="0"]')
                        if($(pointerArray).length>0){

                            //find that next test picks it data attribute like when u click on parameters 
                            //pointerSelecter() 
                            var nextParameterName=$(pointerArray[0]).attr("data-parametername");
                            var nextTestName=$(pointerArray[0]).attr("data-testname");
                            pointerSelecter(nextParameterName,nextTestName);

                        }else{

                            var pointerArray=$("#displaytest").find(".parameters[data-parameter-status='0']")
                            if($(pointerArray).length>0){

                                //find that next test picks it data attribute like when u click on paraameters 
                                //pointerSelecter() 
                                var nextParameterName=$(pointerArray[0]).attr("data-parametername");
                                var nextTestName=$(pointerArray[0]).attr("data-testname");
                                pointerSelecter(nextParameterName,nextTestName);

                            }else{
                                
                                //to reset fields

                                $("#parameterrange").html("")
                                $("#parametername").html("") 
                                $("#parametername-testname").html("");                               
                                $("#findings").val("");               
                                $("#parametername").attr("data-parametertestname","");
                                $("#parametername").attr("data-reference","");

                            }
                            //find the next available test and picks it data attribute likw when u click on paraameters
                            //pointerSelecter() 
                        }

                    })
                }) 
               
            })

            //pricing for extension starts here
            $("body").on("change","#test-todo",function()
            {
                var testname=$("option:selected").attr("data-testname");                
                var toFilter=$("[data-filter-test");
                toFilter.addClass("hidden");

              
                if(testname=="0")
                {
                    $("[data-filter-test").removeClass("hidden");
                    
                }else
                {
                    
                    $("[data-filter-testname*='"+ testname.toLowerCase() +"']").removeClass("hidden");

                } 
            })

            //pricing for extension starts here
            $("body").on("click",".parameters",function()
            {

                var parametername=$(this).attr("data-parametername");  
				var testname=$(this).attr("data-testname");
				
				if($("body").find('.selectedparameters[data-parametername="' + parametername + '"].selectedparameters[data-parametertestname="' + testname + '"]').length==1){

					$("#leftbottomfeedback").fadeIn().html("<span style='cursor:pointer;font-size:15px' class='fa fa-close pull-right'></span></span><br><p>Parameter selected has an existing result<br><span style='cursor:pointer;float:right;font-size:13px;margin-right:10px' class='okk'>OK</span></p>");
				}else
                {
                    var gender=$("#gender").val();
                    var age=$("#age").val();
                    var birthday=$("#age").attr("data-birthday");             
                
                    var now = moment(new Date()); //todays date
                    var end = moment(birthday); // another date
                    var duration = moment.duration(now.diff(end));
                    var birthday = duration.asMilliseconds()
                
                    var parametername=$(this).attr("data-parametername");                
                    var reference=$(this).attr("data-reference"); 
                    var testname=$(this).attr("data-testname");
                    var unit=$(this).attr("data-unit");
                    $("#findings").val("");
                    
                    $("#parametername").html(parametername).attr({"data-parametertestname":testname,"data-reference":reference,"data-unit":unit})
                    $("#parametername-testname").html(testname);
                    //$("#radiology-display-area").find("#findings").attr("rowspan","10")
                
                    var malemin=$(this).attr("data-malemin");                
                    var malemax=$(this).attr("data-malemax"); 
                    var femalemin=$(this).attr("data-femalemin");                
                    var femalemax=$(this).attr("data-femalemax"); 
                    var childmin=$(this).attr("data-childmin");                
                    var childmax=$(this).attr("data-childmax"); 
                    var samemin=$(this).attr("data-samemin");                
                    var samemax=$(this).attr("data-samemax"); 
                    var flags=$(this).attr("data-flags"); 
                    var childlimit=12;//can be changed 
                    childlimit=31536000000*childlimit;//number of milliseconds
                
                    if(flags=="Yes")
                    {
                        if(samemin!="" && samemax!="")
                        {
                            range=samemin +" - "+ samemax

                        }else
                        {
                            if(birthday>=childlimit)
                            {

                                if(gender=="Male")
                                {

                                    range=malemin +" - "+ malemax

                                }else if(gender=="Female"){

                                    range=femalemin +" - "+ femalemax
                                }

                            }else if(birthday<childlimit)
                            {

                                if(childmin!="" && childmax!="")
                                {
                                    range=childmin +" - "+ childmax

                                }else
                                {

                                    if(gender=="Male")
                                    {

                                        range=malemin +" - "+ malemax

                                    }else if(gender=="Female"){

                                        range=femalemin +" - "+ femalemax
                                    }


                                }

                            }

                        }

                        $("#parameterrange").html(range)

                    }else if(flags=="No"){

                        $("#parameterrange").html("")

                    }
                }
                
                $("#findings").focus()
            })


            function pointerSelecter(parametername,parametertestname)
            {

                var nextTest=$("#displaytest").find('.parameters[data-parametername="' + parametername + '"].parameters[data-testname="' + parametertestname + '"]')
            
                var parametername=$(nextTest).attr("data-parametername");  
                var testname=$(nextTest).attr("data-testname");
                var gender=$("#gender").val();
                var age=$("#age").val();
                var birthday=$("#age").attr("data-birthday"); 
                var now = moment(new Date()); //todays date
                var end = moment(birthday); // another date
                var duration = moment.duration(now.diff(end));
                var birthday = duration.asMilliseconds()
                var reference=$(nextTest).attr("data-reference"); 
                var unit=$(nextTest).attr("data-unit");
                $("#findings").val("");

                $("#parametername").html(parametername).attr({"data-parametertestname":testname,"data-reference":reference,"data-unit":unit})
                $("#parametername-testname").html(testname);
            
                var malemin=$(nextTest).attr("data-malemin");                
                var malemax=$(nextTest).attr("data-malemax"); 
                var femalemin=$(nextTest).attr("data-femalemin");                
                var femalemax=$(nextTest).attr("data-femalemax"); 
                var childmin=$(nextTest).attr("data-childmin");                
                var childmax=$(nextTest).attr("data-childmax"); 
                var samemin=$(nextTest).attr("data-samemin");                
                var samemax=$(nextTest).attr("data-samemax"); 
                var flags=$(nextTest).attr("data-flags"); 
                var childlimit=12;//can be changed 
                childlimit=31536000000*childlimit;//number of milliseconds
                
                if(flags=="Yes")
                {
                    if(samemin!="" && samemax!="")
                    {
                        range=samemin +" - "+ samemax

                    }else
                    {
                        if(birthday>=childlimit)
                        {

                            if(gender=="Male")
                            {

                                range=malemin +" - "+ malemax

                            }else if(gender=="Female"){

                                range=femalemin +" - "+ femalemax
                            }

                        }else if(birthday<childlimit)
                        {

                            if(childmin!="" && childmax!="")
                            {
                                range=childmin +" - "+ childmax

                            }else
                            {

                                if(gender=="Male")
                                {

                                    range=malemin +" - "+ malemax

                                }else if(gender=="Female"){

                                    range=femalemin +" - "+ femalemax
                                }


                            }

                        }

                    }

                    $("#parameterrange").html(range)

                }else if(flags=="No"){

                    $("#parameterrange").html("")

                }
                $("#findings").focus()
            }

            function addparameter(type)
            {
				var n=0;
				$('.test-badge').each(function()
				{
					$(this).html(++n)
					
					
				})
				
				var countBadges=$('.test-badge').length
				a=countBadges;
				
                var findings=$("#findings").val().replace(/\n/g, "<br>");
                var parametername= $("#parametername").html() 
                var parametertestname= $("#parametername").attr("data-parametertestname");
                var parameterrange=type=="1"?$("#parameterrange").html():"";
                var reference=type=="1"? $("#parametername").attr("data-reference"):"";
                var checkUnit= $("#parametername").attr("data-unit");
                var unit=checkUnit=="undefined"?"":checkUnit


                if(parametername==""){
					
                    $("#leftbottomfeedback").fadeIn().html("<span style='cursor:pointer;font-size:15px' class='fa fa-close pull-right'></span></span><br><p>No parameter Selected<br><span style='cursor:pointer;float:right;font-size:13px;margin-right:10px' class='okk'>OK</span></p>");

                }else if(findings==""){

                    $("#leftbottomfeedback").fadeIn().html("<span style='cursor:pointer;font-size:15px' class='fa fa-close pull-right'></span></span><br><p>Test Results is Required<br><span style='cursor:pointer;float:right;font-size:13px;margin-right:10px' class='okk'>OK</span></p>");
				
                }else
                {
                    
                    $("#tbody-selectedtest").find("#notestselected").remove().hide()//hide the no drugs selected row    
                     $("#tbody-selectedtest").append('<tr class="selectedparameters" data-parametertestname="'+parametertestname+'" data-parametername="'+parametername+'" data-unit="'+unit+'" data-reference="'+reference+'" data-parameterrange="'+parameterrange+'" data-findings="'+findings+'"><td style="width:80px"><span  class="test-badge badge badge-sm badge-pill badge-info m-r-10">'+ ++a +'</span></td><td>'+parametertestname +'</td><td>'+parametername +'</td><td class="cashprice">'+ findings +'</td><td class="range">'+ parameterrange +'</td><td ><span  title="Edit" class="edit-result fas fa-pencil-alt text-primary" style="cursor:pointer;margin-right:10px"></span><span title="Remove" style="cursor:pointer" class="remove fa fa-trash text-danger" style="cursor:pointer"></span></td></tr>');

                     type=="1"?$(".range").show():$(".range").hide();
                    

					$("#displaytest").find('.parameters[data-parametername="' + parametername + '"].parameters[data-testname="' + parametertestname + '"]').css({"color":"red"}); 
					$("#displaytest").find('.parameters[data-parametername="' + parametername + '"].parameters[data-testname="' + parametertestname + '"]').attr("data-parameter-status","1");

					

					var pointerArray=$("#displaytest").find('.parameters[data-testname="' + parametertestname + '"].parameters[data-parameter-status="0"]')

					//console.log(pointerArray)

					if($(pointerArray).length>0){

						//find that next test picks it data attribute like when u click on paraameters 
						//pointerSelecter() 
						var nextParameterName=$(pointerArray[0]).attr("data-parametername");
						var nextTestName=$(pointerArray[0]).attr("data-testname");
						pointerSelecter(nextParameterName,nextTestName);

					}else{

						var pointerArray=$("#displaytest").find(".parameters[data-parameter-status='0']")
						if($(pointerArray).length>0){

							//find that next test picks it data attribute like when u click on paraameters 
							//pointerSelecter() 
							var nextParameterName=$(pointerArray[0]).attr("data-parametername");
							var nextTestName=$(pointerArray[0]).attr("data-testname");
							pointerSelecter(nextParameterName,nextTestName);

						}else{
							
                			//to reset fields
               
							$("#parameterrange").html("")
							$("#parametername").html("")   
                            $("#parametername-testname").html("");       
							$("#findings").val("");               
							$("#parametername").attr("data-parametertestname","");
							$("#parametername").attr("data-reference","");

						}
						//find the next available test and picks it data attribute likw when u click on paraameters
						//pointerSelecter() 
					}



                }

            }

            $("body").on("click","#add",function()
            {

                var type=$("#testtype").val()
                addparameter(type) 
            })

           /*  $(document).on("keypress",function(e)
            {
                var type=$("#testtype").val()
                if($("#findings").is(":focus"))
                {
                    if(e.which == 13)
                    {
                        addparameter(type)
                    }

                }
               
            }) */

            $(document).on("keydown",function(e)
            {
                var type=$("#testtype").val()
                if($("#findings").is(":focus"))
                {
                    if(e.which == 40)
                    {
                        addparameter(type)
                    }

                }
               
            })

            $('body').on('click','.save',function(e)
            { 
                
                e.preventDefault();			
                if($("#tbody-selectedtest").children(".selectedparameters").length>0)
                {
                    var patientid=$("#patientid").val();
                    var labno=$("#labno").val();
                    var sessionid=$("#sessionid").val();
                    var comment=$(".comment").val();
                    var comment=$(".note-editable").html();
                   
                   // console.log(comment)
                    var counter = 1;
                    if(patientid==""){

                        //$('#error-notice').show().fadeOut(5000).find("#error-notice-display").html("");

                        $("#leftbottomfeedback").fadeIn().html("<span style='cursor:pointer;font-size:15px' class='fa fa-close pull-right'></span></span><br><p>All required Fields (<span style='color:red'>*</span>) should be Provided<br><span style='cursor:pointer;float:right;font-size:13px;margin-right:10px' class='okk'>OK</span></p>");
                    }else{

                        $(".save").prop("disabled",true).html("<img style='width:25px;height:25px' src='assets/images/defaults/sp-loading.gif'/>");

                        var objectContainer={};
                                               
                        $("#tbody-selectedtest").find("tr").each(function()
                        {
                            var objectDetails={};
                            
                            //var dataId=$(this).attr("data-id");
                            objectDetails["parametertestname"]=$(this).attr("data-parametertestname");
                            objectDetails["parametername"]=$(this).attr("data-parametername");
                            objectDetails["reference"]=$(this).attr("data-reference");
                            objectDetails["parameterrange"]=$(this).attr("data-parameterrange");
                            objectDetails["findings"]=$(this).attr("data-findings");
                            objectDetails["unit"]=$(this).attr("data-unit");

                            objectContainer[counter++]=objectDetails;
                            
                        })

                        objectContainer["patientid"]=patientid;
                        objectContainer["sessionid"]=sessionid;
                        objectContainer["labno"]=labno;
                        objectContainer["comment"]=comment;
                       //console.log(objectContainer)
                       	    
                        $.ajax
                        ({
                            url:"/model/mod-labtest.php",
                            type:"post",
                            data:objectContainer,
                            success:function(JSONObject)
                            {
                                //$("body").html(JSONObject);
                                $(".save").prop("disabled",false);
                                var array={};
                                array  = JSON.parse(JSONObject);
                                if(array["action"]=="0")
                                {
                                
                                    //$('#error-notice').show().fadeOut(5000).find("#error-notice-display").html("Not sent...Enter a valid information");

                                    $("#leftbottomfeedback").fadeIn().html("<span style='cursor:pointer;font-size:15px' class='fa fa-close pull-right'></span></span><br><p>Not sent...Enter a valid information<br><span style='cursor:pointer;float:right;font-size:13px;margin-right:10px' class='okk'>OK</span></p>");

                                    $('.save').html("Try Again");	

                                }else if(array["action"]=="1")
                                {
                                    $('#leftbottomfeedback').show().fadeOut(5000).html("Test set-up  successful");
                                    
                                    $("#testdetail-form,#parameter-form").trigger("reset");//very necessary 
                                    $("#tbody-parameters").html("");	
                                    $('.save').html("Save");
                                    $("#preview").attr("data-labno",labno);//very necessary for the preview display
                                    
                                }else if(array["action"]=="2")
                                {
                                    //$('#error-notice').show().fadeOut(5000).find("#error-notice-display").html("No Record Entered");
                                    $("#leftbottomfeedback").fadeIn().html("<span style='cursor:pointer;font-size:15px' class='fa fa-close pull-right'></span></span><br><p>No Record Entered<br><span style='cursor:pointer;float:right;font-size:13px;margin-right:10px' class='okk'>OK</span></p>");
                                    $('.save').html("Try Again");			
                                    
                                }else if(array["action"]=="3")
                                {
                                    //$('#error-notice').show().fadeOut(5000).find("#error-notice-display").html("Problem Connecting...Try Again");

                                    $("#leftbottomfeedback").fadeIn().html("<span style='cursor:pointer;font-size:15px' class='fa fa-close pull-right'></span></span><br><p>Problem Connecting...Try Again<br><span style='cursor:pointer;float:right;font-size:13px;margin-right:10px' class='okk'>OK</span></p>");
                                    $('.save').html("Try Again");			
                                    
                                }
                            
                            }	
                        })

                    }
                   
                   
                    
                }else{

                    //$('#error-notice').show().fadeOut(5000).find("#error-notice-display").html("Test name is required");

                }
            })

            testTodo=[];//global
            $("#test-todo").find(".testtodo").each(function()
            {
                var testName=$(this).html()
                testTodo.push(testName);
                
            })

            $("body").on("click","#preview",function(e)
            {
                var data= $(this).attr("data-labno"); 
                var patientid= $("#patientid").val(); 
               
                if(patientid==""){

                   //$('#error-notice').show().fadeOut(5000).find("#error-notice-display").html("No Patient Selected for Preview");

                    $("#leftbottomfeedback").fadeIn().html("<span style='cursor:pointer;font-size:15px' class='fa fa-close pull-right'></span></span><br><p>No Patient Selected for Preview<br><span style='cursor:pointer;float:right;font-size:13px;margin-right:10px' class='okk'>OK</span></p>");

                }else if(data==""){

                    //$('#error-notice').show().fadeOut(5000).find("#error-notice-display").html("No Record Available for Preview");

                    $("#leftbottomfeedback").fadeIn().html("<span style='cursor:pointer;font-size:15px' class='fa fa-close pull-right'></span></span><br><p>No Record Available for Preview<br><span style='cursor:pointer;float:right;font-size:13px;margin-right:10px' class='okk'>OK</span></p>");

                }else 
                {

                    $(".testresult").modal({
                    backdrop: 'static',
                    keyboard: false,
                    show: true,
                        
                    })

                    
                    $("#testresult-body").html("<img style='margin:auto 50%;width:50px;height:50px' src='assets/images/defaults/loader.gif'/>")
                   
                    testTodo=[];//global
                    $("#test-todo").find(".testtodo").each(function()
                    {
                        var testName=$(this).html()
                        testTodo.push(testName);
                        
                    })

                    $.ajax
                    ({
                        url:"/model/mod-fetchtestresult.php",
                        type:"POST",
                        data:{"labno":data,"test-todo":testTodo},
                        success:function(results)
                        {	
                            $("#testresult-body").html(results);
                            $(".tbody-preview").each(function()
                            {
                                if($(this).children().length==0){

                                    $(this).html('<tr><td style="background:#f4f8fb" class="text-center" colspan="7">No Test Selected</td></tr>');

                                }

                            })
                            $(".options").attr({"data-labno":data,"data-patientid":patientid}); 
							
							$(".tbody-preview ").find(".findings").each(function()
							{
								var findings=parseFloat($(this).html());	
										
								if(isNaN(findings))
								{
									$(this).siblings(".flag").html("")
									
								}else
								{
									var range=$(this).siblings(".range").html();						
									var lower=parseFloat(range.split('-')[0]);
									var upper=parseFloat(range.split('-')[1]);
									if(findings > upper)
									{						
										var flag="H";
										$(this).siblings(".flag").html('<span class="text-center" style="color:red">'+flag+'</span>');
									}else if(findings < lower)
									{						
										var flag="L";
										$(this).siblings(".flag").html('<span class="text-center" style="color:red">'+flag+'</span>');
									}else 
									{
										var flag="";
										$(this).siblings(".flag").html("");
									}
									
									
										
								}
							
							
							})
							
							function vanish(counter,column,hcolumn)
							{
								$(".result-table").each(function()
								{
									var counter=0
									if($(this).find(".testresults").length>0)
									{
										
										$(this).find(`.${column}`).each(function()
										{
											var column=$.trim($(this).html());
											if(column!=""){
												
												++counter;
											}else{
												
												
											}
										})
										if(counter>0){
											
											
										}else{
											
											$(this).find(`.${column}`+","+`.${hcolumn}`).each(function(){
												$(this).css("display","none");
												
											})
											
											
										}
									}
								})
							}
							
							vanish("counterUnit","unit","hunit")
							vanish("counterUnit","range","hrange")
							vanish("counterUnit","reference","hreference")
							vanish("counterUnit","flag","hflag")	
                        }
                    })   


                }

            }) 

            //click on done
            $("body").on("click",".done",function(e)
            {
				
				var labno=$(this).attr("data-labno")
				var id=$(this).attr("data-patientid")
                var isDone=$(this).attr("data-isdone")
                if(isDone=="1"){
                    $("#leftbottomfeedback").show().fadeOut(5000).html("Test already submitted");
                }else if(isDone=="0"){

                    $(".done").html("<img style='width:25px;height:25px' src='assets/images/defaults/sp-loading.gif'/>");
                    $.ajax
                    ({
                        url:"/model/testdone.php",
                        type:"POST",
                        data:{"labno":labno,"patientid":id,"testtodo":testTodo},
                        success:function(response)
                        {	
                            //console.log(response)
                            $(".done").html("Done");
                            if(response=="1"){
                                $("#leftbottomfeedback").show().fadeOut(5000).html("Test done successfully");
                            }else if(response=="0"){
                                $("#leftbottomfeedback").show().fadeOut(5000).html("<span style='cursor:pointer;font-size:15px' class='fa fa-close pull-right'></span></span><br><p>No undone Record found<br><span style='cursor:pointer;float:right;font-size:13px;margin-right:10px' class='okk'>OK</span></p>");
                            }else if(response=="2"){

                                $("#leftbottomfeedback").show().fadeOut(5000).html("<span style='cursor:pointer;font-size:15px' class='fa fa-close pull-right'></span></span><br><p>Try...Again<br><span style='cursor:pointer;float:right;font-size:13px;margin-right:10px' class='okk'>OK</span></p>");
                            }
                            
                        }
                    }) 
                }else{

                    $("#leftbottomfeedback").show().fadeOut(5000).html("Select a patient");
                }
            })

			$("body").on("click","#attachments",function(e)
            {
				e.preventDefault();
				var labno= $("#labno").val(); 
                var patientid= $("#patientid").val(); 
               
                if(patientid==""){

                    //$('#error-notice').show().fadeOut(5000).find("#error-notice-display").html("No Patient Selected");

                    $("#leftbottomfeedback").fadeIn().html("<span style='cursor:pointer;font-size:15px' class='fa fa-close pull-right'></span></span><br><p>No Patient Selected<br><span style='cursor:pointer;float:right;font-size:13px;margin-right:10px' class='okk'>OK</span></p>");

                }else if(labno==""){

                    //$('#error-notice').show().fadeOut(5000).find("#error-notice-display").html("No Record Available");

                    $("#leftbottomfeedback").fadeIn().html("<span style='cursor:pointer;font-size:15px' class='fa fa-close pull-right'></span></span><br><p>No Record Available<br><span style='cursor:pointer;float:right;font-size:13px;margin-right:10px' class='okk'>OK</span></p>");
                }else 
                {
					window.location.href="attachfiles?lb="+labno+"&pid="+patientid+"&fr=labtest";
					
										
				}

            })

            //click on printselected
            $("body").on("click","#printselected",function(e)
            {
                var labno=$(this).attr("data-labno")
				var id=$(this).attr("data-patientid")
                var ro="0"
				selectedtestTodo=[];
				$(".testcheckbox").each(function()
				{
					if($(this).is(":checked")){
						
						var selected=$(this).attr("data-testselected");
						selectedtestTodo.push(selected)
						
						
					}
					
					
				})
				if(selectedtestTodo.length<1){
					
					$('#edit-danger').show().html("No Test Selected").fadeOut(5000);
					
				}else
				{
					
					$.ajax
					({
						url:"/labtest.php",
						type:"POST",
						data:{"labno":labno,"patientid":id,"testtodo":selectedtestTodo,"printoptions":"1"},
						success:function(results)
						{		
							//window.location.href="printtest?fr=lt&lb="+labno+"&pid="+id;
                            window.open("printtest?fr=lt&lb="+labno+"&pid="+id+"&ro="+ro, "Reports")
						}
					})   
				  
				}
            })
			
            //click on printall
            $("body").on("click","#printall",function(e)
            {
                var labno=$(this).attr("data-labno")
				var id=$(this).attr("data-patientid")
                var ro="0"
				selectedtestTodo=[];
				$(".testcheckbox").each(function()
				{
					
					var selected=$(this).attr("data-testselected");
					selectedtestTodo.push(selected)
					
				})
				if(selectedtestTodo.length<1){
					
					$('#edit-danger').show().html("No Test Selected").fadeOut(5000);
					
				}else
				{
					$.ajax
					({
						url:"/labtest.php",
						type:"POST",
						data:{"labno":labno,"patientid":id,"testtodo":selectedtestTodo,"printoptions":"1"},
						success:function(results)
						{	
							
									
							//window.location.href="printtest?fr=lt&lb="+labno+"&pid="+id;
                            window.open("printtest?fr=lt&lb="+labno+"&pid="+id+"&ro="+ro, "Reports")
						}
					})       
				}
            })

            $("body").on("click","#commonfindings",function(e)
            {
				$(".commentmodal").modal({
				backdrop: 'static',
				keyboard: false,
				show: true,
					
				})
                $(".commentmodal").find(".copier").attr("data-type","1")
            })
			
            $("body").on("click","#commoncomments",function(e)
            {
				$(".commentmodal").modal({
				backdrop: 'static',
				keyboard: false,
				show: true,
					
				})

                $(".commentmodal").find(".copier").attr("data-type","2")


            })
            
            
            //copy to clipboard
            $("body").on("click",".copycomment",function()
			{
                var type=$(this).attr("data-type");
                var commenter=$(this).parents(".comment-area").find(".commenter");
                var commentSelected=commenter.html();    
				if(commentSelected)
				{
                    if(type=="1"){
                        $("#findings").val(commenter.text());//solves the escape issues
                    }else if(type=="2"){
                        $(".note-editable").html(commentSelected);
                    }
                   
                    $(".commentmodal").modal("hide");

                }				
            })
            
            //pricing for extension starts here
            $("body").on("keyup","#searchpatient",function()
            {
                var searchValue=$(this).val();
                var toFilter=$("[data-filter-item1");
                toFilter.addClass("hidden");
                if(searchValue!="")
                {
                    
                    $("[data-filter-fullname*='"+ searchValue.toLowerCase() +"']").removeClass("hidden")
                    $("[data-filter-firstname*='"+ searchValue.toLowerCase() +"']").removeClass("hidden")
                    $("[data-filter-surname*='"+ searchValue.toLowerCase() +"']").removeClass("hidden")
                    $("[data-filter-contact*='"+ searchValue.toLowerCase() +"']").removeClass("hidden")
                    $("[data-filter-patientid*='"+ searchValue.toLowerCase() +"']").removeClass("hidden")
                
                    
                    if($(".userlist1").not(".hidden").length==0)
                    {
                        $(".notfound1").css({"display":"block"})	
                        $(".autonotfound1").css({"display":"none"})
                        
                    }else
                    {
                        $(".notfound1").css({"display":"none"})
                        $(".autonotfound1").css({"display":"block"})
                    }
                    
                }else
                {
                    
                    toFilter.removeClass("hidden");
                    $(".notfound1").css({"display":"none"})
                    $(".autonotfound1").css({"display":"block"})
                }
                
            })


            //pricing for extension starts here
            $("body").on("keyup","#searchcomment",function()
            {
                var searchValue=$(this).val();
                var toFilter=$("[data-filter-item2");
                toFilter.addClass("hidden");
                if(searchValue!="")
                {
                    
                    $("[data-filter-commentname*='"+ searchValue.toLowerCase() +"']").removeClass("hidden")
                   
                    if($(".commentlist").not(".hidden").length==0)
                    {
                        $(".notfound2").css({"display":"block"})	
                        $(".autonotfound2").css({"display":"none"})
                        
                    }else
                    {
                        $(".notfound2").css({"display":"none"})
                        $(".autonotfound2").css({"display":"block"})
                    }
                    
                }else
                {
                    
                    toFilter.removeClass("hidden");
                    $(".notfound2").css({"display":"none"})
                    $(".autonotfound2").css({"display":"block"})
                }
                
            })
			
		
			$("body").on("click",".fa-close,.okk",function()
			{
				$(".done").prop('disabled',false);
				$('#leftbottomfeedback').fadeOut();;
				
			})

            $("body").on("click",".inputToggle",function()
            {
                
                 /*  var input1 = document.getElementById('input1');
                  var input2 = document.getElementById('input2'); */

                 /*  if (input1.style.display != 'none') {
                    input1.style.display = 'none';
                    input2.style.display = 'block';
                  } else {
                    input1.style.display = 'block';
                    input2.style.display = 'none';
                  } */

                if($(this).hasClass("lab-input1"))
                {
                    $("#result-entry").html(`<div class="form-group row mb-2" id="input2">
                        <div class="col-lg-12">
                            <a href="javascript:void(0)" id="commonfindings" class="text-danger float-right mb-2">Common Findings</a>

                            <textarea list="commonresult" autocomplete="on" id="findings" name="findings" class="form-control"  type="text" rows="6"></textarea>

                            <a class="lab-input2 bg-info text-light inputToggle float-right mt-2 mb-1" style="padding:1px 4px;border-radius: 3px;font-size: 14px;" data-plugin="tippy" data-tippy-arrow="true" data-tippy-placement="top" title="Minimize Input Field"><i class="fe-minimize"></i></a>
                        </div>
                    </div>`);

                }else if($(this).hasClass("lab-input2")){
                    
                    $("#result-entry").html(`<div class="form-group row mb-1" id="input1">
                        <div class="col-lg-12">
                            <input list="commonresult" autocomplete="on" id="findings" name="findings" class="form-control"  type="text">

                            <a class="lab-input1 bg-info text-light inputToggle float-right mt-2" style="padding:1px 4px;border-radius: 3px;font-size: 14px;" data-plugin="tippy" data-tippy-arrow="true" data-tippy-placement="top" title="Expand Input Field"><i class="fe-maximize"></i></a>
                        </div>
                    </div>`);
                }


                
            })


            //click on printall
            $("body").on("click",".action",function(e)
            {
                $.ajax
                ({
                    url:"model/notification.php",
                    type:"POST",
                    data:{"tab":"ct","action":"markall"},
                    success:function(response)
                    {
                        //$("body").html(response);
                        window.location.href=""
                    }
                })

            })
            
						

        })
            
        </script>
        <script>
            $("body").on("click",".backtop",function(){
                $('html,body').animate({
                    scrollTop:$("body").offset().top
                })

            });
        </script>
    </body>
	<?php
	ob_end_flush();
	mysqli_free_result($result);
	mysqli_close($conn);
	?>
</html>