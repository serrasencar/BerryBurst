extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_again_pressed():
	print("Play Again button pressed")
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_quit_pressed():
	print("Quit button pressed")
	get_tree().quit()
