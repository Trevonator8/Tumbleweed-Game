extends Area3D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#var cactusSelector = randomNumber.randf_range(0, 4)
	var cactusSelector = randi_range(1, 4)
	if cactusSelector == 1:
		$"../../Cactus2/Cylinder_002".visible = true  # Hides the cactus's mesh
		$"../../Cactus3/Cylinder".visible = false  # Hides the cactus's mesh
		$"../../Cactus4/Cylinder_002".visible = false  # Hides the cactus's mesh
		$"../../Cactus5/Cylinder_002".visible = false  # Hides the cactus's mesh
	if cactusSelector == 2:
		$"../../Cactus2/Cylinder_002".visible = false  # Hides the cactus's mesh
		$"../../Cactus3/Cylinder".visible = true  # Hides the cactus's mesh
		$"../../Cactus4/Cylinder_002".visible = false  # Hides the cactus's mesh
		$"../../Cactus5/Cylinder_002".visible = false  # Hides the cactus's mesh
	if cactusSelector == 3:
		$"../../Cactus2/Cylinder_002".visible = false  # Hides the cactus's mesh
		$"../../Cactus3/Cylinder".visible = false  # Hides the cactus's mesh
		$"../../Cactus4/Cylinder_002".visible = true  # Hides the cactus's mesh
		$"../../Cactus5/Cylinder_002".visible = false  # Hides the cactus's mesh
	if cactusSelector == 4:
		$"../../Cactus2/Cylinder_002".visible = false  # Hides the cactus's mesh
		$"../../Cactus3/Cylinder".visible = false  # Hides the cactus's mesh
		$"../../Cactus4/Cylinder_002".visible = false  # Hides the cactus's mesh
		$"../../Cactus5/Cylinder_002".visible = true  # Hides the cactus's mesh

func _on_body_entered(body: Node3D) -> void:
	print("body enter")
