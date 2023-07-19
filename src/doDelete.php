<?php
// include a php file that contains the common database connection codes
include ("dbFunctions.php");

//retrieve id from the hidden form field of the previous page (index.php)
$theID = $_POST['itemID'];
echo $theID;

//build a query to delete a specific record based on id
$queryDelete = "DELETE FROM used_items WHERE id =$theID;";

$status = mysqli_query($link, $queryDelete) or die(mysqli_error($link));


//if statement to check whether the delete is successful
//store the success or error message into variable $message
if ($status) {
    $message = "Item has been deleted";
} else {
    $message = "Item delete failed";
}

mysqli_close($link);
?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylesheets/style.css" rel="stylesheet" type="text/css"/>
        <title>Item Delete</title>
    </head>
    <body>
        <?php include "navbar.php" ?>
        <h3>Items for Sale - Delete</h3>
        <?php
        echo $message;
        ?>
    </body>
</html>
