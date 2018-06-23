

import java.io.IOException;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getServerName();
		Locale locale = request.getLocale();
		String client = request.getHeader("user-agent");
		request.setAttribute("Servername", name);
		request.setAttribute("client", client);
		request.setAttribute("Locale", locale);
		RequestDispatcher rd = request.getRequestDispatcher("coinFlip.jsp");
		rd.forward(request, response);
	}
}
