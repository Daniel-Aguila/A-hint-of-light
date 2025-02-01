extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var mesh = $MeshInstance3D
	var material = StandardMaterial3D.new()
	
	material.albedo_color = Color(1,1,1)
	material.flags_unshaded = true
	
	mesh.material
