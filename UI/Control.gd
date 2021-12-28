extends Control

var circle_scene = preload("res://Other Resources Circle/Main.tscn")
var square_scene = preload("res://Other Resources Square/Main.tscn")
var color_scene = preload("res://Other/Color Picking.tscn")


func _on_Circle_SoftBody_pressed():
	get_tree().change_scene_to(circle_scene)


func _on_Square_SoftBody_pressed():
	get_tree().change_scene_to(square_scene)


func _on_Color_pressed():
	get_tree().change_scene_to(color_scene)
