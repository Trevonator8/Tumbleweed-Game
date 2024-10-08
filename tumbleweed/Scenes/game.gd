extends Node3D

var flower_node = preload("res://flower_instance.tscn")
var cacti_node = preload("res://cactus_instance.tscn")
var cactiClock = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	inst_cacti(randf_range(-3.5, 3.5))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	cactiClock += delta
	if cactiClock >= 3:
		inst_cacti(randf_range(-4, 4))
		cactiClock -= 3

func inst_cacti(x):
	var instance = cacti_node.instantiate()
	instance.position.x = x
	add_child(instance)
