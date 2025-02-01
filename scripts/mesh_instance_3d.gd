extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var plane = PlaneMesh.new()
	plane.size = Vector2(50,50)
	mesh = plane
