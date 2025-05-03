extends Area2D
class_name Item

@export var item_type: Items.ItemType
@onready var sprite = $Sprite2D

func pickup(player):
	if player.held_item_type == -1:
		player.held_item_type = item_type
		print("Item is picked up")
		queue_free()  # or hide()
