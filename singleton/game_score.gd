extends Node

var _score : int = 0 
var _high_score :int = 0

func _get_score() -> int:
	return _score
	
func _get_high_score() -> int:
	return _high_score

func _set_score(value) -> void:
	_score = value
	print(_score)
	if _score > _high_score:
		_high_score = _score
	SignalManager.emit_signal("on_score_updated")
	
func _set_high_score(value) -> void:
	_high_score = value
	
func _increment_score():
	_set_score(_score +1)
