extends Control

func _ready():
	$PlayButton.grab_focus()

func _on_play_button_pressed() -> void:
	$LevelSelection.set_visibility_layer_bit(1, true)

func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Main Menu/options.tscn")

func _on_extra_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Main Menu/extra_credits.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
