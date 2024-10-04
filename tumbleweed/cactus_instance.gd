extends Node3D

var flower_node = preload("res://flower_instance.tscn")
var velocity = Vector3(0, sin(7.7*PI/180)*4, cos(7.7*PI/180)*4)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var randFlower = randi_range(0, 3)
	print(randFlower)
	if (randFlower == 0):
		inst_flower(Vector3(-1, 0, 0), PI*0.5)
	if (randFlower == 1):
		inst_flower(Vector3(0, -1, 0), PI*1)
	if (randFlower == 2):
		inst_flower(Vector3(1, 0, 0), PI*1.5)
	if (randFlower == 3):
		inst_flower(Vector3(0, 1, 0), PI*2)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	transform.origin += velocity * delta
	if transform.origin.z > 5:
		queue_free()


func inst_flower(pos, rot):
	var instance = flower_node.instantiate()
	instance.initialize(pos, rot)
	add_child(instance)
