extends Node

var music_volume = -10  # Default volume (in decibels)

# Function to set the music volume
func set_music_volume(volume):
	music_volume = volume

# Function to get the current music volume
func get_music_volume():
	return music_volume
