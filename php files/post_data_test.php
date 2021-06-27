<?php require 'config.php'; ?>

<!DOCTYPE html>
<html>
<body>

<h2>AhmadLogs - Test POST data</h2>

<form method="POST" action="<?php echo POST_DATA_URL;?>">
  <label for="apikey">Api Key:</label><br>
  <input type="text" id="api_key" name="api_key" value="<?php echo ESP32_API_KEY;?>"><br>
  <label for="latitude">Latitude:</label><br>
  <input type="text" id="lat" name="lat" value="-33.890541"><br>
  <label for="longitude">Longitude:</label><br>
  <input type="text" id="lng" name="lng" value="151.274857"><br><br>
  <input type="submit" value="Submit">
</form> 

</body>
</html>