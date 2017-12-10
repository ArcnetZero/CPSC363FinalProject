extends Node2D

var is_paused = false

func _ready():
	set_process(true)
	set_process_input(true)

func _input(event):
	if event.is_action_released("pause_menu"):
		if !is_paused:
			get_tree().set_pause(true)
			is_paused = true
			print("Paused")
			get_node("Pause_Canvas/Backgound").show()
		elif is_paused:
			get_tree().set_pause(false)
			is_paused = false
			print("Unpaused")
			get_node("Pause_Canvas/Backgound").hide()

func hit(type):
	if(type == "flag"):
		if (get_tree().get_current_scene().get_name() == "Level1"):
			get_tree().change_scene("res://Scenes/Level2.tscn")
		if (get_tree().get_current_scene().get_name() == "Level2"):
			get_tree().change_scene("res://Scenes/Level1.tscn")
			
func _process(delta):
	pass
