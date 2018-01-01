<jsp:include page="header.jsp" />
<style>
.mail{
	margin:0;
	padding:0;	
	position: absolute; 
	right: 0;  
	height:83%; 
	width:84%;  
	padding:10px;
}
.d1{
	color:black;
	width:60px;
	height:20px;
	padding:5px;
	border:3px solid white;
	border-radius:5px;
	margin:10px;
	margin-left:50px;
	background-color:white;
	opacity:0.7;
}
.d1 a{
	color:black;
	text-decoration:none;
	font-weight:bold;
	display:block;
}
</style>
<div class="mail">
<div class="d1"><a href="inbox.jsp">BACK</a></div>
<jsp:include page="mail.jsp" />
