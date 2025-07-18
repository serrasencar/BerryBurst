extends CharacterBody2D

var speed = 400
func _physics_process(delta):
	var collideObject = move_and_collide(Vector2(0, speed * delta))
	if(collideObject):
		collideObject
		queue_free()
