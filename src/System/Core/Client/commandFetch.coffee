###
System.Core.Client.commandFetch
###
fetchCommand = (address,args) ->
    ajax = new XMLHttpRequest()
    ajax.onreadystatechange = () ->
        if this.readyState == 4 && this.status == 200
            x = this.responseText
            document.sysConsole.print(x)
    ajax.open("GET",address+'?'+args,true)
    ajax.send()