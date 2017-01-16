###
System.Client.echo
###
echo = (arg) ->
    return arg.slice(1).join(" ")

al (arg) ->
    alert(arg.slice(1).join(" "))