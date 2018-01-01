
<%
String username=(String)session.getAttribute("username");
if(username!=null){  
        String name=(String)session.getAttribute("name");
		
		%>

		Hi! &nbsp; <%= name %> &nbsp;&nbsp;|&nbsp;&nbsp;<a href="loggedout.jsp" style="text-decoration:none; color:red;">Logout</a>( <%= name %> )
		<%
		}
 else{
				out.print("LO");
				RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
				rd.include(request,response);
	 %>
	 <%  response.sendRedirect("index.jsp"); %>
	 <center><div style="font-size:30px; font-weight:bold; color:blue;">LOGGED OUT!</div></center>
	 <%
 }

%>