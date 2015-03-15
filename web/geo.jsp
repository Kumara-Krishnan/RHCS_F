<%-- 
    Document   : geo
    Created on : Jan 30, 2015, 8:58:36 PM
    Author     : Kabilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <script type='text/javascript' src='https://www.google.com/jsapi'></script>
    <script type='text/javascript'>
     google.load('visualization', '1', {'packages': ['geochart']});
     google.setOnLoadCallback(drawMarkersMap);

      function drawMarkersMap() {
      var data = google.visualization.arrayToDataTable([
        ['City',   'Population', 'Area'],
        ['Madurai',      2761477,    31],
        ['Thuraipakkam',     1324110,    76],
        ['Coimbatore', 1234567, 12]
      ]);

      var options = {
        region: '034',
        sizeAxis: { minValue: 0, maxValue: 100 },
        
        displayMode: 'markers',
        colorAxis: {colors: ['palegreen','orange', 'crimson']}
      };

      var chart = new google.visualization.GeoChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    };
    </script>
  </head>
  <body>
    <div id="chart_div" style="width: 900px; height: 500px;"></div>
  </body>
</html>