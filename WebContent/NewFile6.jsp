<HTML>
<HEAD>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta http-equiv="Expires" content="0">
	<meta http-equiv="Cache-Control" content="no-cache">
	<meta http-equiv="Pragma" content="no-cache">
	<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

	<TITLE>
	</TITLE>

	<LINK href="/css/jquery-ui-1.9.2.custom.css" rel=stylesheet type=text/css charset="UTF-8">
<script type="text/javascript" src="./jquery.min.js"></script>
<script type="text/javascript" src="./jquery.jqplot.js"></script>
<script type="text/javascript" src="./jquery-ui.js"></script>
<script type="text/javascript" src="./jqplot/plugins/jqplot.barRenderer.min.js"></script>
<script type="text/javascript" src="./jqplot/plugins/jqplot.categoryAxisRenderer.min.js"></script>
<script type="text/javascript" src="./jqplot/plugins/jqplot.pointLabels.js"></script>
<script type="text/javascript" src="./jqplot/export-jqplot-to-png.js"></script>
<script type="text/javascript" src="./plugins/jqplot.highlighter.js"></script>
<script type="text/javascript" src="./plugins/jqplot.cursor.js"></script>
<script type="text/javascript" src="./plugins/jqplot.dateAxisRenderer.js"></script>
<script type="text/javascript" src="./plugins/jqplot.pieRenderer.min.js"></script>
<link class="include" rel="stylesheet" type="text/css" href="./jquery.jqplot.min.css" />
<link rel="stylesheet" type="text/css" hrf="./jquery.jqplot.css" />	

	<style type="text/css">
		.title {
			font-size:16pt;
			font-weight:bold;
			display:block;
			width:1200px;
			height:50px;
			border:1px solid #c6c6c6;
			text-align:center;
			vertical-align:middle;
			line-height:50px;
		}
		
		.prd {
			background-color:#d6d6d6;
			border-color : #c6c6c6;  
		}
		
		.dev {
			background-color:#f6eaf4;
			border-color : #e6dae4;
		}
	</style>	

		
	<script>
	
	$(document).ready(function(){
		  var line1=[['2016-05-01', 100], ['2016-05-05', 400], ['2016-05-10', 800], ['2016-05-15', 1000]];
		  var plot1 = $.jqplot('chart1', [line1], {
		      title:'Data Point Highlighting',
		      series:[
		              {
		                  // Change our line width and use a diamond shaped marker.
		                  lineWidth:2,
		                  markerOptions: { style:'circle' }
		              }
		          ],
		          grid:{
		              background: '#FFFFFF',      // CSS color spec for background color of grid.
		              borderColor: '#FFFFFF',     // CSS color spec for border around grid.
		              borderWidth: 2.0           // pixel width of border around grid.
		          },

		      axes:{
		        xaxis:{
		          renderer:$.jqplot.DateAxisRenderer,
		         	tickOptions:{
		            formatString:'%Y/%m/%d',
		            textColor: '#FFFFFF'

		          },
		          ticks : ['2016-04-30','2016-05-01','2016-05-05','2016-05-10','2016-05-15','2016-05-16']
		        },
		        yaxis:{
		          tickOptions:{
		            //formatString:'$%.2f'
		            }
		        }
		      },
		      highlighter: {
		        show: true,
		       // sizeAdjust: 7.5
		      }
		  });
		});

</script>
</HEAD>
<BODY>
<div id="chart1" style="width:950px;height:300px;"></div>

</BODY>
</HTML>


