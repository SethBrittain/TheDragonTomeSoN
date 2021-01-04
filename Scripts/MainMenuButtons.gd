extends Node

export (PackedScene) var play_scene

func _on_Play_button_up():
	get_parent().activate_play_button()
	self.queue_free()

func _on_Settings_button_up():
	pass #TODO

func _on_Credits_button_up():
	pass #TODO
