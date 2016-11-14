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
    var data = [['USwwwwwwwwwwwwww',70], ['IE',30], ['GB',23]];
    var plot1 = jQuery.jqplot('Countries', [data],
    {	
    	title:'기본 파이 차트 테스트',	//차트 제목
    	seriesColors: ["red", "yellow", "green"], //차트 색상 지정
        seriesDefaults: {
            // Make this a pie chart.
            renderer: jQuery.jqplot.PieRenderer,	//원형상단에값보여주기(알아서%형으로변환)
            rendererOptions: {
            	showDataLabels: true,		//파이챠트 내 데이터 보임 유무 설정
            	fill: true,
            	sliceMargin: 5,				//차트사이의 간격
            	lineWidth: 100,				//?
            	startAngle: 270,			//차트 각도 시작지점
            	//dataLabelPositionFactor : 0.2,	//차트 데이타 label 위치
            	//dataLabelThreshold : 0				//?
                
            }
        },
        legend: {
	        	show: true,
	        	border: true, 
	        	location: 'e',	//범례의 위치 e= 오론쯕, s=아래, w=왼쪽
	        	border: 'none',
	        	rendererOptions: {
	                numberRows: 3
	            },//범례 표시 줄갯수
	            //placement: 'outsideGrid'	//범례를 그리드 밖에 표현
        	},
        grid: {
        		
        		shadow:true,						//그리드의 그림자 표시여부
        		drawBorder: true,				  // 그리드 외곽 border 설정
        		//borderWidth:0,
        		//background: '#ffffff',          // 그리드 백그라운드 설정
                shadow:true                    	  // 그리드 그림자 설정

        	}
        

    }
  );
});

</script>

<body>
<div id="Countries" style="height:400px;width:1000px "></div>

</body>
</html>