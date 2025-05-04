extends Control

var opened = false

func _ready():
	#$CanvasLayer/PlayButton.grab_focus()
	pass

func _on_play_button_pressed() -> void:
	if opened == false:
		$CanvasLayer/LevelSelection.set_visibility_layer_bit(1, true)
		$Level1Background.visible = false

func _on_settings_pressed() -> void:
	if opened == false:
		var settingsScene = load("res://scenes/Main Menu/options.tscn").instantiate()
		settingsScene.menu = self
		self.add_child(settingsScene)
		$CanvasLayer/LevelSelection.set_visibility_layer_bit(1, false)
		$Level1Background.visible = true


func _on_extra_credits_pressed() -> void:
	if opened == false:
		opened = true
		var extraScene = load("res://scenes/Main Menu/extra_credits.tscn").instantiate()
		extraScene.menu = self
		self.add_child(extraScene)
		$CanvasLayer/LevelSelection.set_visibility_layer_bit(1, false)
		$Level1Background.visible = true

func _on_quit_pressed() -> void:
	if opened == false:
		get_tree().quit()
