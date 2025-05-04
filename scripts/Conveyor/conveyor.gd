extends Area2D
class_name Conveyor

@onready var sprite = $AnimatedSprite2D


func _ready():
	sprite.play()
	
