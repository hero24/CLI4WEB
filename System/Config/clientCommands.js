// Generated by CoffeeScript 1.11.1

/*
System.Config.clientCommands
 */
var clientCommands, printConfig;

printConfig = function() {
  var error;
  try {
    return clientCommands.toSource().replace("\n", '<p class="pastOut" />');
  } catch (error1) {
    error = error1;
    console.log(clientConfig);
    return error.message;
  }
};

clientCommands = {
  "clear": function() {
    return cls();
  },
  "clientConfig": function() {
    return printConfig();
  },
  "echo": function(arg) {
    return echo(arg);
  }
};