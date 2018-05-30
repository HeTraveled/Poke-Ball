

$(function(){
var x=10;
var y=20;
$("a.tooltip").mouseover(function(e){
this.myTitle=this.title;
this.title="";
var tooltip="<div id='tooltip'>"+this.myTitle+"</div>";   //创建DIV元素
$("#link").append(tooltip);     //追加到文档中
$("#tooltip").css({"top": (e.pageY+y) + "px","left": (e.pageX+x) + "px"}).show();   //设置X  Y坐标， 并且显示
}).mouseout(function(){
this.title=this.myTitle;
$("#tooltip").remove();    //移除
}).mousemove(function(e){
$("#tooltip").css({"top": (e.pageY+y) + "px","left": (e.pageX+x) + "px"});
})
});
