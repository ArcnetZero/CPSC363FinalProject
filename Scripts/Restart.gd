extends TextureButton

func _ready():
	connect("pressed",self,"_on_pressed")
	pass

func _on_pressed():
	get_tree().change_scene(get_tree().get_current_scene().get_filename())
	get_tree().set_pause(false)
