extends Control

var menu 

func _on_back_pressed() -> void:
	menu.opened = false
	queue_free()

@onready var img1 = $Page1

@onready var img2 = $Page2

@onready var img3 = $Page3

@onready var img4 = $Page4

func _on_left_button_pressed() -> void:
	if img1.visible:
		pass
	elif img2.visible:
		img1.visible = true
		img2.visible = false
	elif img3.visible:
		img2.visible = true
		img3.visible = false
	elif img4.visible:
		img3.visible = true
		img4.visible = false



func _on_right_button_pressed() -> void:
	if img1.visible:
		img1.visible = false
		img2.visible = true
	elif img2.visible:
		img2.visible = false
		img3.visible = true
	elif img3.visible:
		img3.visible = false
		img4.visible = true
	elif img4.visible:
		pass
