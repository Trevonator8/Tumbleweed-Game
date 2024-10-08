extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_area_3d_body_entered(body) -> void:
	print("Uhhhhhhhhhhhhhhhh")
	if body.name == "tumbleweedmodel":  # Replace with your tumbleweed's name
		$MeshInstance3D.visible = false  # Hides the flower's mesh
		queue_free()  # Optionally remove the flower completely
