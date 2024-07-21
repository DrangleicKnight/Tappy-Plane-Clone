extends Control

@onready var high_score_2 = $MarginContainer/HighScore2

func _ready():
	high_score_2.text = str(GameScore._get_high_score())
	
func _process(delta):
	if Input.is_action_just_pressed("fly"):
		get_tree().current_scene = GameLoad._load_game_scene()
