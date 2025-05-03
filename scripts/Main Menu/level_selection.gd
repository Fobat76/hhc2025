extends Control

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level1.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level2.tscn")


func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level3.tscn")


func _on_button_4_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level4.tscn")


func _on_button_5_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level5.tscn")
