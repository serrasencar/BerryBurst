extends CanvasLayer

signal game_over

@onready var heart_container := $heart_container

func remove_heart():
	if heart_container.get_child_count() > 0:
		var last_heart = heart_container.get_child(heart_container.get_child_count() - 1)
		$HurtHeart.play()
		last_heart.queue_free()

		if heart_container.get_child_count() == 1:
			# This was the last heart → emit signal AFTER it's removed
			await get_tree().process_frame  # Wait 1 frame to let queue_free() happen
			emit_signal("game_over")
