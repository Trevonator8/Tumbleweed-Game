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
