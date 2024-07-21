extends ParallaxLayer

@onready var sprite_2d = $Sprite2D

@export var texture : Texture
@export var scroll_scale : float = 0.0
@export var texture_x : float = 1920
@export var texture_y : float = 1000

func _ready():
	motion_scale.x = scroll_scale
	var scale_f = get_viewport_rect().size.y / texture_y
	sprite_2d.texture = texture
	sprite_2d.scale = Vector2(scale_f, scale_f)
