// Generated by CoffeeScript 2.5.1
(function() {
  // Object containing the canvas.
  // canvas could function as a proxy, so other render contexts can be used.
  define(['jquery'], function(jquery) {
    var canvas, context, moduleName;
    moduleName = "canvas";
    console.log(moduleName);
    canvas = jquery("#canvas");
    console.log(canvas[0]);
    if (canvas[0].getContext) {
      context = canvas[0].getContext('2d');
    } else {
      throw new Error("canvas context unavailable");
    }
    return canvas;
  });

}).call(this);
