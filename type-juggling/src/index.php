<?php
include "secrets.php";

function authenticated() {
  if (!isset($_POST["login"]) || !isset($_POST["password"])) {
    return false;
  }
  return strcmp($_POST["login"], $LOGIN) == 0 &&
    strcmp($_POST["password"], $PASSWORD) == 0;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Flag storage</title>
  <style>
label {
  display: block;
}
</style>
</head>
<body>
<?php if (!authenticated()) { ?>
<form action="index.php" method="POST">
  <label>Login: <input type="text" name="login"></label>
  <label>Password: <input type="password" name="password"></label>
  <input type="submit" value="Log in">
</form>
<?php } else { ?>
<p>The flag is: <?= $FLAG ?></p>
<?php } ?>
</body>
<!-- ?debug=1 -->

<?php
if ($_GET['debug'] == 1) {
  show_source(__FILE__);
}
?>
</html>
