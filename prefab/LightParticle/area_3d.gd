extends Area3D
# Called when the node enters the scene tree for the first time.
var sound: AudioStreamPlayer
var parent
@onready var collision = $CollisionShape3D

func _ready() -> void:
	sound  = AudioStreamPlayer.new()
	sound.stream = load("res://prefab/LightParticle/lightParticle.mp3")
	add_child(sound)
	
	parent = get_parent()
	connect("body_entered", Callable(self, "_on_body_entered"))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_body_entered(body) -> void:
	if(body != null and collision.disabled == false):
		sound.play() 
		parent.visible = false
		collision.disabled = true
		sound.finished.connect(sound.queue_free)
