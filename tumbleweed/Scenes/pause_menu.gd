extends Control

@onready var main = $"../"

func _on_main_menu_pressed() -> void:
	main.pauseMenu()
	get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")


func _on_resume_pressed() -> void:
	main.pauseMenu()
