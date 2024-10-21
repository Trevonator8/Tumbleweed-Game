extends Area3D

#var randomNumber = RandomNumberGenerator.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func _on_area_3d_body_entered(body) -> void:
	if body.name == "tumbleweedmodel":
		queue_free()  # Remove the flower completely
