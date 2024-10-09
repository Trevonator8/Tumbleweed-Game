extends Node3D

var flower_node = preload("res://flower_instance.tscn")
var cacti_node = preload("res://cactus_instance.tscn")
var cactiClock = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for n in 10:
		inst_cacti(Vector3(randf_range(-3.5, 3.5), sin(7.7*PI/180)*4*2*n, cos(7.7*PI/180)*4*2*n))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	cactiClock += delta
	if cactiClock >= 2:
		inst_cacti(Vector3(randf_range(-3.5, 3.5), 0, 0))
		cactiClock -= 2

func inst_cacti(offset):
	var instance = cacti_node.instantiate()
	instance.position += offset
	add_child(instance)
