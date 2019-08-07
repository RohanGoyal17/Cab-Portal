
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta name="theme-color" content="#222222">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Cab Portal</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <meta name="google-signin-client_id" content="60633484122-ibfjbansfcr1666dek8ai2rpugcteo7f.apps.googleusercontent.com">
        <!-- bootstrap & fontawesome css -->
        <link href="http://cdn.jsdelivr.net/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet"/>
        <link rel="stylesheet" href="http://cdn.jsdelivr.net/fontawesome/4.1.0/css/font-awesome.min.css" />
        
        <!-- BootstrapValidator CSS -->
        <link rel="stylesheet" href="http://cdn.jsdelivr.net/jquery.bootstrapvalidator/0.5.0/css/bootstrapValidator.min.css"/>
        
        <!-- jQuery and Bootstrap JS -->
        <script type="text/javascript" src="http://cdn.jsdelivr.net/jquery/1.11.1/jquery.min.js"></script>
        <script type="text/javascript" src="http://cdn.jsdelivr.net/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        
        <!-- BootstrapValidator JS -->
        <script type="text/javascript" src="http://cdn.jsdelivr.net/jquery.bootstrapvalidator/0.5.0/js/bootstrapValidator.min.js"></script>
        <link rel="stylesheet" href="main.css">
        <!-- Animated Loading Icon -->
        <style type="text/css">
            .glyphicon-refresh-animate {
                -animation: spin .7s infinite linear;
                -webkit-animation: spin2 .7s infinite linear;
            }
            @-webkit-keyframes spin2 {
                from { -webkit-transform: rotate(0deg);}
                to { -webkit-transform: rotate(360deg);}
            }
            @keyframes spin {
                from { transform: scale(1) rotate(0deg);}
                to { transform: scale(1) rotate(360deg);}
            }
        </style>
        
        
        
        
        <link rel="icon" href="bits-pilani.png" type="image/gif" sizes="16x16">
    </head>
