extends Control

var menu 

func _on_button_pressed() -> void:
	menu.opened = false
	queue_free()
