extends Node2D

@export var scene : PackedScene
@onready var pipeHolder = $PipeHolder

@onready var markerUpper = $MarkerU
@onready var markerLower = $MarkerL
@onready var timer = $Timer

var isAlive : bool = true

func _ready():
	SignalManager.on_plane_died.connect(_on_plane_on_plane_died)
	GameScore._set_score(0)
	_add_pipes()
	
	
func _process(delta):
	pass
	
	
func _add_pipes() -> void:
	var pipes = scene.instantiate()
	var pipes_position_y = randf_range(markerUpper.position.y, markerLower.position.y)
	pipes.position = Vector2(markerUpper.position.x, pipes_position_y)
	pipeHolder.add_child(pipes)


func _stop_pipes() -> void:
	timer.stop()
	for pipe in pipeHolder.get_children():
		pipe.set_process(false)


func _on_timer_timeout():
	_add_pipes()


func _on_plane_on_plane_died():
	print("Dead")
	_stop_pipes()

