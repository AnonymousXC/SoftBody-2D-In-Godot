extends RigidBody2D


onready var curve_line = $SmoothPath
onready var collision_polygon = $CollisionPolygon2D

func _ready() -> void:
	curve_line.width = 25
	curve_line.color = Global.line_color
	$SmoothPath/Polygon2D.color = Global.polygon_color
	$"Top Ball/Line2D".default_color = Global.line_color


func _process(delta: float) -> void:
	_curve_line()
	_collision_polygon()


func _curve_line():

	var curve = Curve2D.new().duplicate()

	var surface_points2 = []

	surface_points2.append($"Top Ball".position)
	surface_points2.append($"Top Right Ball".position)
	surface_points2.append($"Right Ball".position)
	surface_points2.append($"Bottom Right Ball".position)
	surface_points2.append($"Bottom Ball".position)
	surface_points2.append($"Bottom Left Ball".position)
	surface_points2.append($"Left Ball".position)
	surface_points2.append($"Top Left Ball".position)
	surface_points2.append($"Top Ball".position)





	for i in range(surface_points2.size()):
		curve.add_point(surface_points2[i])



	curve_line.curve = curve
	curve_line.smooth(true)
	curve_line.update()



func _collision_polygon():
	var surface_points = []

	surface_points.append($"Top Ball".position)
	surface_points.append($"Top Right Ball".position)
	surface_points.append($"Right Ball".position)
	surface_points.append($"Bottom Right Ball".position)
	surface_points.append($"Bottom Ball".position )
	surface_points.append($"Bottom Left Ball".position )
	surface_points.append($"Left Ball".position)
	surface_points.append($"Top Left Ball".position)
	surface_points.append($"Top Ball".position)

	var coll_poll = surface_points
	coll_poll = PoolVector2Array(coll_poll)

	collision_polygon.set_polygon(coll_poll)
