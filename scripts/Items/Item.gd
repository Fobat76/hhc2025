extends Area2D
class_name Item

@export var item_type: Items.ItemType
@onready var sprite = $Sprite2D
@onready var label = $Label

func _ready():
	label.visible = false  # Hide by default

func pickup(player):
	if player.held_item_type == -1:
		player.held_item_type = item_type
		print("Item is picked up")
		queue_free()  # or hide()

func _on_area_entered(area):
	if area.is_in_group("player"):
		label.visible = true

func _on_area_exited(area):
	if area.is_in_group("player"):
		label.visible = false
