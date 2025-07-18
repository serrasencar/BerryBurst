extends CharacterBody2D

var speed = 300  

func _ready():
	add_to_group("fruit")
	
func _physics_process(delta):
	var collideObject = move_and_collide(Vector2(0, speed * delta))
	if collideObject:
		var collider = collideObject.get_collider()
		if collider.name == "Basket": 
			get_tree().get_root().get_node("Game").add_point()
		queue_free()

func set_fruit_type(index: int):
	var sprite = $Sprite2D
	if sprite:
		match index:
			0: sprite.frame = 74  # Blackberry
			1: sprite.frame = 85  # Orange
			2: sprite.frame = 92  # Blueberry
			3: sprite.frame = 65  # Strawberry
