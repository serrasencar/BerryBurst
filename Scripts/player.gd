extends CharacterBody2D

const SPEED = 350.0
const JUMP_VELOCITY = -450.0

@onready var sprite = $AnimatedSprite2D
var last_direction = "right"

func _physics_process(delta: float) -> void:
	# Gravity
	if not is_on_floor():
		velocity.y += ProjectSettings.get_setting("physics/2d/default_gravity") * delta

	# Jump
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Horizontal Movement
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction != 0:
		velocity.x = direction * SPEED

		if direction > 0:
			sprite.play("run_right")
			last_direction = "right"
		else:
			sprite.play("run_left")
			last_direction = "left"
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		if last_direction == "right":
			sprite.play("idle_right")
		else:
			sprite.play("idle_left")

	move_and_slide()
