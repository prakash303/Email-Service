<style>
body{
	padding:0;
	margin:0;
	background-image:url("images/p/p9.jpg");
	background-size: 100% 100%;
    background-repeat: no-repeat;
}

.mess{
	padding:0px 30px 10px 30px;
	max-width:90%;
	max-height:600px;
	margin:auto;
	background-image:url("images/p/p6.jpg");
}
</style>
<%
String date = request.getParameter("date");
String m_from = request.getParameter("m_from");
String m_to = request.getParameter("m_to");
String subject = request.getParameter("subject");
String message = request.getParameter("message");
%>
<div class="mess">
<div style="border-bottom:2px solid silver; height:30px; font-size:20px; padding:20px; margin-bottom:5px; font-weight:bold;"><p><%= subject %></p></div>
<span style="font-weight:bold;">FROM:<%= m_from %></span>
<span style="float:right; margin-right:20px; font-weight:bold;"><%= date %><br></span>
<p style="font-weight:bold;">TO:<%= m_to %><br></p>
<p style="font-weight:bold;">MESSAGE:</p>
<p><%= message %><br></p>
</div>


