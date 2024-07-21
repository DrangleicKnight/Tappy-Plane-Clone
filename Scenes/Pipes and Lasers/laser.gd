extends Area2D


@onready var score = $Score

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(GameScore._get_score())


func _on_body_exited(body):
	print("Laser Exited")
	GameScore._increment_score()
	score.play()
	
