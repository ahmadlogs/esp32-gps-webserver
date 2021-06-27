<?php
//error: Google Maps JavaScript API error: ApiNotActivatedMapError
//solution: click "APIs and services" Link
//			click "Enable APIs and services" button
//			Select "Maps JavaScript API" then click on enable

require 'config.php';

$sql = "SELECT * FROM tbl_gps WHERE 1";
$result = $db->query($sql);
if (!$result) {
  { echo "Error: " . $sql . "<br>" . $db->error; }
}

$row = $result->fetch_assoc();
//$rows = $result -> fetch_all(MYSQLI_ASSOC);

//print_r($row);

//header('Content-Type: application/json');
//echo json_encode($rows);


?>
<html>
<head>
<title>AhmadLogs - Show Locations in Google Maps</title>
</head>
<style>
body {
	font-family: Arial;
}

#map-layer {
	margin: 20px 0px;
	max-width: 700px;
	min-height: 400;
}
</style>
<body>
	<h1>AhmadLogs - Show Locations in Google Maps</h1>
	<div id="map-layer"></div>

	<script
		src="https://maps.googleapis.com/maps/api/js?key=<?php echo GOOGLE_MAP_API_KEY;?>&callback=initMap"
		async defer></script>
        
        <script>
      var map;
      function initMap() {
        
        var mapLayer = document.getElementById("map-layer");
		var centerCoordinates = new google.maps.LatLng(<?php echo $row['lat']; ?>, <?php echo $row['lng']; ?>);
		var defaultOptions = { center: centerCoordinates, zoom: 10 }

		map = new google.maps.Map(mapLayer, defaultOptions);


<?php while($row = $result->fetch_assoc()){ ?>
        var location = new google.maps.LatLng(<?php echo $row['lat']; ?>, <?php echo $row['lng']; ?>);
        var marker = new google.maps.Marker({
            position: location,
            map: map
        });
    <?php } ?>
        
      }
    </script>
</body>
</html>