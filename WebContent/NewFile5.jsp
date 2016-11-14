<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<div id="my_chart" style="width: 500px; height: 300px"> </div>
		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
		<script>    google.load("visualization", "1", {packages:["corechart"]}); 
			google.setOnLoadCallback(drawChart);
			function drawChart() {     
				// Create and populate the data table.     
				var data = google.visualization.arrayToDataTable([       
				['Flavour', 'Percent'],       
				['Apple', 17.36],       
				['Strawberry Rhubarb', 15.62],       
				['Pumpkin', 13.63],       
				['Cherry', 11.25],       
				['Blueberry', 7.53],       
				['Lemon Meringue', 6.45],       
				['Chocolate', 3.97],       
				['Chess', 1.46],       
				['Other', 7.09]     
				]);     
				var options = {       
					title: 'What is your favorite pie flavor?'    
				};     


				new google.visualization.LineChart(       
					document.getElementById('my_chart')).draw(data, options);   
				} 
			</script>  
	</head>
	<body>
	<div id="tide_chart_week" stye="float:left; height:800px; background:blue;"></div>
	</body>
</html>



