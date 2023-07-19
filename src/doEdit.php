<?php
session_start();
// include a php file that contains the common database connection codes
include ("dbFunctions.php");

//retrieve computer details from the textarea on the previous page
$updatedDesc = $_POST['details'];

//retrieve id from the hidden form field of the previous page
$theID = $_POST['id'];

$msg = "";

//build a query to update the table
//update the record with the details from the form
$queryUpdate = "UPDATE used_items 
                SET description='$updatedDesc'
                WHERE id = $theID";

//execute the query
$resultUpdate = mysqli_query($link, $queryUpdate)
        or die(mysqli_error($link));

//if statement to check whether the update is successful
//store the success or error message into variable $msg
if ($resultUpdate) {
    $msg = "record successfully updated";
} else {
    $msg = "record not updated";
}
?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="stylesheets/style.css" />
        <title></title>
    </head>
    <body>
        <?php include "navbar.php" ?>
        <h3>Items for Sale - Edit</h3>
        <?php
        echo $msg;
        ?>
    </body>
</html>
