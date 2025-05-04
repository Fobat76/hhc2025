extends Control

var menu 

func _on_back_pressed() -> void:
	menu.opened = false
	queue_free()
