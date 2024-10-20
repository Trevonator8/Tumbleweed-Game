extends Area3D

@onready var main = $"../../../"

# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#var cactusSelector = randomNumber.randf_range(0, 4)
	#var cactusSelector = randi_range(1, 4)
	#if cactusSelector == 1:
		#$"../../Cactus2/Cylinder_002".visible = true  # Shows the cactus's mesh
		#$"../../Cactus2/Cone_030".visible = true
		#
		#$"../../Cactus3/Cylinder".visible = false  # Hides the cactus's mesh
		#$"../../Cactus3/Cone".visible = false
		#
		#$"../../Cactus4/Cylinder_002".visible = false  # Hides the cactus's mesh
		#$"../../Cactus4/Cone".visible = false
		#
		#$"../../Cactus5/Cylinder_002".visible = false  # Hides the cactus's mesh
		#$"../../Cactus5/Cone_032".visible = false
		#
	#if cactusSelector == 2:
		#$"../../Cactus2/Cylinder_002".visible = false  # Hides the cactus's mesh
		#$"../../Cactus2/Cone_030".visible = false
		#
		#$"../../Cactus3/Cylinder".visible = true  # Hides the cactus's mesh
		#$"../../Cactus3/Cone".visible = true
#
		#$"../../Cactus4/Cylinder_002".visible = false  # Hides the cactus's mesh
		#$"../../Cactus4/Cone".visible = false
		#
		#$"../../Cactus5/Cylinder_002".visible = false  # Hides the cactus's mesh
		#$"../../Cactus5/Cone_032".visible = false
		#
	#if cactusSelector == 3:
		#$"../../Cactus2/Cylinder_002".visible = false  # Hides the cactus's mesh
		#$"../../Cactus2/Cone_030".visible = false
		#
		#$"../../Cactus3/Cylinder".visible = false  # Hides the cactus's mesh
		#$"../../Cactus3/Cone".visible = false
		#
		#$"../../Cactus4/Cylinder_002".visible = true  # Hides the cactus's mesh
		#$"../../Cactus4/Cone".visible = true
		#
		#$"../../Cactus5/Cylinder_002".visible = false  # Hides the cactus's mesh
		#$"../../Cactus5/Cone_032".visible = false
	#if cactusSelector == 4:
		#$"../../Cactus2/Cylinder_002".visible = false  # Hides the cactus's mesh
		#$"../../Cactus2/Cone_030".visible = false
		#
		#$"../../Cactus3/Cylinder".visible = false  # Hides the cactus's mesh
		#$"../../Cactus3/Cone".visible = false
		#
		#$"../../Cactus4/Cylinder_002".visible = false  # Hides the cactus's mesh
		#$"../../Cactus4/Cone".visible = false
#
		#$"../../Cactus5/Cylinder_002".visible = true  # Hides the cactus's mesh
		#$"../../Cactus5/Cone_032".visible = true

func _on_body_entered(_body: Node3D) -> void:
	print("body enter")
	main.gameOver()
