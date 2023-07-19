<?php
session_start();
// include a php file that contains the common database connection codes
include ("dbFunctions.php");

$itemID = $_POST['itemID'];
//echo $itemID;

// create query to retrieve a single record based on the value of $compID 
$queryItem = "SELECT * FROM used_items
          WHERE id=$itemID";

// execute the query
$resultItem = mysqli_query($link, $queryItem) or 
                die(mysqli_error($link));

// fetch the execution result to an array
$rowItem = mysqli_fetch_array($resultItem);
?>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="stylesheets/style.css" rel="stylesheet" type="text/css"/>
        <title></title>
    </head>
    <body>
        <?php include "navbar.php" ?>
        <h3>Items for Sale - Edit</h3>
        <form method="post" action="doEdit.php">
            <label>Name:</label>
            <?php echo $rowItem['name'] ?>
            <br/><br/>
            
            <label>Price:</label>
            <?php echo $rowItem['price'] ?>
            <br/><br/>
            
            <label>Editable description:</label>
            <textarea rows="5" cols="30" 
              name="details"><?php echo $rowItem['description'] ?>
            </textarea> 
            

            <input type="hidden" name="id" value="<?php echo $rowItem['id'] ?>"/>
            <input type="submit" value="Update Item"/>
        </form>
    </body>
</html>
