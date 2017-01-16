/*
	Prototype kernel v.1
*/
 
 /*
    document.addEventListener("DOMContentLoaded",function(event){
    var consoleIn = document.getElementById("consoleIn");
    var consoleOut = document.getElementById("consoleOut");
    consoleIn.onchange=function(){
        if(consoleIn.value.indexOf("lookupModule") !== -1){
            var val = consoleIn.value.split(" ");
            console.log(val);
            consoleOut.innerHTML = "<a href=\"https://www.ucc.ie/modules/descriptions/CS.html#"+val[1]+"\">"+val[1]+"</a>";
        } else {
            consoleOut.innerHTML = consoleIn.value;
        }
        console.log(consoleOut.innerHTML);
    }
    })
    */
        var consoleIO, testIO;

consoleIO = (function() {
  function consoleIO(inID, outID) {
    this.consoleIn = document.getElementById(inID);
    this.consoleOut = document.getElementById(outID);
  }

  consoleIO.prototype.readLine = function() {
    return this.consoleIn.value;
  };

  consoleIO.prototype.onInputChange = function(onChangeFunction) {
    return this.consoleIn.onchange = onChangeFunction;
  };

  consoleIO.prototype.print = function(output) {
    return this.consoleOut.innerHTML = output;
  };

  return consoleIO;

})();

testIO = function(console) {
  return console.onInputChange(function() {
    return console.print(console.readLine());
  });
};

document.addEventListener("DOMContentLoaded", function() {
  var myconsole;
  myconsole = new consoleIO("consoleIn", "consoleOut");
  return testIO(myconsole);
});

    /*
    lookupModule
    https://www.ucc.ie/modules/descriptions/CS.html#CS3318
    */