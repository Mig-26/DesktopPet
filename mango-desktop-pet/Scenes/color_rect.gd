extends ColorRect

var speed = 60


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	Vector2(speed * delta, 0)
