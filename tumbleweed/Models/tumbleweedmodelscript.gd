extends Node3D

var velocity : Vector3 = Vector3(0, 0.045, 0)
var velocityRot : Vector3 = Vector3(0, 0, -0.03)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (Input.is_physical_key_pressed(KEY_D)):
		velocity[0] += 0.1 * delta
		velocityRot[0] += 0.2 * delta
	if (Input.is_physical_key_pressed(KEY_A)):
		velocity[0] += -0.1 * delta
		velocityRot[0] += -0.2 * delta
	velocity.y += -0.05*delta
	
	
	transform.origin += velocity
	if (transform.origin.x > 3.0):
		transform.origin.x = 3
		velocity[0] = 0
	if (transform.origin.x < -3.0):
		transform.origin.x = -3
		velocity[0] = 0
	if (transform.origin.y < 1):
		transform.origin.y = 1
		velocity[1] = 0.045
	if (velocityRot[0] > 0.1):
		velocityRot[0] = 0.1
	if (velocityRot[0] < -0.1):
		velocityRot[0] = -0.1

	
	var rollScaler = 100
	scale = Vector3(0.5, 0.5, 0.5)
	transform.basis = Basis(Vector3(0,0,1),deg_to_rad(-rollScaler * velocityRot.x)) * transform.basis
	transform.basis = Basis(Vector3(1,0,0),deg_to_rad(rollScaler * velocityRot.z)) * transform.basis
	transform.basis = transform.basis.orthonormalized()
	#transform.basis = transform.basis*0.5 #scale
	scale = Vector3(0.5, 0.5, 0.5)
