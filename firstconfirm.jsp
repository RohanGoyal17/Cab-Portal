

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    
    <head>
        <meta name="theme-color" content="#222222">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="bits-pilani.png" type="image/gif" sizes="16x16">
  <title>Confirm your details</title>
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
  


</head>


<body>
    <div class="container-contact100">
        <div class="wrap-contact100" >
            <div id="topback" class="contact100-form-title" style="background-image: url(services-taxi.png);">
                <span class="contact100-form-title-1">
                    Confirm Your Details
                </span>
            </div>
<%
session.setAttribute("ArrDatepilani",request.getParameter("ArrDatepilani"));
session.setAttribute("ArrTimepilani",request.getParameter("ArrTimepilani"));
session.setAttribute("DepDatepilani",request.getParameter("DepDatepilani"));
session.setAttribute("DepTimepilani",request.getParameter("DepTimepilani"));
session.setAttribute("Destination",request.getParameter("Destination"));
session.setAttribute("VehicleType",request.getParameter("VehicleType"));
session.setAttribute("VehicleNo",request.getParameter("VehicleNo"));
session.setAttribute("DriverName",request.getParameter("DriverName"));
session.setAttribute("DriverMobileNo",request.getParameter("DriverMobileNo"));
session.setAttribute("InitialKm",request.getParameter("InitialKm"));
session.setAttribute("FinalKm",request.getParameter("FinalKm"));
session.setAttribute("ACUsage",request.getParameter("ACUsage"));
session.setAttribute("CostPerKm",request.getParameter("CostPerKm"));
session.setAttribute("TravelID",request.getParameter("DepDatepilani")+'-'+request.getParameter("VehicleNo")+'-'+request.getParameter("DepTimepilani"));

%>      

  
  <form class="contact100-form validate-form" role="form" id="test-form">
    
    
    <div class="wrap-input100 validate-input" >
       <span class="label-input100">Date of Arrival:</span>
          <input type="text" class="input100" class="form-control" id="ArrDatepilani" name="ArrDatepilani" placeholder="" readonly />
        <span class="focus-input100"></span>
    </div>

    
      <div class="wrap-input100 validate-input" >
        <span class="label-input100">Time of Arrival:</span>
          <input type="text" class="input100" class="form-control" id="ArrTimepilani" name="ArrTimepilani" placeholder="" readonly />
        <span class="focus-input100"></span>
    </div>



    <div class="wrap-input100 validate-input" >
      <span class="label-input100">Date of Departure:</span>
          <input type="text" class="input100" class="form-control" id="DepDatepilani" name="DepDatepilani" placeholder="" readonly />
        <span class="focus-input100"></span>
        
    </div>
    
    <div class="wrap-input100 validate-input" >
      <span class="label-input100">Time Of Departure:</span>
           <input type="text" class="input100" class="form-control" id="DepTimepilani" name="DepTimepilani" placeholder="" readonly />
           <span class="focus-input100"></span>
    </div>

   <div class="wrap-input100 validate-input" >
      <span class="label-input100">Student Name:</span>
          <input type="text" class="input100" class="form-control" name="StudentName" id="StudentName" placeholder="" readonly />
          <span class="focus-input100"></span>
    </div>
	
	<div class="wrap-input100 validate-input" >
      <span class="label-input100">Student BITS email ID:</span>
          <input type="text" class="input100" class="form-control" name="StudentID" id="StudentID" placeholder="" readonly />
          <span class="focus-input100"></span>
    </div>
	
	<div class="wrap-input100 validate-input" >
      <span class="label-input100">Student Moblie No:</span>
          <input type="text" class="input100" class="form-control" name="StudentMoblieNo" id="StudentMoblieNo" placeholder="" readonly />
    <span class="focus-input100"></span>
    </div>
	
	<div class="wrap-input100 validate-input" >
            <span class="label-input100">Destination:</span>
          <input type="text" class="input100" class="form-control" name="Destination" id="Destination" placeholder="" readonly />
    <span class="focus-input100"></span>
    </div>
	
	<div class="wrap-input100 validate-input" >
      <span class="label-input100">Vehicle Type:</span>
          <input type="text" class="input100" class="form-control" name="VehicleType" id="VehicleType" placeholder="" readonly />
    <span class="focus-input100"></span>
    </div>
	
	<div class="wrap-input100 validate-input" >
      <span class="label-input100">Vehicle No:</span>
          <input type="text" class="input100" class="form-control" name="VehicleNo" id="VehicleNo" placeholder="" readonly />
    <span class="focus-input100"></span>
    </div>
	
	<div class="wrap-input100 validate-input" >
      <span class="label-input100">Driver Name:</span>
          <input type="text" class="input100" class="form-control" name="DriverName" id="DriverName" placeholder="" readonly />
    <span class="focus-input100"></span>
    </div>
	
	<div class="wrap-input100 validate-input" >
      <span class="label-input100">Driver Mobile No:</span>
          <input type="text" class="input100" class="form-control" name="DriverMobileNo" id="DriverMobileNo" placeholder="" readonly />
    <span class="focus-input100"></span>
    </div>
	
	<div class="wrap-input100 validate-input" >
      <span class="label-input100">Initial Km Reading:</span>
          <input type="text" class="input100" class="form-control" name="InitialKm" id="InitialKm" placeholder="" readonly />
    <span class="focus-input100"></span>
    </div>
	
	<div class="wrap-input100 validate-input" >
      <span class="label-input100">Final Km Reading:</span>
          <input type="text" class="input100" class="form-control" name="FinalKm" id="FinalKm" placeholder="" readonly />
    <span class="focus-input100"></span>
    </div>
	
	<div class="wrap-input100 validate-input" >
      <span class="label-input100">AC Usage:</span>
            <input type="text" class="input100" class="form-control" name="ACUsage" id="ACUsage" placeholder="" readonly />
    <span class="focus-input100"></span>
    </div>
	
	<div class="wrap-input100 validate-input" >
      <span class="label-input100">Cost Per Km:</span>
          <input type="text" class="input100" class="form-control" name="CostPerKm" id="CostPerKm" placeholder="" readonly />   
    <span class="focus-input100"></span>
    </div>
    
    <div class="wrap-input100 validate-input" >
        <span class="label-input100">Travel ID:</span>
               <input type="text" class="input100" class="form-control" name="TravelID" id="TravelID" placeholder="" readonly/>
 <span class="focus-input100"></span>
 </div> 
