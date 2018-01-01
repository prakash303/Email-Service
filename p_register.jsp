<%@ page import="java.util.*, java.sql.*"%>

<%	Connection con;
	PreparedStatement ps;
	ResultSet rs;
			String name = request.getParameter("name");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String phone = request.getParameter("phone");
			String address = request.getParameter("address");
			boolean valid=false;
			try
			{Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql:///gmail","root","admin");
					ps = con.prepareStatement("select username from userinfo");
					rs = ps.executeQuery();
					while(rs.next())
			{
				if(username.equals(rs.getString("username")))
				{
					valid=true;
					break;
				}
			}
			if(valid)
			{
				
				out.print("<html><b>Username already exist</b></html>");
				RequestDispatcher rd=request.getRequestDispatcher("register.jsp");
				rd.include(request,response);
			}
			else
			{
			/* Inserting values in main table */
			ps=con.prepareStatement("insert into userinfo values(?,?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2,username);
			ps.setString(3,password);
			ps.setString(4,address);
			ps.setString(5,phone);
			ps.executeUpdate();
			
			
			/* Redirecting to Login Page */
			out.print("<html><center><b>Account Registered! Now you can Login</b></center></html>");
			RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
			rd.include(request,response);
			}
				
			}
			catch(Exception e)
			{
				out.print(e);
			}
%>