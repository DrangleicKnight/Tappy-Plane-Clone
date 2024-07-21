extends Node2D


@onready var parallax_background = $ParallaxBackground


func _process(delta):
	#camera_2d.position.x += 40 * delta
	parallax_background.scroll_offset.x -= 40 * delta
