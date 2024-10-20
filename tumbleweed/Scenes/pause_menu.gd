extends Control

@onready var main = $"../"
@onready var options_panel = $OptionsPanel
@onready var music_player = $"../Soundtrack"

func _ready():
	options_panel.visible = false
	$OptionsPanel/HSlider.value = MusicSettings.get_music_volume()
	music_player.volume_db = MusicSettings.get_music_volume()
	$OptionsPanel/HSlider.connect("value_changed", Callable(self, "_on_h_slider_value_changed"))


func _on_main_menu_pressed() -> void:
	main.pauseMenu()
	get_tree().change_scene_to_file("res://Scenes/title_screen.tscn")


func _on_resume_pressed() -> void:
	main.pauseMenu()


func _on_options_pressed() -> void:
	options_panel.visible = true  # Show the options panel
	pass # Replace with function body.


func _on_back_pressed() -> void:
	options_panel.visible = false  # Do not show the options panel
	pass # Replace with function body.
	
func _on_h_slider_value_changed(value) -> void:
	MusicSettings.set_music_volume(value)  # Update the global volume
	music_player.volume_db = value  # Update the current scene's music volume
