extends Area2D
@export var bin_type: Items.ItemType

func _on_body_entered(body):
	if not body.is_in_group("player"):
		return  # Don't do anything if it's not the player

	if body.held_item_type != -1:
		if body.held_item_type == bin_type:
			global.emit_signal("on_insert")
			correct_feedback()
			get_parent().get_node("CorrectSound").play()
		else:
			global.emit_signal("on_wrong")
			shake()
			get_parent().get_node("WrongSound").play()
		body.held_item_type = -1

func shake():
	var parent = get_parent()
	var original_pos = parent.position
	var tween = parent.create_tween()
	tween.tween_property(parent, "position", original_pos + Vector2(5, 0), 0.05)
	tween.tween_property(parent, "position", original_pos - Vector2(5, 0), 0.05)
	tween.tween_property(parent, "position", original_pos + Vector2(3, 0), 0.05)
	tween.tween_property(parent, "position", original_pos, 0.05)

func correct_feedback():
	var parent = get_parent()
	var tween = parent.create_tween()
	tween.tween_property(parent, "scale", Vector2(1.1, 1.1), 0.05).set_trans(Tween.TRANS_ELASTIC)
	tween.tween_property(parent, "scale", Vector2(1, 1), 0.1).set_trans(Tween.TRANS_ELASTIC)
