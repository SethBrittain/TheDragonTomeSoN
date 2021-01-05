extends Node2D

export (PackedScene) var play_scene

func activate_play_button():
	var scene = play_scene.instance()
	add_child(scene)

func _process(delta):
	if Input.is_action_just_pressed("ui_end"):
		get_tree().quit()
