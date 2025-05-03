extends Node2D


func _on_back_to_menu_pressed() -> void:
	get_tree().change_scene("res://scenes/menu.tscn")
