<?php
$currency = '&#x24; '; //Currency Character or code

$db_username = 'Q2XBABNsQd';
$db_password = '4LJ8nyUoHv';
$db_name = 'Q2XBABNsQd';
$db_host = 'remotemysql.com';

$shipping_cost      = 1.50; //shipping cost
$taxes              = array( //List your Taxes percent here.
                            'VAT' => 12, 
                            'Service Tax' => 5
                            );						
//connect to MySql						
$mysqli = new mysqli($db_host, $db_username, $db_password,$db_name);						
if ($mysqli->connect_error) {
    die('Error : ('. $mysqli->connect_errno .') '. $mysqli->connect_error);
}
?>
