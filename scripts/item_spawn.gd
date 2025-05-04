extends Node2D

var items = ["res://scenes/Items/bmo.tscn", "res://scenes/Items/book.tscn", "res://scenes/Items/camera.tscn","res://scenes/Items/candybar.tscn", "res://scenes/Items/cardboard.tscn", "res://scenes/Items/fryingpan.tscn", "res://scenes/Items/ketchup.tscn", "res://scenes/Items/monitor.tscn", "res://scenes/Items/newspaper.tscn", "res://scenes/Items/phone.tscn", "res://scenes/Items/plastic_bottle.tscn", "res://scenes/Items/pokeball.tscn", "res://scenes/Items/sodacan.tscn", "res://scenes/Items/takeout.tscn", "res://scenes/Items/test.tscn", "res://scenes/Items/zelda.tscn"]

func spawn():
	if get_tree().paused == false:
		var randomIndex = randi() % 16
		var randomObject = load(items[randomIndex]).instantiate()
		self.add_child(randomObject)
