extends Node2D
var spawner_position = 0
var fruit = preload("res://Scenes/fruit.tscn" )

func _ready( ):
	randomize()
	spawner_position = $Spawner.get_children()

func spawn_fruit():
	var index = randi() % spawner_position.size()
	var Fruit = fruit. instantiate()
	Fruit.global_position = spawner_position[index].global_position
	Fruit.set_fruit_type(randi() % 4)
	add_child(Fruit)

func _on_timer_timeout():
	spawn_fruit()
