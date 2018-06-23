<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<p><table border=1>
		<tr>			
			<th  width="200">Επικεφαλίδα</th>
			<th  width="600">Τιμή</th>
		</tr>
		<tr>
			<td>Φυλλομετρητής</td>
			<td><%=request.getAttribute("client")%></td>
		</tr>
		<tr>
			<td>Όνομα εξυπηρετητή</td>
			<td><%=request.getAttribute("Servername")%></td>
		</tr>
		<tr>
			<td>Τοποθεσία</td>
			<td><%=request.getAttribute("Locale")%></td>
		</tr>
	</table> </p>
</body>
</html>