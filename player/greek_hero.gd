extends AnimatedSprite

signal current_animation_finished(anim_name)

func _on_animation_finished() -> void:
	emit_signal("current_animation_finished", animation)

func _on_current_animation_finished(anim_name: String) -> void:
	if anim_name == "DIE":
		get_tree().change_scene("res://scene/end.tscn")

func _ready():
	connect("animation_finished", self, "_on_animation_finished")
	connect("current_animation_finished", self, "_on_current_animation_finished")
