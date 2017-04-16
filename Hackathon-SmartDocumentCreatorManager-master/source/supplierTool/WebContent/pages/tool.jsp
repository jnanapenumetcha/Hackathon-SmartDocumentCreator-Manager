<!DOCTYPE html>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Supplier Details Tool</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/pages/css/style.css"
	type="text/css" />
<!--[if lte IE 7]>
		<link rel="stylesheet" href="css/ie.css" type="text/css" charset="utf-8" />	
	<![endif]-->
	<script type="text/javascript">
		function enable(){
			document.getElementById("checktd1").style.display = 'block';
			document.getElementById("checktd").style.display = 'block';
			document.getElementById("checktd2").style.display = 'none';
			document.getElementById("checktd3").style.display = 'none';
		}
	</script>
</head>

<body onload="javascript:enable();">
<script type="text/javascript">

function checkFile(){
	var check = document.getElementById("fileUpload").value;
	if(check==""){
		alert("Please browse Supplier File.");
		return false;
	}
	else{
		document.getElementById("checktd1").style.display = 'block';
		document.getElementById("checktd").style.display = 'block';
		document.getElementById("checktd2").style.display = 'none';
		document.getElementById("checktd3").style.display = 'none';
		return true;
	}
			
}

function disable(){
	document.getElementById("checktd1").style.display = 'none';
	document.getElementById("checktd").style.display = 'none';
	document.getElementById("checktd2").style.display = 'block';
	document.getElementById("checktd3").style.display = 'block';
}

function checkFile1(){
	var check = document.getElementById("fileUpload").value;
	if(check==""){
		document.getElementById("checktd3").style.display = 'none';
		alert("Please browse Supplier File.");
		return false;
	}
}

</script>
<div id="header">
<table style="width:100%"><tr>
<td align="left"><a><img src="<%=request.getContextPath()%>/pages/images/Supplier Central.png"></a></td>
<td align="right"><a href="index.jsp" id="logo1"><img
	src="<%=request.getContextPath()%>/pages/images/logo.png"></a></td>

</tr></table>


	

<div id="navigation">
<ul>
	<li class="first"><a
		href="<%=request.getContextPath()%>/pages/index.jsp">About Tool</a></li>
	<li class="selected"><a
		href="<%=request.getContextPath()%>/pages/tool.jsp">Supplier Tool</a></li>
</ul>
</div>
</div>
<!-- /#header -->
<div id="contents">
<div class="background">
<div id="services">

<!-- File Upload Code -->
<div ><s:form action="resultAction"
	namespace="/" method="POST" enctype="multipart/form-data"
	theme="simple">

	
	<table style="color: #7f7f7f;padding-right: 20px;width: 75%">
		<tr>
		<td colspan="2" style="text-align: center;color: green;">
		<div id="checktd1">
		<s:property value="message" />
		</div>
		<div id="checktd3" style="display: none;">
		Loading Please Wait!!!...
		</div>
		</td>
		</tr>
		<tr>
		<td colspan="2" style="text-align: center;color: green;">&nbsp;</td>
		</tr>
		<tr>
			<td><label>Click to Download the Supplier Information Template </label></td>
			<td><span class="dwnButton"><s:url
				id="fileDownloadTemplate" namespace="/" action="downloadTemplate"></s:url>
			<s:a href="%{fileDownloadTemplate}">SI Template</s:a></span></td>
		</tr>
		<tr>
			<td><br>
			<br>
			<br>
			</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td><label>Select the file to upload</label></td>
			<td><s:file id="fileUpload" name="fileUpload"/></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td style="font-size: 13px; color: #ff0505">*Please upload Supplier file<s:submit value="Upload" name="submit" cssClass="submitBtn" onclick="return checkFile();"/></td>
		</tr>
		<tr>
		<td>&nbsp;</td><td>&nbsp;</td>
		</tr>
		<tr>
		<td>&nbsp;</td><td>&nbsp;</td>
		</tr>
		<s:if test="fileUploaded">
		<tr>
			<td><label>Click to Download the Processed File</label></td>
			<td>
				<div id="checktd">
				<span class="dwnButton1"><s:url id="fileDownloadExcel"
					namespace="/" action="downloadExcel"></s:url> <s:a
					href="%{fileDownloadExcel}" id="dwnBtn" onclick="disable();">Download Supplier File</s:a></span>
				</div> 
				<div id="checktd2">
				<span class="dwnButton1"><s:url id="fileDownloadExcel"
					namespace="/" action="downloadExcel"></s:url> <s:a
					href="#" onclick="return checkFile1();">Download Supplier File</s:a></span>
				</div>
			 </td>
		</tr>
		
		</s:if>
	</table>

</s:form></div>

</div>
</div>
</div>
<!-- /#contents -->
<div id="footer"><table style="width:100%"><tr>
		<td align="left"><span class="footnote">Copyright &copy; 2013. All rights reserved</span></td>
		<td align="right"><img src="<%=request.getContextPath()%>/pages/images/inc.png" /></td>
		</tr></table></div>
<!-- /#footer -->
</body>
</html>