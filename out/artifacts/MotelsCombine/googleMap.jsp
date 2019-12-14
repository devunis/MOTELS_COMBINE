<%--
  Created by IntelliJ IDEA.
  User: jy
  Date: 2019/12/10
  Time: 6:10 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBojZjdtUgqjiD7e94JZSry18X4I3TanpQ&callback=initMap"></script>
    <script>
        function initialize() {
            var LatLng = new google.maps.LatLng(37.629151, 127.081217);
            var mapProp = {
                center: LatLng, // 위치
                zoom: 15, // 어느정도까지 세세하게 볼 것인지.
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);
            var marker = new google.maps.Marker({
                position: LatLng,
                map: map,
            });
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</head>
<body>
<div id="googleMap" style="width:200px;height:200px;"></div>
</body>
</html>
