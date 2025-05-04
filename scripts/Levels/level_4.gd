extends Node2D

const numberOfItems = 20

func _ready():
	for i in numberOfItems:
		get_node("ItemSpawn").spawn()
		await get_tree().create_timer(3).timeout
