// Generated by CoffeeScript 1.6.3
(function() {
  var hello, sum;

  hello = function(name) {
    if (name == null) {
      name = "satoshi";
    }
    return alert("hello, " + name);
  };

  "sum = function(a, b){ return (a + b); };";

  sum = function(a, b) {
    return a + b;
  };

  hello;

  alert(sum(3, 5));

}).call(this);
