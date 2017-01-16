###
System.Core.Client.ioLoader
require(System.Core.io)
require(System.Core.commandLoader)
###
inputOutput = (console) ->
    console.onInputChange( ->console.print(loadCommand(console.readLine())))
	
testIO = (console) ->
    console.onInputChange( -> console.print(console.readLine()))
 
document.addEventListener("DOMContentLoaded",->
    myconsole = new consoleIO("consoleIn","consoleOut","outCanvas")
    # assign system console to document
    document.sysConsole = myconsole
    inputOutput(myconsole))
