<style>
body{
	margin:0;
	position: relative;
}
.top{
	margin:0px;
	width: 99%;
	padding:10px 0 10px 10px;
	background-color:#f2f2f2;
}
.top img{
	width:auto;
	height:30px;
}
.top2{
	width:99%;
	margin:0px;
	color:red;
	border-bottom: 1px solid #f2f2f2;
	font-size:20px;
	padding:5px 0 5px 5px;
}
.top2 p{
	margin:0px;
}
.vmenu ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 200px;
    background-color: #f1f1f1;
	opacity: 0.8;
	height: 87%;
	float:left;
}

.vmenu li a {
	font-weight: bold;
	color: RED;
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

.vmenu li a:hover {
	font-weight: bold;
	color: White;
    background-color: #555;
    color: white;
}


</style>
<div class="top">
<img src="images/google.png"> <span style="float:right; margin-right:10px;"><jsp:include page="logincheck.jsp" /></span>
</div>
<div class="top2">
<p>Gmail</p>
</div>
<div class="vmenu" style="float: left;">
<ul>
  <li><a href="compose.jsp">COMPOSE</a></li>
  <li><a href="inbox.jsp">INBOX</a></li>
  <li><a href="outbox.jsp">SENT MAIL</a></li>
</ul>
</div>