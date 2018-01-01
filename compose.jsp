<style>
.mailbox{
	max-width:600px;
	border:1px solid grey;
	position: absolute;
	bottom:0;
	right:60px;
	box-shadow: 1px 1px 1px 1px #888888;
}
</style>
<jsp:include page="inbox.jsp" />
<div class="mailbox">
<jsp:include page="compose_mail.jsp" />
</div>

