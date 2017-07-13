<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!doctype html>
<html>
 
<head>
    <title>Pie Chart</title>
    <script type="text/javascript" src="<c:url value="/resources/js/jquery.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/plugins/chartjs/Chart.js"/>"></script>
    <style>
    canvas{
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
    </style>
</head>
 
<body>
 <div style="width:80%">
        <div>
            <canvas id="canvas" height="350" width="600"></canvas>
        </div>
    </div>
<script>
var chartLabels = [];
var chartData1 = [];
var chartData2 = [];
 
 
var PieChartData = {
    labels : chartLabels,
    datasets : [
        {
            label: "월별 PC 판매량",
            fillColor : "rgba(220,220,220,0.2)",
            strokeColor : "rgba(220,220,220,1)",
            pointColor : "rgba(220,220,220,1)",
            pointStrokeColor : "#fff",
            pointHighlightFill : "#fff",
            pointHighlightStroke : "rgba(220,220,220,1)",
            data : chartData1 ,
            backgroundColor: [
                "#FF6384",
                "#4BC0C0",
                "#FFCE56",
                "#E7E9ED",
                "#36A2EB"
            ]
        }
         
        /*,
        {
            label: "월별 모니터 판매량",
            fillColor : "rgba(151,187,205,0.2)",
            strokeColor : "rgba(151,187,205,1)",
            pointColor : "rgba(151,187,205,1)",
            pointStrokeColor : "#aff",
            pointHighlightFill : "#aff",
            pointHighlightStroke : "rgba(151,187,205,1)",
            data : chartData2,
            backgroundColor: [
                "#FF6384",
                "#4BC0C0",
                "#FFCE56",
                "#E7E9ED",
                "#36A2EB"
            ]
        }
        */
    ]
  
}
  
function createChart(){
    var ctx = document.getElementById("canvas").getContext("2d");
    new Chart(ctx, {
        type: 'pie',
        data: PieChartData,
         
        options: {
            responsive: true
        }
    });
}
 
try {
    $.ajax({
        type : 'POST',
        url : "<c:url value="/json"/>",
        dataType : 'json',
        data : {
            cmd : 'chart',
            subcmd : 'line'
        },
        success : function(result) {
         
                $.each(result.datas, function(inx, obj) {
                    chartLabels.push(obj.month);
                    chartData1.push(obj.pc);
                    chartData2.push(obj.monitor);
                      
                });
                  
                createChart();
             
        },
        error : function(XMLHttpRequest, textStatus, errorThrown) {
            alert('There is an error : method(group)에 에러가 있습니다.');
        }
    });
 
} catch (e) {
    alert(e);
}
 
  
</script>
 
</body>
 
</html>


