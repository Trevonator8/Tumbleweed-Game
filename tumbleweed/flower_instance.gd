extends Node3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func initialize(pos, rot):
	position += pos
	transform.basis = Basis(Vector3(0,0,1),rot) * transform.basis
	transform.basis = transform.basis.orthonormalized()
	scale = Vector3(0.5, 0.5, 0.5)

func _on_area_3d_body_entered(body) -> void:
	print("Collided with: ", body.name)
	if body.name == "TumbleweedBody":  # Replace with your tumbleweed's name
		#$MeshInstance3D.visible = false  # Hides the flower's mesh
		queue_free()  # Optionally remove the flower completely
