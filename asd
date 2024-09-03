<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IP Sensitive Landing Page</title>
</head>
<body>
    <h1>Welcome to My Beacons Page</h1>
    <h2>Your Location: <span id="location">Loading...</span></h2>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $.get("https://ipinfo.io?token= e7740ba0b20f7f", function(response) {
            var location = response.city + ", " + response.region;
            document.getElementById("location").innerHTML = location;
        }, "jsonp");
    </script>
</body>
</html>