<script>
function toggleField(hideObj,showObj){
  hideObj.disabled=true;        
  hideObj.style.display='none';
  showObj.disabled=false;   
  showObj.style.display='inline';
  showObj.focus();
}
</script>
    
    <body >
        
        <div class="container-contact100">
        <div class="wrap-contact100" >
            <div id="topback" class="contact100-form-title" style="background-image: url(services-taxi.png);">
                <span class="contact100-form-title-1">
                    Fill your Details
                </span>
            </div>
            <br>
            <div class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>
            <div class="profilepic">
            <img id="myImg"><br>
            </div>
            <div >
                <button  id="soutbtn" class="contact100-form-btn"  onclick="myFunction()" style= "visibility: hidden;" >sign out</button>
                
            </div> 
            <iframe id="logoutframe" src="https://accounts.google.com/logout" name="logoutframe"  style="display: none"></iframe>
           
                <form class="contact100-form validate-form" action="firstconfirm.jsp" method="post" id="test-form">
                    <div class="wrap-input100 validate-input" >
                        <span class="label-input100">Date of Arrival:</span>
                        <input type="text" class="input100" id="ArrDatepilani" name="ArrDatepilani" placeholder="" required/>
                        <span class="focus-input100"></span>
                    </div>
                    
                    <div class="wrap-input100 validate-input" >
                        <span class="label-input100">Time of Arrival:</span>
                        
                        
                        <input type="text" class="input100" class="form-control" id="ArrTimepilani" name="ArrTimepilani" placeholder="" required />
                        
                        <span class="focus-input100"></span>
                    </div>
                    
                    <div class="wrap-input100 validate-input" >
                        <span class="label-input100">Date of Departure:</span>
                        
                        <div class="input-group">
                            <input type="date"  class="input100" class="form-control" id="DepDatepilani" name="DepDatepilani" placeholder="" required/>
                            <span class="focus-input100"></span>
                        </div>
                    </div>
                    
                    <div class="wrap-input100 validate-input" >
                        <span class="label-input100">Time of Departure:</span>
                        <div >
                            <div>
                                <input type="time" class="input100" class="form-control" id="DepTimepilani" name="DepTimepilani" placeholder="" required/>
                                <span class="focus-input100"></span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="wrap-input100 validate-input" >
                        <span class="label-input100">Student Name:</span>
                        <div >
                            <div >
                                <input type="text"  class="input100" class="form-control" name="StudentName" id="StudentName" placeholder=""  readonly/>
                                <span class="focus-input100"></span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="wrap-input100 validate-input" >
                        <span class="label-input100">BITS Email:</span>
                        <div >
                            <div >
                                <input type="email" class="input100" class="form-control" name="StudentID" id="StudentID" placeholder="" readonly/>
                                <span class="focus-input100"></span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="wrap-input100 validate-input" >
                        <span class="label-input100">Mobile No:</span>
                        <div >
                            <div>
                                <input type="number" class="input100"  min="1111111111" max="9999999999" class="form-control" name="StudentMoblieNo" id="StudentMoblieNo" placeholder="" required/>
                                <span class="focus-input100"></span>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        
                        function formatDate1(date) {
                            
                            var hr = date.getHours();
                            var min = date.getMinutes();
                            if (min < 10) {
                                min = "0" + min;
                            }
                            var ampm = "AM";
                            if( hr > 12 ) {
                                hr -= 12;
                                ampm = "PM";
                            }
                            return hr + ':'+min +' '+ampm
                        }
                        document.getElementById('ArrTimepilani').value = formatDate1(new Date());
                        
                        
                    </script>
                    <script type="text/javascript">
                        function formatDate(date) {
                            var day = date.getDate();
                            var monthIndex = date.getMonth()+1;
                            var year = date.getFullYear();
                            
                            return day + '-' + monthIndex + '-' + year;
                        }
                        
                        document.getElementById('ArrDatepilani').value = formatDate(new Date());
                    </script>
                     <div class="wrap-input100 validate-input" >
                        <span class="label-input100">Destination:</span>
                        <div>
                            <div>
                                
                                <select class="dropdownac"  class="input100" class="form-control" name="Destination" id="Destination" placeholder="" required  onchange="if(this.options[this.selectedIndex].value=='customOption'){toggleField(this,this.nextSibling); this.selectedIndex='1';}">
                                  <option></option>  
                                  <option value="customOption">[type a custom destination]</option>
                                  <option value="loharu">Loharu</option>
                                  <option value="HazratNizamuddin">Hazrat Nizamuddin Railway Station, New Delhi</option>
                                  <option value="NDRL">New Delhi Railway Station</option>
                                  <option value="IGI">Indira Gandhi International Airport, New Delhi</option>
                                  <option value="JaipurAirport">Jaipur International Airport </option>
                                  <option value="JaipurRailway">Jaipur Railway Station</option>
                                </select><input type="text" class="input100" class="form-control" name="Destination" id="Destination" placeholder="" required style="display:none;" disabled="disabled" onblur="if(this.value==''){toggleField(this,this.previousSibling);}">

                                <span class="focus-input100"></span>
                            </div>
                        </div>
                    </div>
                    <div class="wrap-input100 validate-input" >
                        <span class="label-input100">Type of Vehicle:</span>
                        <div >
                            <div>
                                
                                <select class="dropdownac"  class="input100" class="form-control" name="VehicleType" id="VehicleType" placeholder="" required>
                                          <option id = "emptyv"></option> 
                                          <option value="4+1(NOT Verna or Corolla)">4+1(NOT Verna or Corolla)</option>
                                          <option value="6+1(Tavera, Ertiga)">6+1(Tavera, Ertiga)</option>
                                          <option value="6+1(Innova)">6+1(Innova)</option>
                                          <option id="12v" value="12+1(Traveller)">12+1(Traveller)</option>
                                          <option id="25v" value="25+1(Traveller)">25+1(Traveller)</option>
                                          <option value="4+1(Verna, Corolla)">4+1(Verna, Corolla)</option>
                                          <option id="8v" value="8+1(Tavera)">8+1(Tavera)</option>
                                </select>
                                <span class="focus-input100"></span>
                            </div>
                        </div>
                    </div>
                    <div class="wrap-input100 validate-input" >
                        <span class="label-input100">AC Usage:</span>
                        <div>
                            <div>
                                
                                <select class="dropdownac"  class="input100" class="form-control" name="ACUsage" id="ACUsage" required>
                                    <option id = "emptyv2"></option>
                                    <option value="YES" >YES</option>
                                    <option value="NO">NO</option>
                                </select>
                            </div>
                        </div>
                    </div>
                   
                    
                    <div class="wrap-input100 validate-input" >
                        <span class="label-input100">Vehicle No:</span>
                        <div >
                            <div>
                                <input type="text" class="input100" class="form-control" name="VehicleNo" id="VehicleNo" placeholder="" required/>
                                <span class="focus-input100"></span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="wrap-input100 validate-input" >
                        <span class="label-input100">Driver Name:</span>
                        <div>
                            <div>
                                <input type="text" class="input100" class="form-control" name="DriverName" id="DriverName" placeholder="" required/>
                                <span class="focus-input100"></span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="wrap-input100 validate-input" >
                        <span class="label-input100">Driver Mobile No:</span>
                        <div>
                            <div>
                                <input type="number" class="input100"  min="1111111111" max="9999999999" class="form-control" name="DriverMobileNo" id="DriverMobileNo" placeholder="" required/>
                                <span class="focus-input100"></span>
                            </div>
                        </div>
                    </div>
                    
                    <div id ="inikmlabel" class="wrap-input100 validate-input" >
                        <span class="label-input100">Initial km Reading:</span>
                        <div>
                            <div>
                                <input type="text" class="input100" class="form-control" name="InitialKm" id="InitialKm" placeholder="" required/>
                                <span class="focus-input100"></span>
                            </div>
                        </div>
                    </div>
                    
                    <div id= "finkmlabel" class="wrap-input100 validate-input" >
                        <span  class="label-input100">Final km Reading:</span>
                        <div>
                            <div>
                                <input type="text" class="input100" class="form-control" name="FinalKm" id="FinalKm" placeholder="" required/>
                                <span class="focus-input100"></span>
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    <div id="costlabel" class="wrap-input100 validate-input" >
                        <span  class="label-input100">Cost per km:</span>
                        <div>
                            <div>
                                <input type="text" class="input100" class="form-control" name="CostPerKm" id="CostPerKm" placeholder="" required readonly/>
                                <span class="focus-input100"></span>
                            </div>
                        </div>
                    </div>
                    
                    <div>
                        <div class="container-contact100-form-btn">
                            <button type="submit"   id="postForm" class="contact100-form-btn">
                                Submit
                            </button>
                            
                        </div>
                    </div>
                    
                </form>
                <script type="text/javascript">
                    function onSignIn(googleUser) {
                        
                        var profile = googleUser.getBasicProfile();
                        var imagurl=profile.getImageUrl();
                        var name=profile.getName();
                        var email=profile.getEmail();
                        
                        document.getElementById("myImg").src = imagurl;
                        
                        document.getElementById("StudentName").value = name;
                        document.getElementById("StudentID").value = email;
                        document.getElementById("myP").style.visibility = "hidden";
                        document.getElementById("soutbtn").style.visibility = "visible";
                        //window.location.href='success.jsp';
                        
                    }
                </script>	
                
                
                <script>
                    function myFunction() {
                        gapi.auth2.getAuthInstance().disconnect();
                        document.getElementById("logoutframe").src="https://accounts.google.com/logout";
                        location.reload();
                    }
                </script>	
            </div>
        </div>
        
        <style>
            .profilepic img{
            border-radius: 50%;

            margin-left: auto;
            margin-right: auto;
            display: block;
            }
            .abcRioButton.abcRioButtonLightBlue { margin: 0 auto;}
        </style>
        
    </body>
    
