extends Node2D

const numberOfItems = 5
var curNum = 0

func _ready():
	
	while curNum != numberOfItems:
		while get_tree().paused == true:
			await get_tree().create_timer(3).timeout
		get_node("ItemSpawn").spawn()
		curNum += 1
		$CanvasLayer/Hud.update_spawned_items("Spawned Items: " + str(curNum) + "/" + str(numberOfItems))
		await get_tree().create_timer(3).timeout
	
	

#func onWrong():
#	$CanvasLayer/Hud.update_incorrect()
#Useless code I think?
