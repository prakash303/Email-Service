<%
		String username=(String)session.getAttribute("username");
		String password=(String)session.getAttribute("password");
		String address=(String)session.getAttribute("address");
		String phone=(String)session.getAttribute("phone");
		String name=(String)session.getAttribute("name");
%>
			<div>
										<table>
												<tr>	<td>Name:</td><td> <% out.print(name); %></td>	</tr>
												<tr>	<td>Username:</td><td> <% out.print(username); %></td>	</tr>
												<tr>	<td>Password: </td><td><% out.print(password); %></td>	</tr>
												<tr>	<td>Phone: </td><td><% out.print(phone); %></td>			</tr>
												<tr>	<td>Address:</td><td><% out.print(address); %></td>		</tr>
										</table>										
			</div>
			
	
			

