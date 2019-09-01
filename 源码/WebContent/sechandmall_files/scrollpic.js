var speed3=5 
document.getElementById("demo2").innerHTML=document.getElementById("demo1").innerHTML
function Marquee(){
if(document.getElementById("demo2").offsetWidth-document.getElementById("demo").scrollLeft<=0)
document.getElementById("demo").scrollLeft-=document.getElementById("demo1").offsetWidth
else{
document.getElementById("demo").scrollLeft+=2;
}
}
var MyMar=setInterval(Marquee,speed3)
document.getElementById("demo").onmouseover=function() {clearInterval(MyMar)}
document.getElementById("demo").onmouseout=function() {MyMar=setInterval(Marquee,speed3)}