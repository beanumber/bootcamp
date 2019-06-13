remark.macros.scalewidth = function (percentage) {
  var url = this;
  return '<img src="' + url + '" style="width: ' + percentage + '" />';
};

remark.macros.scaleheight = function (percentage) {
  var url = this;
  return '<img src="' + url + '" style="height: ' + percentage + '" />';
};