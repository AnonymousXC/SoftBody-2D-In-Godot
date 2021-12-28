extends Control

var main_scene = load("res://UI/Control.tscn")


func _on_Exit_pressed():
	get_tree().change_scene_to(main_scene)

