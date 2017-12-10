extends TextureButton

func _ready():
	connect("pressed",self,"_on_pressed")
	pass

func _on_pressed():
	if (get_tree().get_current_scene().get_name() == "Level1"):
			get_tree().change_scene("res://Scenes/Level2.tscn")
	if (get_tree().get_current_scene().get_name() == "Level2"):
			get_tree().change_scene("res://Scenes/Level1.tscn")
	get_tree().set_pause(false)