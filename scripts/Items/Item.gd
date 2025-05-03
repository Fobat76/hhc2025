extends Area2D
class_name Item

@export var item_type: Items.ItemType
@onready var sprite = $Sprite2D

func pickup(player):
	player.held_item_type = item_type
	queue_free()  # or hide()
