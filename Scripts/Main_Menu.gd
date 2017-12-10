extends TextureFrame

func _ready():
	get_node("Start").connect("pressed",self,"_on_button_pressed")

func _on_button_pressed():
	get_tree().change_scene("res://Scenes/Level1.tscn")
