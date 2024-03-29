// Generated by CoffeeScript 1.11.1

/*
System.Core.commandLoader
require(System.Config.clientCommands)
require(System.Config.serverCommands)
require(Commands.*)
 */
var loadCommand;

loadCommand = function(input, console) {
  var x;
  input = input.split(" ");
  if (clientCommands[input[0]] != null) {
    x = clientCommands[input[0]].call(input);
    if (x == null) {
      return " ";
    } else {
      return x;
    }
  } else if (serverCommands[input[0]] != null) {
    x = serverCommands[input[0]].call(input);
    if (x == null) {
      return " ";
    } else {
      return x;
    }
  } else {
    return "Command not found";
  }
};
