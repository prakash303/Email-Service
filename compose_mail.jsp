<style>
body{
	margin:0px;
}
.outerbox{
	overflow: hidden;
	width:100%;
	color:skyblue;
	height:500px;	
}
input[type=text]{
	width:100%;
	border:none;
	padding:10;
	font-size:16px;
	border-bottom:1px solid grey;
	outline: none;
}
textarea{
	font-size:14px;
	width: 100%;
    height: 346px;
    padding: 12px 20px;
    border:none;
	border-bottom:1px solid grey;
    resize: none;
	outline: none;
}
.sub{
	width:100%;
	position: absolute; 
	bottom:0px;
	border-top:1px solid grey;
	padding-left:20px;
	}
.form input[type=submit] {
    width: 90px;
	height: 30px;
    background-color: #4CAF50;
    color: white;
    padding: 8px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.subbutton[type=submit]:hover {
    background-color: #45a049;
}

<% String username=(String)session.getAttribute("username"); %>
</style>
<div class="outerbox">
<div style="width:100%; color:white; background-color:black; padding:6px">New Message<span><a href="inbox.jsp"style="text-decoration:none; float:right; color:white; margin-right:10px;">X</a></span></div>
<form class="form" action="p_mail.jsp">
<input type="text" name="m_to" placeholder="To..">
<input type="text" name="subject" placeholder="Subject..">
<input type="hidden" name="m_from" value="<% out.print(username); %>">
<textarea name="message" placeholder="Message.."></textarea>
<div class="sub"><input class="subbutton" type="Submit" value="Send"></div>
</form>
</div>