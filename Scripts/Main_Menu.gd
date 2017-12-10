extends TextureFrame

func _ready():
	set_process_input(true)
	
	
func _input(event):
	if event.is_action_pressed("jump"):
		get_tree().change_scene("res://Scenes/Level2.tscn")
		