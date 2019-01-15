
		
<div class="panel-holder mt-0 mb-20">
	<div class="title-3 mt-0">Укажите ваши данные</div>
	<form action="set-cookie.php" method="POST" class="mb-15">
		<div class="form-group"><label class="label">Ваше имя<input class="input" name="user-name" type="text"/></label></div>
		<div class="form-group"><label class="label">Ваш город<input class="input" name="user-city" type="text"/></label></div>
		<input class="button mt-30" type="submit" name="user-submit" value="Сохранить"/>
	</form>

		<form action="unset-cookie.php" method="POST">
		<input class="button mt-30" type="submit" name="user-unset" value="Удалить данные"/>
	</form>
</div>