function login(){
	var form = document.createElement("form");
	var name = document.getElementById("userid");
	document.body.appendChild(form);
	var password = document.getElementById("userpass");	
    
	/*var input1 = document.createElement("input");  
    input1.type = "password";  
    input1.id = "userpass"; 
    input1.name = "userpass";
    input1.value = password;
    
    var input = document.createElement("input");  
    input.type = "text";  
    input.id = "userid";
    input.name ="userid";
    input.value = name;*/   
	
    form.appendChild(name);
	form.appendChild(password);
    form.method = "post";    
	form.action = "/goods/user/login.htm";
	form.submit();
}
function reg(){
	var curWwwPath = window.document.location.href;
	var pathName = window.document.location.pathname;
	var pos = curWwwPath.indexOf(pathName);
	var localhostPath = curWwwPath.substring(0, pos);
	var projectName = pathName.substring(0, pathName.substr(1).indexOf('/') + 1);
	var localPath=localhostPath+projectName;
	var link = localPath+'/jsp/reg.jsp';
	var xpwidth=window.screen.width-10;
    var xpheight=window.screen.height-35;
    window.location.href=link;
	//window.open(link,reg, '_blank', 'resizable=yes,directories=no,top=0,left=0,width='+xpwidth+',height='+xpheight)
}


	
