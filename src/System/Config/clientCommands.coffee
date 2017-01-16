###
System.Config.clientCommands
###
printConfig = ->
    try
        return clientCommands.toSource().replace("\n",'<p class="pastOut" />')
    catch error
        console.log(clientConfig)
        return error.message
clientCommands =
    "clear": -> cls()
    "clientConfig": -> printConfig()
    "echo": (arg) -> echo(arg)
#    "alert" (arg) -> al(arg)