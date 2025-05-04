extends Node2D

const numberOfItems = 20
var curNum = 0
var track = 1

func _ready():	
	global.connect("on_wrong", self._on_wrong)
	global.connect("on_insert", self._on_insert)
	while curNum != numberOfItems:
		while get_tree().paused == true:
			await get_tree().create_timer(3).timeout
		get_node("ItemSpawn").spawn()
		curNum += 1
		$CanvasLayer/Hud.update_spawned_items("Spawned Items: " + str(curNum) + "/" + str(numberOfItems))
		await get_tree().create_timer(3).timeout

func _on_wrong():
	if track == numberOfItems:
		get_tree().change_scene_to_file("res://scenes/Levels/level5.tscn")
	track += 1

func _on_insert():
	if track == numberOfItems:
		get_tree().change_scene_to_file("res://scenes/Levels/level5.tscn")
	track += 1
