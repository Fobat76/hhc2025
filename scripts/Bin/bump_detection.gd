extends Area2D
@export var bin_type: Items.ItemType

func _on_body_entered(body):
	if not body.is_in_group("player"):
		#print("nothing")
		return  # Don't do anything if it's not the player

	if body.held_item_type != -1:
		if body.held_item_type == bin_type:
			#print("✅ Correct")
			global.emit_signal("on_insert")
		else:
			#print("❌ Wrong")
			global.emit_signal("on_wrong")
			shake()
		body.held_item_type = -1

func shake():
	var parent = get_parent()
	var original_pos = parent.position
	var tween = parent.create_tween()
	tween.tween_property(parent, "position", original_pos + Vector2(5, 0), 0.05)
	tween.tween_property(parent, "position", original_pos - Vector2(5, 0), 0.05)
	tween.tween_property(parent, "position", original_pos + Vector2(3, 0), 0.05)
	tween.tween_property(parent, "position", original_pos, 0.05)
