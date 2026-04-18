extends CharacterBody2D

var speed = 500
@export var animator: AnimatedSprite2D

var timer := 0.0
var walking := false
var direction := 1   # 1 = right, -1 = left

func _physics_process(delta):
	timer += delta
	
	# Toggle walking every 3 seconds
	if timer >= 3.0:
		timer = 0.0
		walking = !walking
	
	# Movement
	if walking:
		velocity.x = speed * direction
		animator.play("walk")
	else:
		velocity.x = 0
		animator.play("idle")
	
	move_and_slide()
