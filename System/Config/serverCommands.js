// Generated by CoffeeScript 1.11.1

/*
System.Config.serverCommands
 */
var serverCommands;

serverCommands = {
  "servConfig": function() {
    return console.log(serverCommands);
  },
  'servDate': function() {
    return fetchCommand('./System/Server/date.php', '');
  }
};
