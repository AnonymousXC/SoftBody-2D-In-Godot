extends RigidBody2D


func _process(delta: float) -> void:
	if Input.is_action_pressed("click"):
		position = get_global_mouse_position()

