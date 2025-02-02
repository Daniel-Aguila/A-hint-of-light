extends MeshInstance3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var material = StandardMaterial3D.new()
	
	material.albedo_color = Color(1,1,1)
	material.flags_unshaded = true
	
	if mesh:
		set_surface_override_material(0, material)
	else:
		print("Error: No mesh found in MeshInstance3D")