</html>
<script>
$('#ACUsage').on('change',function(){
  var vehicletype = $('#VehicleType').val();
  var acusage = $(this).val();
  var destination =$('#Destination').val();
  if(destination == "loharu"){
     if (vehicletype=="4+1(NOT Verna or Corolla)" && acusage=="YES") {
                                //if(dest == "loharu"){alert("u have selected loharu");}
                                 $("#CostPerKm").val("22");
           }
           else if (vehicletype=="4+1(NOT Verna or Corolla)" && acusage=="NO"){
                        //if(dest == "loharu"){alert("u have selected loharu");}
                         $("#CostPerKm").val("20");
           }
           else if (vehicletype=="6+1(Tavera, Ertiga)" && acusage=="YES") {
                                //if(dest == "loharu"){alert("u have selected loharu");}
                                 $("#CostPerKm").val("26");

           }
           else if (vehicletype=="6+1(Tavera, Ertiga)" && acusage=="NO"){
                        //if(dest == "loharu"){alert("u have selected loharu");}
                         $("#CostPerKm").val("24");
           }
            else if (vehicletype=="6+1(Innova)" && acusage=="YES") {
                                //if(dest == "loharu"){alert("u have selected loharu");}
                                 $("#CostPerKm").val("26");
           }
           else if (vehicletype=="6+1(Innova)" && acusage=="NO"){
                        $("#CostPerKm").val("24");
           }
           else if (vehicletype=="4+1(Verna, Corolla)" && acusage=="YES") {
                                $("#CostPerKm").val("22");
           }
           else if (vehicletype=="4+1(Verna, Corolla)" && acusage=="NO"){
                        $("#CostPerKm").val("20");
           }

    }
  
  else{
           if (vehicletype=="4+1(NOT Verna or Corolla)" && acusage=="YES") {
                                //if(dest == "loharu"){alert("u have selected loharu");}
                                 $("#CostPerKm").val("7.95");
           }
           else if (vehicletype=="4+1(NOT Verna or Corolla)" && acusage=="NO"){
                        //if(dest == "loharu"){alert("u have selected loharu");}
                         $("#CostPerKm").val("7.25");
           }
           else if (vehicletype=="6+1(Tavera, Ertiga)" && acusage=="YES") {
                                //if(dest == "loharu"){alert("u have selected loharu");}
                                 $("#CostPerKm").val("9.95");

           }
           else if (vehicletype=="6+1(Tavera, Ertiga)" && acusage=="NO"){
                        //if(dest == "loharu"){alert("u have selected loharu");}
                         $("#CostPerKm").val("8.9");
           }
           else if (vehicletype=="6+1(Innova)" && acusage=="YES") {
                                //if(dest == "loharu"){alert("u have selected loharu");}
                                 $("#CostPerKm").val("10.8");
           }
           else if (vehicletype=="6+1(Innova)" && acusage=="NO"){
                        $("#CostPerKm").val("9.8");
           }
           else if (vehicletype=="12+1(Traveller)" && acusage=="YES") {
                                $("#CostPerKm").val("19");
           }
           else if (vehicletype=="12+1(Traveller)" && acusage=="NO"){
                        $("#CostPerKm").val("18.00");
           }
           else if (vehicletype=="25+1(Traveller)" && acusage=="YES") {
                                $("#CostPerKm").val("31");
           }
           else if (vehicletype=="25+1(Traveller)" && acusage=="NO"){
                        $("#CostPerKm").val("27");
           } 
           else if (vehicletype=="4+1(Verna, Corolla)" && acusage=="YES") {
                                $("#CostPerKm").val("9.50");
           }
           else if (vehicletype=="4+1(Verna, Corolla)" && acusage=="NO"){
                        $("#CostPerKm").val("8.50");
           }
           else if (vehicletype=="8+1(Tavera)" && acusage=="YES") {
                                $("#CostPerKm").val("11.00");
           }
           else if (vehicletype=="8+1(Tavera)" && acusage=="NO"){
                        $("#CostPerKm").val("10.00");
           }
  }
   
   
});
</script>

