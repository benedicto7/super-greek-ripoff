extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$VBoxContainer/Startbutton.grab_focus()
	pass

	
func _on_Startbutton_pressed():
	get_tree().change_scene("res://scene/controls.tscn")


func _on_Quitbutton_pressed():
	get_tree().quit()


func _on_CreditButton_pressed():
	get_tree().change_scene("res://scene/Credits/creditscreen.tscn")
