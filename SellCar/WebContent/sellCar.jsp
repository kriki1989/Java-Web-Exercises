<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="car" class="carTransaction.Car" scope="request" />
<jsp:setProperty property="*" name="car" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Search a car</title>
</head>

<body>
	<form action="sellCar.jsp" method="post">
		<table>
			<thead colspan="2">
				<th>Προσθήκη αυτοκινήτου:</th>
			</thead>
			<tbody>
				<tr>
					<td>Αριθμός κυκλοφορίας:</td>
					<td><input type="text" name="registration"
						placeholder="ZZK 9580" /></td>
				</tr>
				<tr>
					<td>Εργοστάσιο κατασκευής:</td>
					<td><input type="text" name="factory" placeholder="BMW" /></td>
				</tr>
				<tr>
					<td>Μοντέλο:</td>
					<td><input type="text" name="model" placeholder="316i" /></td>
				</tr>
				<tr>
					<td>Χρώμα:</td>
					<td><input type="text" name="colour" placeholder="Μπλε" /></td>
				</tr>
				<tr>
					<td>Κυβικά:</td>
					<td><input type="text" name="cc" placeholder="1600" /></td>
				</tr>
				<tr>
					<td>Έτος κατασκευής</td>
					<td><input type="text" name="regdate" placeholder="2010" /></td>
				</tr>
				<tr>
					<td><input type="reset" value="Καθαρισμός" /></td>
					<td><input type="submit" value="Προσθήκη" /></td>
				</tr>
			</tbody>
		</table>
	</form>
	<a href="findCar.jsp"><button type="button">Αναζήτηση αυτοκινήτου</button></a>
	<%
		if (request.getParameter("registration") != null) {
			int rowsAdded = car.insertValues();
			if (rowsAdded != 0)
				out.println("Η καταχώρηση πραγματοποιήθηκε.");
		}
	%>
</body>
</html>