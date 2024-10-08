extends Node3D

var flower_node = preload("res://flower_instance.tscn")
var velocity = Vector3(0, sin(7.7*PI/180)*4, cos(7.7*PI/180)*4)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var randCacti = randi_range(0, 3)
	print(randCacti)
	if (randCacti == 0):
		get_node('Cactus2').visible = true
		var randFlower = randi_range(0, 1)
		print(randFlower)
		if (randFlower == 0):
			inst_flower(Vector3(3.81, 3.28, 0), PI*randf_range(1.5, 2))
		if (randFlower == 1):
			inst_flower(Vector3(-3.63, 5.85, 0), PI*randf_range(0, 0.5))
	if (randCacti == 1):
		get_node('Cactus3').visible = true
		var randFlower = randi_range(0, 1)
		print(randFlower)
		if (randFlower == 0):
			inst_flower(Vector3(3.04, 6.61, 0), PI*randf_range(1.5, 2))
		if (randFlower == 1):
			inst_flower(Vector3(-2.53, 3.78, 0), PI*randf_range(0, 0.5))
	if (randCacti == 2):
		get_node('Cactus4').visible = true
		var randFlower = randi_range(0, 1)
		print(randFlower)
		if (randFlower == 0):
			inst_flower(Vector3(3.75, 4.02, 0), PI*randf_range(1.5, 2))
		if (randFlower == 1):
			inst_flower(Vector3(-3.35, 4.66, 0), PI*randf_range(0, 0.5))
	if (randCacti == 3):
		get_node('Cactus5').visible = true
		var randFlower = randi_range(0, 1)
		print(randFlower)
		if (randFlower == 0):
			inst_flower(Vector3(3.43, 3.38, 0), PI*randf_range(1.5, 2))
		if (randFlower == 1):
			inst_flower(Vector3(-3.06, 6.05, 0), PI*randf_range(0, 0.5))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	transform.origin += velocity * delta
	if transform.origin.z > 5:
		queue_free()
	scale = Vector3(0.3, 0.3, 0.3)


func inst_flower(pos, rot):
	var instance = flower_node.instantiate()
	instance.initialize(pos, rot)
	add_child(instance)
