###
System.Kernel.login
###
processLogin = ->
    if document.getElementById("loginIn").value is "hero24"
        document.cookie = "Auth=1"
        location.reload(true)
login = ->
    section = document.createElement("section")
    section.setAttribute("id","loginBox")
    input = document.createElement("input")
    input.setAttribute("id","loginIn")
    submit = document.createElement("button")
    submit.setAttribute("id","loginSubmit")
    submit.innerHTML = "Login"
    section.appendChild(input)
    section.appendChild(submit)
    document.body.appendChild(section)
    submit.addEventListener("click",processLogin,false)
	
document.addEventListener("DOMContentLoaded",login,false)
    