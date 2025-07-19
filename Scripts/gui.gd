extends CanvasLayer

@onready var score_label: Label = $ScoreLabel

func _ready() -> void:
	score_label.text = "0"

func update_score(score: int) -> void:
	score_label.text = str(score)
