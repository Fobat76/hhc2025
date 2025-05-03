extends Control

func resume():
	get_tree().paused = false
	$TextureRect.set_visibility_layer_bit(1, false)

func pause():
	get_tree().paused = true
	$TextureRect.set_visibility_layer_bit(1, true)

func testEsc():
	if Input.is_action_just_pressed("escape") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("escape") and get_tree().paused == true:
		resume()
 
func _on_resume_pressed() -> void:
	resume()

func _on_restart_pressed() -> void:
	resume()
	get_tree().reload_current_scene()

func _on_quit_pressed() -> void:
	resume()
	get_tree().change_scene_to_file("res://scenes/Main Menu/menu.tscn")

func _process(delta):
	testEsc()
