// Generated by CoffeeScript 1.6.3
(function() {
  var key, sales, value;

  sales = {
    "tanaka": 100,
    "taguchi": 200,
    "sasaki": 300
  };

  for (key in sales) {
    value = sales[key];
    alert("" + key + ": " + value);
  }

}).call(this);