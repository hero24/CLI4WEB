// Generated by CoffeeScript 1.11.1

/*
System.Client.clear
 */
var clearConsole, cls;

clearConsole = function(pastOut) {
  var element, i, len, outCanvas, results;
  outCanvas = document.getElementById('outCanvas');
  results = [];
  for (i = 0, len = pastOut.length; i < len; i++) {
    element = pastOut[i];
    if (element != null) {
      results.push(outCanvas.removeChild(element));
    }
  }
  return results;
};

cls = function() {
  var pastOut, results, ret;
  pastOut = document.getElementsByClassName('pastOutput');
  ret = clearConsole(pastOut);
  results = [];
  while (ret.length > 0) {
    pastOut = document.getElementsByClassName('pastOutput');
    results.push(ret = clearConsole(pastOut));
  }
  return results;
};
