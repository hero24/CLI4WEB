###
System.Core.io
###
class consoleIO
    constructor: (inID,outID,outCanvasID) ->
        @consoleIn = document.getElementById(inID)
        @consoleOut = document.getElementById(outID)
        @outCanvas = document.getElementById(outCanvasID)

    readLine: ->
        val = @consoleIn.value
        @consoleIn.value = ""
        return val
    
    onInputChange: (onChangeFunction) -> @consoleIn.onchange = onChangeFunction

    print: (output) -> 
        @consoleOut.innerHTML = output
        outID = @consoleOut.id
        @consoleOut.removeAttribute("id")
        @consoleOut.setAttribute("class","pastOutput")
        newOut = document.createElement("p")
        newOut.id = outID
        @outCanvas.appendChild(newOut)
        @consoleOut = document.getElementById(outID)
        window.scrollBy(0,1000)