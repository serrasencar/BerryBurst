extends Node2D

var points = 0
@onready var gui = $GUI

func add_point():
	points += 1
	gui.update_score(points)
	print("Points:", points)

func _ready() -> void:
	$MainMusic.play()
	$GameOver.visible = false  # Hide GameOver screen when game starts
	$HealthBar.connect("game_over", Callable(self, "_on_game_over"))
	
func _on_game_over():
	$GameOver.visible = true
	get_tree().paused = true  # Pause everything

func _on_fruit_catcher_body_entered(body):
	if body.is_in_group("fruit"):
		body.queue_free()
		$HealthBar.remove_heart()
