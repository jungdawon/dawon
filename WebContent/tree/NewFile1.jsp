<script type="text/javascript" src="../jquery.min.js"></script>
<script type="text/javascript" src="../jquery.jqplot.js"></script>
<script type="text/javascript" src="./plugins/jqplot.pieRenderer.min.js"></script>
<link rel="stylesheet" type="text/css" hrf="../jquery.jqplot.css" />
<script type="text/javascript">
$(document).ready(function(){ 
    var s1 = [['Sony',7], ['Samsumg',13.3], ['LG',14.7], ['Vizio',5.2], ['Insignia', 1.2]];
         
    $.jqplot('chartdiv',  [[[1, 2],[3,5.12],[5,13.1],[7,33.6],[9,85.9],[11,219.9]]],
    		{ title:'Exponential Line',
    		  axes:{yaxis:{min:-10, max:240}},
    		  series:[{color:'#5FAB78'}]
    		});

});

</script>
<body>
<div id="chartdiv" style="height:400px;width:300px; "></div>
</body>

