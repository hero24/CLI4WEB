###
Kernel.cofee
coffee --bare --compile --output live src
###

###
System.Core
###
class consoleIO
    constructor: (inID,outID) ->
        @consoleIn = document.getElementById(inID)
        @consoleOut = document.getElementById(outID)

    readLine: -> @consoleIn.value
    
    onInputChange: (onChangeFunction) -> @consoleIn.onchange = onChangeFunction

    print: (output) -> @consoleOut.innerHTML = output

###
System.Client.Core
###
testIO = (console) ->
    console.onInputChange( -> console.print(console.readLine()))
 
document.addEventListener("DOMContentLoaded",->
    myconsole = new consoleIO("consoleIn","consoleOut")
    testIO(myconsole))

# kernel parts
###
System.Core
System.Client.Core
System.Server.Core
System.Client.Commands
System.Server.Commands
###
###
non-kernel extensions
Commands.Client
Commands.Server
###