extends CharacterBody2D

var speed = 200

func _physics_process(_delta):
	get_viewport_transform()
	
	# Set velocity automatically
	velocity.x = speed
	
	# move_and_slide() uses velocity to move and handle collisions
	move_and_slide()
