###
System.Client.clear
###
clearConsole = (pastOut) ->
    outCanvas = document.getElementById('outCanvas')
    outCanvas.removeChild(element) for element in pastOut when element?

cls = ->
    pastOut = document.getElementsByClassName('pastOutput')
    ret = clearConsole(pastOut)
    while ret.length > 0
        pastOut = document.getElementsByClassName('pastOutput')
        ret = clearConsole(pastOut)