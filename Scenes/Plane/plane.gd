extends CharacterBody2D

const GRAVITY : float = 600.0
const POWER : float = -300.0

@export var isALive : bool = true

@onready var animationPlayer = $AnimationPlayer

@onready var game_over = $"Game Over"
@onready var plane_sound = $PlaneSound

#signal on_plane_died

func _physics_process(delta):
	velocity.y += GRAVITY * delta
	
	_fly(delta)
	
	move_and_slide()
	
	if is_on_floor() or is_on_ceiling():
		_die()

func _fly_again():
	animationPlayer.play("flying")

func _fly(delta) -> void:
	if Input.get_action_strength("fly"):
		velocity.y = POWER
		animationPlayer.play("fly_jump")

func _die() -> void:
	SignalManager.emit_signal("on_plane_died")
	animationPlayer.stop()
	set_physics_process(false)
	game_over.play()
	plane_sound.stop()
