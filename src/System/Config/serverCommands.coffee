###
System.Config.serverCommands
###
serverCommands =
    "servConfig" : -> console.log(serverCommands),
    'servDate': -> fetchCommand('./System/Server/date.php','')