<script>
$('#Destination').on('change',function(){
  var selection = $(this).val();
  $('#VehicleType').val("emptyv");
  var acusage = $('#ACUsage').val();
  document.getElementById("finkmlabel").style.display = "block";
  document.getElementById("inikmlabel").style.display = "block";
  document.getElementById("costlabel").style.display = "block";
  document.getElementById("12v").style.display = "block";
  document.getElementById("8v").style.display = "block";
  document.getElementById("25v").style.display = "block";
  document.getElementById("FinalKm").readOnly = false;
  document.getElementById("InitialKm").readOnly = false;
  if (selection =="HazratNizamuddin") {
                $("#FinalKm").val("460");         
                $("#InitialKm").val("0");
                document.getElementById("FinalKm").readOnly = true;
                document.getElementById("InitialKm").readOnly = true;
   }
   else if (selection =="NDRL"){
  		$("#FinalKm").val("430");
                $("#InitialKm").val("0");
                document.getElementById("FinalKm").readOnly = true;
                document.getElementById("InitialKm").readOnly = true;
   }
  else if (selection =="IGI"){
  		$("#FinalKm").val("420");
                $("#InitialKm").val("0");
                document.getElementById("FinalKm").readOnly = true;
                document.getElementById("InitialKm").readOnly = true;
   }
   else if (selection =="JaipurAirport"){
  		$("#FinalKm").val("495");
                $("#InitialKm").val("0");
                document.getElementById("FinalKm").readOnly = true;
                document.getElementById("InitialKm").readOnly = true;
   }
   else if (selection =="JaipurRailway"){
  		$("#FinalKm").val("465");
                $("#InitialKm").val("0");
                document.getElementById("FinalKm").readOnly = true;
                document.getElementById("InitialKm").readOnly = true;
   }
   else if (selection =="loharu"){
                $("#FinalKm").val("25");
                $("#InitialKm").val("0");
                
                document.getElementById("finkmlabel").style.display = "none";
                document.getElementById("inikmlabel").style.display = "none";
                document.getElementById("costlabel").style.display = "none";
                document.getElementById("12v").style.display = "none";
                document.getElementById("8v").style.display = "none";
                document.getElementById("25v").style.display = "none";
                document.getElementById("FinalKm").readOnly = true;
                document.getElementById("InitialKm").readOnly = true;
       
   }
   
});
</script>

