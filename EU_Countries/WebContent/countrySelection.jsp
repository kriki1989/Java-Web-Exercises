<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="country1" class="country.Country" scope="request" />
<html>
<head>
<script src="./jQuery/jquery-3.3.1.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Type a country!</title>
</head>
<body>
	<form action="displayCountryInfo.jsp" method="GET">
	<input type="text" name="country0"  />
	<input type="submit" value="ok" />
	</form>

</body>
</html>