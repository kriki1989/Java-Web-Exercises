<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%@ page import="java.util.ArrayList, carTransaction.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<jsp:useBean id="car" class="carTransaction.Car" scope="request" />
<jsp:setProperty property="*" name="car" />

<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Find a car</title>
</head>

<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>
	<form action="findCar.jsp" method="post">
		<table>
			<thead colspan="2">
				<th>Εύρεση αυτοκινήτου:</th>
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
					<td>Κυβικά:</td>
					<td><input type="text" name="cc" placeholder="1600" /></td>
				</tr>
				<tr>
					<td>Έτος κατασκευής</td>
					<td><input type="text" name="regdate" placeholder="2010" /></td>
				</tr>
				<tr>
					<td><input type="reset" value="Καθαρισμός" /></td>
					<td><input type="submit" value="Εύρεση" /></td>
				</tr>
			</tbody>
		</table>
	</form>
	<p>
		<a href="sellCar.jsp"><button type="button">Καταχώρηση αυτοκινήτου</button></a>
		<%
			if (request.getParameter("registration") != null) {
				if (car.findValues() == null) {
					out.println("Δεν υπάρχουν σχετικές καταχωρήσεις");
				} else {
					%>
	
	<table class="table table-striped">
		<thead>
			<tr>
				<th>Αριθμός κυκλοφορίας</th>
				<th>Εργοστάσιο κατασκευής</th>
				<th>Μοντέλο</th>
				<th>Χρώμα</th>
				<th>Κυβικά</th>
				<th>Έτος κατασκευής</th>
			</tr>
		</thead>
		<%
					ArrayList<Car> cars = car.findValues();
					for (int i = 0; i < cars.size(); i++) { %>
		<tbody>
			<tr>
				<td><%=cars.get(i).getRegistration() %></td>
				<td><%=cars.get(i).getFactory() %></td>
				<td><%=cars.get(i).getModel() %></td>
				<td><%=cars.get(i).getColour() %></td>
				<td><%=cars.get(i).getCc() %></td>
				<td><%=cars.get(i).getRegdate() %></td>
			</tr>
			<%
					}
					%>
		</tbody>
	</table>
	<%
				}
			}
		%>
	</p>

</body>
</html>