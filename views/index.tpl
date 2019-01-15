
		<div class="title-1">Фильмотека</div>
		
		<?php foreach ($films as $key => $value) { ?>
			<div class="card mb-20">
				<div class="row">
					<div class="col-auto">
						<img height="200" src="<?=HOST?>data/films/min/<?=$value['photo']?>" alt="<?=$film['title']?>">
					</div>
					<div class="col">
						<div class="card__header">
							<h4 class="title-4"><?=$value['title']?></h4>
							<?php	if(isAdmin()) {?>
							<div class="buttons">
								<a href="edit.php?id=<?=$value['id']?>" class="button button--editsmall">Редактировать</a>
								<a href="?action=delete&id=<?=$value['id']?>" class="button button--removesmall">Удалить</a>
							</div>	
							<?php } ?>
						</div>
						<div class="badge"><?=$value['genre']?></div>
						<div class="badge"><?=$value['year']?></div>
						<div class="mt-20">
							<a href="single.php?id=<?=$value['id']?>" class="button button--savesmall">Подробнее</a>
						</div>	


					</div>

				</div>
				
			</div>

		<?php } ?>