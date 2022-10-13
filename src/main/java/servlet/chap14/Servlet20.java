package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.chap14.Customer;

/**
 * Servlet implementation class Servlet20
 */
@WebServlet("/Servlet20")
public class Servlet20 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet20() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. request param 수집
		String idStr = request.getParameter("id");

		// 2. request param 가공
		if (idStr == null || idStr.equals("")) {
			idStr = "1";
		}
		
		int id = Integer.parseInt(idStr);

		// 3. business logic 실행
		String sql = "SELECT CustomerID, CustomerName, Address, City, Country "
				+ "FROM Customers "
				+ "WHERE CustomerID = ?";

		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				PreparedStatement stmt = con.prepareStatement(sql);) {

			stmt.setInt(1, id);
			try (ResultSet rs = stmt.executeQuery();) {
				// 4. 결과를 attribute 추가
				if (rs.next()) {
					Customer c = new Customer();
					c.setId(rs.getInt("customerID"));
					c.setAddress(rs.getString("address"));
					c.setCity(rs.getString("city"));
					c.setCountry(rs.getString("country"));
					c.setName(rs.getString("customerName"));

					request.setAttribute("customer", c);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		// 5. forward / redirect
		String view = "/WEB-INF/view/chap14/view08.jsp";
		request.getRequestDispatcher(view).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
