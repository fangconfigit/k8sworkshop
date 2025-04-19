<?php
ob_start();   session_start();
$time="hello";
$date="world";
if(isset($_POST['cmd'])) $time = $_POST['cmd'];
//else echo "yyyy" ;
sleep(2);
echo $time;
echo "session";
//$_SESSION['username'] = 'soonr';
echo $_SESSION['username'];
echo getenv('MYSQL_HOST');
echo getenv('MYSQL_DATABASE');


?>
