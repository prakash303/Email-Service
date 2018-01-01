<%@ page import="java.util.*, java.sql.*,java.text.*"%>


<%	Connection con;
	PreparedStatement ps;
	ResultSet rs;
			String m_from = request.getParameter("m_from");
			String m_to = request.getParameter("m_to");
			String message = request.getParameter("message");
			String subject = request.getParameter("subject");
			int sno = 0;
			/*Getting date over here*/
								java.util.Date dNow = new java.util.Date();
								SimpleDateFormat day = new SimpleDateFormat ("dd.MM.yyyy");
								
			try
			{	Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql:///gmail","root","admin");
					ps = con.prepareStatement("select * from mail");
					rs = ps.executeQuery();
					while(rs.next())
			{	
				sno=rs.getInt("Sno")+1;
			}
			
			/* Inserting values in main table */
			ps=con.prepareStatement("insert into mail values("+sno+",?,?,?,?,?)");
			ps.setString(1,day.format(dNow));
			ps.setString(2,m_from);
			ps.setString(3,m_to);
			ps.setString(4,subject);
			ps.setString(5,message);
			ps.executeUpdate();
			
			/* Inserting values in Second table */
			ps=con.prepareStatement("insert into sent_mail values("+sno+",?,?,?,?,?)");
			ps.setString(1,day.format(dNow));
			ps.setString(2,m_from);
			ps.setString(3,m_to);
			ps.setString(4,subject);
			ps.setString(5,message);
			ps.executeUpdate();
			
			/* Redirecting to Login Page */
			%>
			<script>
			function showAlert()
			{alert("Email Sent!!")}
			</script>
			

			<%
			
			RequestDispatcher rd=request.getRequestDispatcher("inbox.jsp");
			rd.include(request,response);  %>
			
			<body onload="showAlert()">
			<%
			
				
			}
			catch(Exception e)
			{
				out.print("Error Not Sent!");
				out.println(e);
				RequestDispatcher rd=request.getRequestDispatcher("inbox.jsp");
				rd.include(request,response);
			}
%>