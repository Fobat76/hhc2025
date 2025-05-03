extends Area2D
@export var bin_type: Items.ItemType

func _on_area_2d_body_entered(body):
	if body.is_in_group("player") and body.held_item_type != -1:
		if body.held_item_type == bin_type:
			print("Correct")
		else:
			print("Wrong")
		body.held_item_type = -1
