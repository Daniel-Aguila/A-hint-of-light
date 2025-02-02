extends CollisionShape3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	connect("body_entered", _on_body_entered)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_body_entered(body) -> void:
	if(body == null):
		print("Collision detected with:", body.name)
	
