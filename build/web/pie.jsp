

<%
    session = request.getSession(false);
    if (session == null) {
        request.getRequestDispatcher("Login.jsp").forward(request, response);
        return;
    }
    String status = (String) session.getAttribute("status");
    if (status == null || !status.equals("valid")) {
        request.getRequestDispatcher("Login.jsp").forward(request, response);
        return;
    }
%>

<html>
    <head>
        <script type="text/javascript" src="https://www.google.com/jsapi"></script>
        <script type="text/javascript">
            google.load("visualization", "1", {packages: ["corechart"]});
            google.setOnLoadCallback(drawChart);
            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Task', 'Hours per Day'],
                    ['Work', 11],
                    ['Eat', 2],
                    ['Commute', 2],
                    ['Watch TV', 2],
                    ['Sleep', 7]
                ]);

                var options = {
                    title: 'My Daily Activities',
                    pieHole: 0.4,
                    is3D: true
                };

                var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
                chart.draw(data, options);
            }
        </script>
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-60757234-1', 'auto');
            ga('send', 'pageview');

        </script>
    </head>
    <body>
        <div id="donutchart" style="width: 900px; height: 500px;"></div>

    </body>
</html>