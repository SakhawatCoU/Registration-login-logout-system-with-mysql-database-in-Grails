<html>

<body>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "userinfo";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}


$sql = "INSERT INTO MyGuests (firstname,lastname,adress,phone , email,birthdate,password)
VALUES ('$_POST[firstname]','$_POST[lastname]','$_POST[address]','$_POST[phone]','$_POST[email]','$_POST[dob]','$_POST[passwrd]')";

if (mysqli_query($conn, $sql)) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

mysqli_close($conn);
?>
</body>

</html>