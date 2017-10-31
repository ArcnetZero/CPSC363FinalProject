<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "test5545";
$dbname = "CarbonDB";

$text = $_POST["commentText"];
$author = $_SESSION["username"];
$postID = $_POST["postID"];
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
//Prepare and execute
$stmt = $conn->prepare("INSERT INTO blogComment (comment, author, postID) VALUES (?,?,?)");
$stmt->bind_param("ssi", $text, $author, $postID);
$stmt->execute();
//echo $stmt->error;
// echo "\r\n";
//flush();
//ob_flush();
$stmt->close();
$conn->close();
?>