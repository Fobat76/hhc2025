extends CharacterBody2D
const Item = preload("res://scripts/Items/Items.gd")

@export var speed = 300
var held_item_type: Items.ItemType = -1
var nearby_item: Item = null  

@onready var animated_sprite_2d = $AnimatedSprite2D

func _physics_process(delta):
	var direction = Vector2.ZERO

	# Movement vector
	if Input.is_action_pressed("move_right"):
		direction.x += 1
	if Input.is_action_pressed("move_left"):
		direction.x -= 1
	if Input.is_action_pressed("move_down"):
		direction.y += 1
	if Input.is_action_pressed("move_up"):
		direction.y -= 1

	# Normalize and move
	velocity = direction.normalized() * speed if direction.length() > 0 else Vector2.ZERO
	move_and_slide()

	# Animations – choose based on last key pressed
	if Input.is_action_pressed("move_up"):
		animated_sprite_2d.play("walk_up")
	elif Input.is_action_pressed("move_down"):
		animated_sprite_2d.play("walk_down")
	elif Input.is_action_pressed("move_right"):
		animated_sprite_2d.play("walk_right")
	elif Input.is_action_pressed("move_left"):
		animated_sprite_2d.play("walk_left")
	else:
		animated_sprite_2d.play("idle")

	# Pick up item
	if Input.is_action_just_pressed("interact") and held_item_type == -1 and nearby_item:
		nearby_item.pickup(self)


func _on_pickup_range_area_entered(area: Area2D) -> void:
		if area is Item and held_item_type == -1:
			nearby_item = area


func _on_pickup_range_area_exited(area: Area2D) -> void:
		if area == nearby_item:
			nearby_item = null
