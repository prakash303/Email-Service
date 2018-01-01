<STYLE>
body{
	margin:0;
	padding:0;
}
table { 
	width: 100%; 
    border-collapse: collapse; 
    border-spacing: 0;
	color: #333;
	font-family: Helvetica, Arial, sans-serif;
	} 
td, th { 
	border: 1px solid transparent;
	height: 30px;
	transition: all 0.3s;	
	} 
th {  
	background-color:black;
	color:white;
    font-weight: bold; 
}

td {  
    text-align: center; 
}

tr:nth-child(even) td { opacity:0.7; background: #F1F1F1; }   
       
tr:nth-child(odd) td { background: #FEFEFE; }  

tr td:hover { background: #666; color: #FFF; } 
	p{
		color: black;
		font-weight:bold;
	}
</STYLE>

<%@ page import="java.util.*, java.sql.*"%>
<table>
					<tr>
							<th style="width:20%;"> DATE  </th>
							<th style="width:20%;"> FROM </th>
							<th style="width:60%;"> SUBJECT </th>
					</tr>
<%
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	String username=(String)session.getAttribute("username");
			
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
		        con=DriverManager.getConnection("jdbc:mysql:///gmail","root","admin");
					ps = con.prepareStatement("select * from mail");
					rs = ps.executeQuery();
					
					while( rs.next() ){ %>
					<tr>
							<td><p> <%= rs.getString("date") %> </p></td>
							<td><p> <%= rs.getString("m_from") %></p></td>
							<td><p> <%= rs.getString("subject") %></p></td>							
					</tr>											
					<%}
				
			}
			catch(Exception e)
			{
				out.print(e);
				RequestDispatcher rd=request.getRequestDispatcher("blankscreen.jsp");
				rd.include(request,response);
			}
%>
</table>

