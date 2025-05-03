extends Area2D
class_name container

@export var container_name: String
@export var container_type: Items.ItemType

func accepts(item_type: Items.ItemType) -> bool:
	return item_type == container_type
