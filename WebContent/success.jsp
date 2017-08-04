<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upload files</title>
</head>
<body>
	<%  
		String path = request.getContextPath();  
		String basePath = request.getScheme()
				+"://"+request.getServerName()
				+":"+request.getServerPort()
				+path+"/";  
	%>
	
	<h1>upload succeed! </h1> <br>
	
	
	file name:<s:property value="+ uploadsFileName[0]"/><br/>
	file type:<s:property value="+ uploadsContentType[0]"/><br/>
	file address:<p> <%=basePath %><s:property value="'uploadMultiFiles/'   
	    + uploadFileName[0]"/></p><br/> 
	    
	file name:<s:property value="+ uploadsFileName[1]"/><br/>
	file type:<s:property value="+ uploadsContentType[1]"/><br/>
	file address:<p> <%=basePath %><s:property value="'uploadMultiFiles/'   
	    + uploadFileName[1]"/></p><br/> 
	    
	file name:<s:property value="+ uploadsFileName[2]"/><br/>
	file type:<s:property value="+ uploadsContentType[2]"/><br/>
	file address:<p> <%=basePath %><s:property value="'uploadMultiFiles/'   
	    + uploadFileName[2]"/></p><br/> 
</body>
</html>