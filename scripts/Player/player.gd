extends CharacterBody2D
const Item = preload("res://scripts/Items/Items.gd")

@export var speed = 300
var held_item_type: Items.ItemType = -1
var nearby_item: Item = null  

@onready var animated_sprite_2d = $AnimatedSprite2D

func _physics_process(delta):
	var direction = Vector2.ZERO
	if Input.is_action_pressed("move_right"):
		direction.x += 1
		animated_sprite_2d.play("walk_right")
	elif Input.is_action_pressed("move_left"):
		direction.x -= 1
		animated_sprite_2d.play("walk_left")
	elif Input.is_action_pressed("move_down"):
		direction.y += 1
		animated_sprite_2d.play("walk_down")
	elif Input.is_action_pressed("move_up"):
		direction.y -= 1
		animated_sprite_2d.play("walk_up")
	else:
		animated_sprite_2d.play("idle")

	velocity = direction.normalized() * speed if direction.length() > 0 else Vector2.ZERO
	move_and_slide()

	# Pick up item
	if Input.is_action_just_pressed("interact") and held_item_type == -1 and nearby_item:
		nearby_item.pickup(self)

# Callbacks to detect item proximity
func _on_item_area_entered(area):
	if area is Item and held_item_type == -1:
		nearby_item = area

func _on_item_area_exited(area):
	if area == nearby_item:
		nearby_item = null
