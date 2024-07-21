extends Control

@onready var score = $MarginContainer/Score

func _ready():
	SignalManager.on_score_updated.connect(on_score_updated)

func on_score_updated():
	score.text = str(GameScore._get_score())
