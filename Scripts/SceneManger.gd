extends Node2D

export (PackedScene) var play_scene

func activate_play_button():
	var scene = play_scene.instance()
	add_child(scene)
