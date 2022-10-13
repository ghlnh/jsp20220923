package servlet.chap14;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.chap14.Customer;

/**
 * Servlet implementation class Servlet19
 */
@WebServlet("/Servlet19")
public class Servlet19 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Servlet19() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sql = "SELECT CustomerID, CustomerName, Address, City, Country "
				+ "FROM Customers";
		
		// 쿼리실행
		ServletContext application = request.getServletContext();

		String url = application.getAttribute("jdbc.url").toString();
		String user = application.getAttribute("jdbc.username").toString();
		String pw = application.getAttribute("jdbc.password").toString();

		try (
				Connection con = DriverManager.getConnection(url, user, pw);
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(sql);) {
			// 결과가공 및 attribute 추가
			List<Customer> list = new ArrayList<>();
			while (rs.next()) {
				int id = rs.getInt("customerid"); // 대소문자 구분 안함
//				String name = rs.getString(2);
				String name = rs.getString("CustomerName");
//				String address = rs.getString(3);
				String address = rs.getString("Address");
				String city = rs.getString("city");
				String country = rs.getString("country");
				
				Customer c = new Customer();
				c.setId(id);
				c.setName(name);
				c.setAddress(address);
				c.setCity(city);
				c.setCountry(country);
				
				list.add(c);
			}
			
			request.setAttribute("customers", list);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// forward / redirect
		String path = "/WEB-INF/view/chap14/view07.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
