extends Area2D
@export var bin_type: Items.ItemType

func _on_body_entered(body):
	if not body.is_in_group("player"):
		print("nothing")
		return  # Don't do anything if it's not the player

	if body.held_item_type != -1:
		if body.held_item_type == bin_type:
			print("✅ Correct")
		else:
			print("❌ Wrong")

		body.held_item_type = -1
