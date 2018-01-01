<STYLE>
body{
	margin:0;
	padding:0;
}
input[type=submit] {
    width: 100%;
    background: rgba(255, 255, 255, 0.5);
    color: black;
    padding: 8px 20px;
    margin: 0;
    border: none;
    cursor: pointer;
	font-size:15px;
	font-weight:bold;
}


</STYLE>

<%@ page import="java.util.*, java.sql.*"%>
					<center>
					<div style="background-color:black; padding:4px; color:white; height:30px; border-radius: 4px 0 0 0; font-family: Helvetica, Arial, sans-serif;">
					<div style="width:20%; float:left;">DATE</div>
					<div style="width:20%; float:left;">TO</div>
					<div style="width:60%; float:left;">SUBJECT</div></div></center>
<%
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	String username=(String)session.getAttribute("username");
			
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
		        con=DriverManager.getConnection("jdbc:mysql:///gmail","root","admin");
					ps = con.prepareStatement("select * from sent_mail where m_from=?");
					ps.setString(1,username);
					rs = ps.executeQuery();
					
					while( rs.next() ){ %>
					<div style="display: inline-block; width:95%; float:left;">
					<form action="show_i_mail.jsp" style="margin:0;">
					<input type="hidden" name="date" value="<%= rs.getString("date") %>">
					<input type="hidden" name="m_from" value="<%= rs.getString("m_from") %>">
					<input type="hidden" name="m_to" value="<%= rs.getString("m_to") %>">
					<input type="hidden" name="subject" value="<%= rs.getString("subject") %>">
					<input type="hidden" name="message" value="<%= rs.getString("message") %>">
					<input type="submit" style="width:20%;"
					value="<%= rs.getString("date") %>">
					<input type="submit" style="width:20%;"
					value="<%= rs.getString("m_to") %>">
					<input type="submit" style="width:59%;"
					value="<%= rs.getString("subject") %>">
					</form>	</div>
					<div style="display: inline-block; width:5%; float:left;">
					<form action="delete_o.jsp" style="margin:1;">
					<input type="hidden" name="sno" value="<%= rs.getInt("sno") %>">
					<input type="submit" value="X" style=" background: rgba(200, 54, 54, 0.7);">
					</form>
					</div>
					<%}
				
			}
			catch(Exception e)
			{
				out.print(e);
				RequestDispatcher rd=request.getRequestDispatcher("blankscreen.jsp");
				rd.include(request,response);
			}
%>

