extends Area2D
class_name Conveyor

@onready var item_holder = "res://scenes/Conveyor/item_holder.tscn"
@onready var detector = "res://scenes/Conveyor/detector.tscn"
enum Direction {Left, Right, Up, Down}
@export var to_direction: Direction = Direction.Left
@export var from_direction: Direction = Direction.Right
@onready var sprite = $Sprite2D

func set_direction():
	match to_direction:
		Direction.Left:
			detector.position = Vector2.LEFT * 32
			match from_direction:
				Direction.Right:
					sprite.frame = 1
				Direction.Up:
					sprite.frame = 9
				Direction.Down:
					sprite.frame = 2
		Direction.Right:
			detector.position = Vector2.RIGHT * 32
			match from_direction:
				Direction.Left:
					sprite.frame = 11
				Direction.Up:
					sprite.frame = 10
				Direction.Down:
					sprite.frame = 3
		Direction.Up:
			detector.position = Vector2.UP * 32
			match from_direction:
				Direction.Left:
					sprite.frame = 12
				Direction.Right:
					sprite.frame = 7
				Direction.Down:
					sprite.frame = 8
		Direction.Down:
			detector.position = Vector2.DOWN * 32
			match from_direction:
				Direction.Left:
					sprite.frame = 4
				Direction.Up:
					sprite.frame = 5
				Direction.Right:
					sprite.frame = 0

func _ready():
	set_direction()
	
func can_receive_item():
	return item_holder.get_child_count() == 0
	
func receive_item(item: Node2D):
	item_holder.receive_item(item)
	
func _on_detector_belt_detected(area: Area2D):
	var item = item_holder.offload_item()
	area.receive_item(item)
	
func _on_item_holder_item_held():
	detector.detect()
