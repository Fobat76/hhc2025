extends Control

func _ready():
	$PlayButton.grab_focus()

func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Level_Selection.tscn")

func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/options.tscn")

func _on_extra_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/extra_credits.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
