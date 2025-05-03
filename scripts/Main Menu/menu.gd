extends Control

func _ready():
	#$CanvasLayer/PlayButton.grab_focus()
	pass

func _on_play_button_pressed() -> void:
	$CanvasLayer/LevelSelection.set_visibility_layer_bit(1, true)

func _on_settings_pressed() -> void:
	var settingsScene = load("res://scenes/Main Menu/options.tscn").instantiate()
	self.add_child(settingsScene)
	$CanvasLayer/LevelSelection.set_visibility_layer_bit(1, false)


func _on_extra_credits_pressed() -> void:
	var extraScene = load("res://scenes/Main Menu/extra_credits.tscn").instantiate()
	self.add_child(extraScene)
	$CanvasLayer/LevelSelection.set_visibility_layer_bit(1, false)

func _on_quit_pressed() -> void:
	get_tree().quit()
