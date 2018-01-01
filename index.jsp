<style>
body{
	margin,padding:0;
	background-image: url("images/w1.jpg");
	background-size: 100% 100%;
    background-repeat: no-repeat;
	z-index:2;
}
.centerbox{
	background-color: white;
	max-width:450px;
	max-height:700px;
	margin:auto;
	margin-top:100px;	
	padding:30px 20px 30px 20px;
	border-radius: 5px;
    background-color: #f2f2f2;
	z-index:2;
}
input {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
	border: none;
    border-bottom: 2px solid skyblue;
    border-radius: 4px;
    box-sizing: border-box;
	background-color:#f2f2f2;
}
input[type=text]:focus{
outline: none;}

input[type=submit] {
    width: 25%;
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
<div><img style="width:auto; height:40px;" src="images/google.png"></div>
<h1>Sign in</h1>
<h3>to continue to Gmail</h3>
<br><br>
<form method="post" action="p_login.jsp">
		<input type="text" name="username" placeholder="Username..">
		<input type="text" name="password" placeholder="password..">
		<input type="Submit" value="Sign In">
</form>
<p>New User?&nbsp;&nbsp;<a href="register.jsp">Register<a/></p>
</div>