<script>
    document.getElementById('ArrDatepilani').value = '<%=request.getParameter("ArrDatepilani")%>';
    document.getElementById('ArrTimepilani').value = '<%=request.getParameter("ArrTimepilani")%>';
    document.getElementById('DepDatepilani').value = '<%=request.getParameter("DepDatepilani")%>';
    document.getElementById('DepTimepilani').value = '<%=request.getParameter("DepTimepilani")%>';
    document.getElementById('StudentName').value = '<%=request.getParameter("StudentName")%>';
    document.getElementById('StudentID').value = '<%=request.getParameter("StudentID")%>';
    document.getElementById('StudentMoblieNo').value = '<%=request.getParameter("StudentMoblieNo")%>';
    document.getElementById('Destination').value = '<%=request.getParameter("Destination")%>';
    document.getElementById('VehicleType').value = '<%=request.getParameter("VehicleType")%>';
    document.getElementById('VehicleNo').value = '<%=request.getParameter("VehicleNo")%>';
    document.getElementById('DriverName').value = '<%=request.getParameter("DriverName")%>';
    document.getElementById('DriverMobileNo').value = '<%=request.getParameter("DriverMobileNo")%>';
    document.getElementById('InitialKm').value = '<%=request.getParameter("InitialKm")%>';
    document.getElementById('FinalKm').value = '<%=request.getParameter("FinalKm")%>';
    document.getElementById('ACUsage').value = '<%=request.getParameter("ACUsage")%>';
    document.getElementById('CostPerKm').value = '<%=request.getParameter("CostPerKm")%>';
    document.getElementById('TravelID').value = '<%=request.getParameter("DepDatepilani")%>'+'-'+'<%=request.getParameter("VehicleNo")%>'+'-'+'<%=request.getParameter("DepTimepilani")%>';
    
</script>	
	<div class="container-contact100-form-btn">
        <button type="submit" class="contact100-form-btn" id="postForm">Submit</button>
      </div>

  </form>

    
        <form class="contact100-form validate-form" action="index.jsp">
			<div class="container-contact100-form-btn">
                         <button class="contact100-form-btn" type="submit">Edit Details</button>
                         </div>
		</form>
      
  </div>
  </div>

         
	  

 
  

  
</body>

<footer>
<script src="validation-functions.js"></script>
</footer>
</html>
