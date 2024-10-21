extends Area3D

@onready var main = $"../../../"

func _on_body_entered(_body: Node3D) -> void:
	print("body enter")
	main.gameOver()
