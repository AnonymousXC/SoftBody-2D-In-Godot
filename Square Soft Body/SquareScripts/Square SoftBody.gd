extends RigidBody2D

onready var curve_line = $Line2D
onready var collision_polygon = $CollisionPolygon2D
var x : float

func _ready():
	$Line2D.default_color = Global.line_color
	$Polygon2D.color = Global.polygon_color



func _process(delta: float) -> void:

	_draw_curve()
	_draw_collision_polygon()

func _draw_curve():

	var surface_points = []

	surface_points.append($"1".position)
	surface_points.append($"2".position)
	surface_points.append($"3".position)
	surface_points.append($"4".position)
	surface_points.append($"5".position)
	surface_points.append($"6".position)
	surface_points.append($"7".position)
	surface_points.append($"8".position)
	surface_points.append($"1".position)

	for i in range(surface_points.size()):
		curve_line.set_point_position(i,surface_points[i])


	var pool_vec_array_polygon = surface_points
	pool_vec_array_polygon = PoolVector2Array(pool_vec_array_polygon)

	$Polygon2D.set_polygon(pool_vec_array_polygon)


func _draw_collision_polygon():

	var surface_points2 = []

	surface_points2.append($"1".position)
	surface_points2.append($"2".position)
	surface_points2.append($"3".position)
	surface_points2.append($"4".position)
	surface_points2.append($"5".position)
	surface_points2.append($"6".position)
	surface_points2.append($"7".position)
	surface_points2.append($"8".position)
	surface_points2.append($"1".position)

	var coll_pool = surface_points2
	coll_pool = PoolVector2Array(coll_pool)

	collision_polygon.set_polygon(coll_pool)


