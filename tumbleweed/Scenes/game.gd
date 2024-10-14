extends Node3D

var flower_node = preload("res://flower_instance.tscn")
var cacti_node = preload("res://cactus_instance.tscn")
var cactiClock = 0

@onready var main = $"."
@onready var pause_menu = $"PauseMenu"
@onready var tumbleweedmodel = $tumbleweedmodel
var paused = false
var storedVelocity = Vector3.ZERO
var storedVelocityRot = Vector3.ZERO

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pause_menu.hide()
	for n in 10:
		inst_cacti(Vector3(randf_range(-3.5, 3.5), sin(7.7*PI/180)*4*2*n, cos(7.7*PI/180)*4*2*n))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	cactiClock += delta
	if cactiClock >= 2:
		inst_cacti(Vector3(randf_range(-3.5, 3.5), 0, 0))
		cactiClock -= 2
	
	if Input.is_action_just_pressed("pause"):
		pauseMenu()

func inst_cacti(offset):
	var instance = cacti_node.instantiate()
	instance.position += offset
	add_child(instance)

func pauseMenu():
	if paused:
		# Unpausing
		pause_menu.hide()
		Engine.time_scale = 1
		tumbleweedmodel.velocity = storedVelocity
		tumbleweedmodel.velocityRot = storedVelocityRot
		tumbleweedmodel.is_paused = false
		storedVelocity = Vector3.ZERO
		storedVelocityRot = Vector3.ZERO		
	else:
		# Pausing
		pause_menu.show()
		Engine.time_scale = 0
		storedVelocity = tumbleweedmodel.velocity
		storedVelocityRot = tumbleweedmodel.velocityRot
		tumbleweedmodel.is_paused = true
		tumbleweedmodel.velocity = Vector3.ZERO
		tumbleweedmodel.velocityRot = Vector3.ZERO
	
	paused = !paused
