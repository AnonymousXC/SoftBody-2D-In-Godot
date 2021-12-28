extends Control


var main_scene = load("res://UI/Control.tscn")



func _process(delta):
	Global.line_color = $"Line Color".color
	Global.polygon_color = $"Polygon Color".color



func _on_Exit_Button_pressed():
	get_tree().change_scene_to(main_scene)
