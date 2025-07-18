extends Node2D

var points = 0

func add_point():
	points += 1
	print("Points:", points)  # Optional debug log
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
