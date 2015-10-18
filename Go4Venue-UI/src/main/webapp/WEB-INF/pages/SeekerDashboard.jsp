<h1>Welcome To Seeker DashBoard</h1>

<form id="newEventForm" method="post" action="createNewEvent1" modelAttribute="event">
	<div class="input-group margin-bottom-20">
		<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
		<input type="text" class="form-control" name="locality" placeholder="Locality">
	</div>
	<div class="input-group margin-bottom-20">
		<span class="input-group-addon"><i class="fa fa-lock"></i></span> <input
			type="text" class="form-control" name="remarks"
			placeholder="Reamrks">
	</div>

	<hr>
	<div class="row">
		<div class="col-md-10 col-md-offset-1">
			<button type="submit" class="btn-u btn-block">Create New Event</button>
		</div>
	</div>
</form>
