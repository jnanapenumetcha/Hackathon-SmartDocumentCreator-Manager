<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Supplier Central</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/pages/css/style.css" type="text/css" />	
	<!--[if lte IE 7]>
		<link rel="stylesheet" href="css/ie.css" type="text/css" charset="utf-8" />	
	<![endif]-->
</head>

<body>
	<div id="header">
		<table style="width:100%"><tr>
<td align="left"><img src="<%=request.getContextPath()%>/pages/images/Supplier Central.png" ></td>
<td align="right"><img
	src="<%=request.getContextPath()%>/pages/images/logo.png" ></td>

</tr></table><div id="navigation">
			<ul>
				<li class="first selected"><a href="<%=request.getContextPath() %>/pages/index.jsp">About Tool</a></li>
				<li><a href="<%=request.getContextPath() %>/pages/tool.jsp">Supplier Tool</a></li>
			</ul>
		</div>
	</div> <!-- /#header -->
	<div id="contents">
		<div class="background" style="line-height: 1px; color: #7f7f7f">
			<p>Vendor Enrichment is one of the crucial steps in the process of spend analysis. This Tool will help in finding the supplier information.</p>
			<p>It helps in providing complete supplier information on various aspects</p>
			<table style="width: 50% ; font-size: 15px ;border-collapse: collapse; border-spacing: 0px;" >
			<tr style="height: 0px">
			<td  style= "padding: 0px;"><ul type="circle"><li>Supplier Parent Name</li></ul></td>
			<td style="padding: 0px"><ul type="circle"><li>Supplier Type</li></ul></td>
			</tr>
			<tr style="height: 2px">
			<td > <ul type="circle"><li>Traded as</li></ul></td>
			<td > <ul type="circle"><li>Founded</li></ul></td>
			</tr>
			<tr>
			<td><ul type="circle"><li>Founders</li></ul></td>
			<td><ul type="circle"><li>Headquarters</li></ul></td>
			</tr>
			<tr>
			<td><ul type="circle"><li>Area Served</li></ul></td>
			<td><ul type="circle"><li>Key people</li></ul></td>
			</tr>
			<tr>
			<td><ul type="circle"><li>Services</li></ul></td>
			<td><ul type="circle"><li>Products</li></ul></td>
			</tr>
			<tr>
			<td><ul type="circle"><li>Revenue</li></ul></td>
			<td><ul type="circle"><li>Operating Income</li></ul></td>
			</tr>
			<tr>
			<td><ul type="circle"><li>Profit</li></ul></td>
			<td><ul type="circle"><li>Net Income</li></ul></td>
			</tr>
			<tr>
			<td><ul type="circle"><li>Total Assets</li></ul></td>
			<td><ul type="circle"><li>Total Equity</li></ul></td>
			</tr>
			<tr>
			<td><ul type="circle"><li>No of Employees</li></ul></td>
			<td><ul type="circle"><li>Industry</li></ul></td>
			</tr>
			<tr>
			<td><ul type="circle"><li>Divisions</li></ul></td>
			<td><ul type="circle"><li>Website</li></ul></td>
			</tr>
			
			</table>
			<p>&nbsp;</p>
			<p>Supplier line of business will help us to classify the supplier line items correctly and quickly.</p>
			<p>Parent- child linkage of the supplier will be easy we get the supplier parent name over here.</p>
		</div>
	</div> <!-- /#contents -->
	<div id="footer">
		<table style="width:100%"><tr>
		<td align="left"><span class="footnote">Copyright &copy; 2013. All rights reserved</span></td>
		<td align="right"><img src="<%=request.getContextPath()%>/pages/images/inc.png"/></td>
		</tr></table>
	</div> <!-- /#footer -->
</body>
</html>