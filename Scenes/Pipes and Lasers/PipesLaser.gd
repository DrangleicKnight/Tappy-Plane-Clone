extends Node2D




func _process(delta):
	position.x -= GameLoad.SCROLL_SPEED * delta


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_lower_body_entered(body):
	if body.is_in_group(GameLoad.PLAYER_GROUP):
		set_process(false)


func _on_upper_body_entered(body):
	if body.is_in_group(GameLoad.PLAYER_GROUP):
		set_process(false)
