<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="country1" class="country.Country" scope="request" />
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Country Info!</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String selectedCountry = request.getParameter("country0");
	country1.setCountry(selectedCountry);
	%>

	<p>
		ΧΩΡΑ : <input type="text" id="displayCountry" value="<%=country1.getCountry()%>" disabled /> <br>
		ΠΡΩΤΕΥΟΥΣΑ : <input type="text" id="displayCapital" disabled value="<%=country1.getCapital()%>"/> <br>
		ΓΛΩΣΣΑ : <input type="text" id="displayLanguage" disabled value="<%=country1.getLanguage()%>"/> <br>
		ΝΟΜΙΣΜΑ : <input type="text" id="displayCurrency" disabled value="<%=country1.getCurrency()%>"/>
	</p>


</body>
</html>