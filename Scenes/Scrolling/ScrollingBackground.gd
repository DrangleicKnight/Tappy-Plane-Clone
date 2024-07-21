extends ParallaxBackground


func _ready():
	SignalManager.on_plane_died.connect(on_plane_died)

func _process(delta):
	scroll_offset.x -= GameLoad.SCROLL_SPEED * delta


func on_plane_died():
	set_process(false)
