extends KinematicBody2D

var direction = Vector2.LEFT
var velocity = Vector2.ZERO
var dircheck = 0

func _physics_process(delta):
	
	var found_wall = is_on_wall()
	
	if found_wall: 
		direction *= -1
		dircheck = 1
		if dircheck == 1:
			$AnimatedSprite.flip_h = false
		
		else:
			$AnimatedSprite.flip_h = true
			dircheck = 0
	
	velocity = direction * 150
	move_and_slide(velocity, Vector2.UP)

