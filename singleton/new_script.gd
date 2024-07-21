extends Node


const PLAYER_GROUP : String = "player"
const SCROLL_SPEED : float = 100.0

var game_scene : PackedScene = preload("res://Scenes/Game/game.tscn")
var main_scene : PackedScene = preload("res://Scenes/Game/main.tscn")


func _load_game_scene():
	get_tree().change_scene_to_packed(game_scene)
	
func _load_main_scene():
	get_tree().change_scene_to_packed(main_scene)
