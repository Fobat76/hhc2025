extends CharacterBody2D

@export var speed = 300
var screen_size
var holding = false

@onready var animated_sprite_2d = $AnimatedSprite2D

func _ready():
	screen_size = get_viewport_rect().size

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

	if direction.length() > 0:
		velocity = direction.normalized() * speed
	else:
		velocity = Vector2.ZERO

	move_and_slide()

	# Interaction input
	if Input.is_action_just_pressed("interact"):
		if not holding:
			holding = true

func start(pos):
	position = pos
	show()
