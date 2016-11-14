<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv='Content-type' content='text/html;charset=UTF-8' >
<script>
function startRead()
{  
  var file = document.getElementById('file').files[0];
  if(file)
	{
    getAsText(file);
  }
}
function getAsText(readFile)
{
	var reader;
	try
	{
    reader = new FileReader();
	}catch(e)
	{
		document.getElementById('output').innerHTML = 
			"Error: seems File API is not supported on your browser";
	  return;
  }
  reader.readAsText(readFile, "euc-kr");
  reader.onload = loaded;
  reader.onerror = errorHandler;
}

function loaded(evt)
{
  var fileString = evt.target.result;
  document.getElementById('output').innerHTML = fileString;
}

function errorHandler(evt)
{
  if(evt.target.error.code == evt.target.error.NOT_READABLE_ERR)
	{
		document.getElementById('output').innerHTML = "Error reading file..."
  }
}
</script>
	</head>

	<body>
	<form action="./NewFile10.jsp" method="post" >
		<input id="file" type="file" multiple onchange="startRead()">
		<h3>Progress:</h3>
		<div style="width:100%;height:20px;border:1px solid black;">
		<div id="bar" style="background-color:#45F;width:0px;height:20px;"></div>
		</div>
		<h3>File contents:</h3>
		<pre>
			<code id="output">
			</code>
		</pre>
	</form>
	<INPUT type="submit" value="Àü¼Û">
	</body>
</html>