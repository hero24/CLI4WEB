###
System.Core.commandLoader
require(System.Config.clientCommands)
require(System.Config.serverCommands)
require(Commands.*)
###

loadCommand = (input,console) ->
    input = input.split(" ")
    if clientCommands[input[0]]?
        x = clientCommands[input[0]].call(input)
        unless x?
            return " "
        else
            return x
    else if serverCommands[input[0]]?
        x = serverCommands[input[0]].call(input)
        unless x?
            return " "
        else
            return x
    else
        return "Command not found"