<?php 
$cookie_name = 'Auth';
$authed = isset($_COOKIE[$cookie_name]);
require_once('./System/Core/Server/loader.php');
?>
<!DOCTYPE html>
<html>
<head>
	<title>Console Emulator</title>
	<?php
	    if($authed){
		    includejs('System.Core.io');
            loadjs('System.Client');
            includejs('System.Core.Client.commandFetch');
            includejs('System.Core.commandLoader');
            includejs('System.Config.clientCommands');
            includejs('System.Config.serverCommands');
	    includejs('System.Core.Client.ioLoader');
		} else {
                    includejs('System.Kernel.login');
             }
	?>
	<link rel="stylesheet" type="text/css" href="./Style/consoleGreen.css" />
</head>
<body>
<?php
if($authed){
echo<<<'end'
   <section id="outCanvas">
   <p id="consoleOut"></p>
   </section>
   <span id="prompt">$</span><input type="text" id="consoleIn" autofocus />
end;
}
else{
    echo('Not Authenticifated');
}
?>
</body>
</html>
