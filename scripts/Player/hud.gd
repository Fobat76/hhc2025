extends Control
class_name HUD

@export var spawned_items : Label
@export var incorrect : Label

func update_spawned_items(string : String):
	spawned_items.text = string

func update_incorrect():
	incorrect.text += "X"
