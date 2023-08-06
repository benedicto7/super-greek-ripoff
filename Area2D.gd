extends Area2D


signal deathflag


# Called when the node enters the scene tree for the first time.
func _on_Body_entered(body):
	if body is KinematicBody2D:
		emit_signal("deathflag")
