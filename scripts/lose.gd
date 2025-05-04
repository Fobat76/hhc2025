extends Node2D

@onready var sound = $explode

func _ready() -> void:
	await get_tree().create_timer(3).timeout
	$"1".visible = false
	await get_tree().create_timer(3).timeout
	$"2".visible = false
	await get_tree().create_timer(3).timeout
	$"3".visible = false
	sound.play()
	
	await get_tree().create_timer(5).timeout
	get_tree().change_scene_to_file("res://scenes/Main Menu/menu.tscn")
