<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="./jquery.min.js"></script>
<script type="text/javascript" src="./jquery.jqplot.js"></script>
<script type="text/javascript" src="./plugins/jqplot.pieRenderer.min.js"></script>
<link class="include" rel="stylesheet" type="text/css" href="./jquery.jqplot.min.css" />
<link rel="stylesheet" type="text/css" hrf="./jquery.jqplot.css" />
</head>

<script type="text/javascript">
$(document).ready(function () {
    var data = [['Verwerkende industrie',70], ['Primaire producent',30], ['Bewerkende industrie',23]];
    //jQuery.jqplot.config.enablePlugins = true;
    var plot1 = jQuery.jqplot('Countries', [data],
    {	
    	title:'���� ��Ʈ �׽�Ʈ',	//��Ʈ ����
    	seriesColors: ["red", "yellow", "green"],	//��Ʈ ���� ���� 
        seriesDefaults: {
            // Make this a pie chart.
            renderer: jQuery.jqplot.PieRenderer,	//���� ��ܿ� �� �����ֱ�(�˾Ƽ� %������ ��ȯ)
            rendererOptions: {
            	showDataLabels: true,		//���� ��Ʈ �� ������ ���� ���� ����
            	fill: true,				//������Ʈ ���� ���θ� ����� �Ⱥ���(false)
            	sliceMargin: 5,				//��Ʈ������ ����
            	shadow: true,				//���� ��Ʈ ���� ������ �׸���
            	lineWidth: 5,				//������Ʈ ���β� fill=fasle�϶� �ַλ��
            	padding: 56,				//��Ʈ ũ�� 
            	startAngle: 270			//��Ʈ ���� ��������
            	
            	//dataLabelPositionFactor : 0.2,	//��Ʈ ����Ÿ label ��ġ
            	//dataLabelThreshold : 0				//?
                
            }
        },
        legend: {
	        	show: true,
	        	border: true, 
	        	location: 'e',	//������ ��ġ e=������, s=�Ʒ�, w=����
	        	//border: 'none',	//���� �ܰ��� ǥ��
	        	rendererOptions: {
	                numberRows: 3
	            },//���� ǥ�� ��(line) ����
	            //placement: 'outsideGrid'	//���ʸ� �׸��� �ۿ� ǥ��
        	},
        grid: {
        		
        		shadow:true,						//�׸����� �׸��� ǥ��
        		drawBorder: true,				//�׸��� �ܰ� border ����
        		//borderWidth:0,
        		//background: '#ffffff',          //�׸��� ��׶��� ����
                shadow:true                    	 //�׸��� �׸��� ����

        	}
    }
  );
});

</script>

<body>
<div id="Countries" style="height:400px;width:600px; "></div>

</body>
</html>