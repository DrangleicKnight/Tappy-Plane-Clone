extends Control

@onready var label = $Label

@onready var label_2 = $Label2
@onready var timer = $Timer
@onready var scene : PackedScene = preload("res://Scenes/Game/game.tscn")

func _ready():
	hide()
	SignalManager.on_plane_died.connect(visibility_toggle)

func _process(delta):
	if label_2.visible == true and Input.is_action_just_pressed("fly"):
		GameLoad._load_main_scene()
 

func visibility_toggle():
	show()
	timer.start()


func _on_timer_timeout():
	label_2.visible = true
	label.visible = false
	#if Input.is_action_just_pressed("fly"):
		#GameLoad._load_main_scene()

