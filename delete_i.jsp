<%@ page import="java.util.*, java.sql.*"%>
<%	Connection con;
	PreparedStatement ps;
	ResultSet rs;
			try{
			Integer sno = Integer.parseInt(request.getParameter("sno"));
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql:///gmail","root","admin");
					ps = con.prepareStatement("delete from mail where sno="+sno);
					ps.executeUpdate();
					RequestDispatcher rd=request.getRequestDispatcher("inbox.jsp");
					rd.forward(request,response);
			}
			catch(Exception e){
				out.print(e);
				RequestDispatcher rd=request.getRequestDispatcher("sent.jsp");
				rd.include(request,response);
			}
%>