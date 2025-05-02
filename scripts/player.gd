extends Area2D

# === Variables ===
@export var speed = 300 # Default speed; change later based on PM
var screen_size # Window size
var holding = false
@onready var animated_sprite_2d = $AnimatedSprite2D

# === Initialization ===
func _ready():
	screen_size = get_viewport_rect().size

# === Per-frame Processing ===
func _process(delta):
	var velocity = Vector2.ZERO # The player's movement vector

	# Movement input handling
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		animated_sprite_2d.play("walk_right")
	elif Input.is_action_pressed("move_left"):
		velocity.x -= 1
		animated_sprite_2d.play("walk_left")
	elif Input.is_action_pressed("move_down"):
		velocity.y += 1
		animated_sprite_2d.play("walk_down")
	elif Input.is_action_pressed("move_up"):
		velocity.y -= 1
		animated_sprite_2d.play("walk_up")
	else:
		$AnimatedSprite2D.play("idle")

	# Normalize velocity and move
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed

	position += velocity * delta
	position = position.clamp(Vector2.ZERO, screen_size)

	# Interaction handling
	if Input.is_action_just_pressed("interact"):
		if not holding:
			holding = true

# === Custom Methods ===
func start(pos):
	position = pos
	show()
