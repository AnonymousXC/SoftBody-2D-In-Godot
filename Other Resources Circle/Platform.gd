extends KinematicBody2D



func _process(delta: float) -> void:
	if Input.is_action_pressed("Click"):
		position = get_global_mouse_position()
