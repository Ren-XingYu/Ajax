function getRequest(){
    var xmlhttp;
    if (window.XMLHttpRequest) {
        // code for IE7+, Firefox, Chrome, Opera, Safari
        xmlhttp=new XMLHttpRequest();
    } else {
        // code for IE6, IE5
        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    return xmlhttp;
}

function checkUsername() {
    var request=getRequest();
    request.open("POST","RegisterServlet",true);
    var username=document.getElementById("username").value;
    var span=document.getElementById("username_span");
    //如果使用post方式带数据，那么这里要添加头，说明提交的数据类型是一个经过url编码的form表单数据
    //如果不携带数据可以不用添加头,直接request.send()就可以了
    request.setRequestHeader("Content-type","application/x-www-form-urlencoded");
    request.onreadystatechange=function(){
        if (request.readyState==4 && request.status==200) {
            var data=request.responseText;
            if (data == 1) {
                span.innerHTML="<font color='red'>用户名已存在</font>"
            }else {
                span.innerHTML="<font color='green'>用户名可用</font>"
            }
        }
    }
    request.send("username="+username);
}