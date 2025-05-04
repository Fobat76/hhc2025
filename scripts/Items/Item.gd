extends Area2D
class_name Item

@export var item_type: Items.ItemType
@onready var sprite = $Sprite2D
@onready var label = $Label
@export var animation_prefix: String = ""
func _ready():
	label.visible = false  # Hide by default

func pickup(player):
	if player.held_item_type == -1:
		player.held_item_type = item_type
		player.held_anim_prefix = animation_prefix
		print("Item is picked up")
		queue_free()  # or hide()



func _on_area_entered(area: Area2D) -> void:
	print("entered")
	if area.is_in_group("player"):
		print("Showing Label")
		label.visible = true


func _on_area_exited(area: Area2D) -> void:
	if area.is_in_group("player"):
		print("exited")
		label.visible = false
