extends Control
class_name HUD

@export var spawned_items : Label
@export var incorrect : Label

var track = 0

func _ready():
	global.connect("on_wrong", self._on_wrong)
	global.connect("on_insert", self._on_insert)

func update_spawned_items(string : String):
	spawned_items.text = string

func _on_wrong():
	if incorrect.text.length() == 2:
		get_tree().change_scene_to_file("res://scenes/lose.tscn") 
	else:
		incorrect.text += "X"
		track += 1

func _on_insert():
	track += 1
