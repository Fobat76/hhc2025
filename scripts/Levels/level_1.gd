extends Node2D

const numberOfItems = 5
var curNum = 0
func _ready():
	for i in numberOfItems: 
		get_node("ItemSpawn").spawn()
		curNum += 1
		$CanvasLayer/Hud.update_spawned_items("Spawned Items: " + str(curNum) + "/" + str(numberOfItems))
		await get_tree().create_timer(3).timeout

func onWrong():
	$CanvasLayer/Hud.update_incorrect()
