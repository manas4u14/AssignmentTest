<%-- 
    Document   : AssignmentTest
    Created on : 24 Feb, 2019, 07:04:07 AM
    Author     : Manasjyoti Banerjee
--%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/json2/20160511/json2.min.js"></script>
<script>  

           function On_Submit() {
        	    var result;    	
            	var request=document.getElementById("input").value;
            	var text='{"request_json1":"abyc", "request_json2" : "ba", "request_json3":"ef","request_json4":"xyzosmnqst"}';
            	var obj = JSON.parse(text);
            	if(obj.request_json1==request){
            	result= "{ 'input' : '"+ obj.request_json1+"' , 'output' : '"+obj.request_json1.substr(2,2)+"' }" ; 
            	} else if(obj.request_json2==request){
        		result ="{ 'input' : '"+ obj.request_json2+"' , 'output' : '"+obj.request_json2+"' }" ;
        		}else if(obj.request_json3==request){
        		result ="{ 'input' : '"+ obj.request_json3+"' , 'output' : '"+" "+"' }" ;
        		}else if(obj.request_json4==request){
        		result ="{ 'input' : '"+ obj.request_json4+"' , 'output' : '"+obj.request_json4.substr(3,2)+obj.request_json4.substr(7,1)+"' }" ;
        		}else{
        		result ="{ 'input' : '"+ request+"' , 'output' : '"+" "+"' }" ;
        	    } document.getElementById("demo").innerHTML =result;
           }          
        </script>

</head>
<body>

 <form method="post"> 
<div><table id="abc" class="xyz">
<tr><td>Input : <td> <td><input type="text" name="input" id="input"></td></tr>
<tr><td colspan="2"><input type="button" id="submit" value="submit" onclick="On_Submit();"/></td></tr>
</table>
</div>
<div>Result : <b id="demo"></b></div>
</form>

</body>
</html>
