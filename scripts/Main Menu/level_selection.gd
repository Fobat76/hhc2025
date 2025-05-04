extends Control

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level1.tscn")


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level2.tscn")


func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level3.tscn")


func _on_button_4_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level4.tscn")


func _on_button_5_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Levels/level5.tscn")

@onready var level1Button = $GoLevel1
@onready var img1 = $Level1Blurred

@onready var level2Button = $GoLevel2
@onready var img2 = $Level2Blurred

@onready var level3Button = $GoLevel3
@onready var img3 = $Level3Blurred

@onready var level4Button = $GoLevel4
@onready var img4 = $Level4Blurred

@onready var level5Button = $GoLevel5
@onready var img5 = $Level5Blurred

func _ready() -> void:
	level1Button.connect("mouse_entered", Callable(self, "_on_button1_hovered"))
	level1Button.connect("mouse_exited", Callable(self, "_on_button1_unhovered"))
	level2Button.connect("mouse_entered", Callable(self, "_on_button2_hovered"))
	level2Button.connect("mouse_exited", Callable(self, "_on_button2_unhovered"))
	level3Button.connect("mouse_entered", Callable(self, "_on_button3_hovered"))
	level3Button.connect("mouse_exited", Callable(self, "_on_button3_unhovered"))
	level4Button.connect("mouse_entered", Callable(self, "_on_button4_hovered"))
	level4Button.connect("mouse_exited", Callable(self, "_on_button4_unhovered"))
	level5Button.connect("mouse_entered", Callable(self, "_on_button5_hovered"))
	level5Button.connect("mouse_exited", Callable(self, "_on_button5_unhovered"))

func _on_button1_hovered():
	img1.visible = true

func _on_button1_unhovered():
	img1.visible = false

func _on_button2_hovered():
	img2.visible = true

func _on_button2_unhovered():
	img2.visible = false

func _on_button3_hovered():
	img3.visible = true

func _on_button3_unhovered():
	img3.visible = false

func _on_button4_hovered():
	img4.visible = true

func _on_button4_unhovered():
	img4.visible = false

func _on_button5_hovered():
	img5.visible = true

func _on_button5_unhovered():
	img5.visible = false
