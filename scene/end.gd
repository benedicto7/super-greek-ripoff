extends Control

func _ready():
	$VBoxContainer/Startbutton.grab_focus()
	pass

	
func _on_Startbutton_pressed():
	get_tree().change_scene("res://scene/DemoLevelV3.tscn")


func _on_Quitbutton_pressed():
	get_tree().quit()
