extends Node2D

onready var nav_2d = get_node("Navigation2D")
onready var character = get_node("Sprite")

func _process(delta):
	if Input.is_action_just_pressed("left_click"):
		var path = nav_2d.get_simple_path(character.global_position, get_global_mouse_position())
		print(path)
		character.start_tween_with_path(path)
