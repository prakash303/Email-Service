<style>
body{
	padding,margin:0;
	background-image: url("images/pixel.jpg");
	background-size: 100% 100%;
    background-repeat: no-repeat;
}
.centerbox{
	background-color: white;
	width:400px;
	position: absolute ;
    right: 30px;
	border: 1px solid silver;
	max-height:700px;
	margin-top:30px;	
	padding:30px 20px 5px 20px;
}
input, select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}
</style>
<div class="centerbox">
<form action="p_register.jsp">
Name<br>
<input type="text" name="name" placeholder="Your name.."><br><br>
Username<br>
<input type="text" name="username" placeholder="Username.."><br><br>
Password<br>
<input type="text" name="password" placeholder="Password.."><br><br>
Address<br>
<input type="text" name="address" placeholder="Address.."><br><br>
Contact<br>
<input type="text" name="phone" placeholder="Contact.."><br>
<input type="Submit" value="Register">
</form>
<p>Already a user?&nbsp;&nbsp;<a href="index.jsp">Login<a/></p>
</div>