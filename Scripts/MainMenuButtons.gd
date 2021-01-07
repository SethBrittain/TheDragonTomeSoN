extends Node

export (PackedScene) var play_scene

onready var SoundStreamer = get_node("AudioStreamPlayer")

func _on_Play_button_up():
	get_parent().activate_play_button()
	self.queue_free()

func _on_Settings_button_up():
	pass #TODO

func _on_Credits_button_up():
	pass #TODO

func _on_Quit_pressed():
	get_tree().quit()

func _on_Play_mouse_entered():
	SoundStreamer.play()

func _on_Settings_mouse_entered():
	SoundStreamer.play()

func _on_Credits_mouse_entered():
	SoundStreamer.play()

func _on_Quit_mouse_entered():
	SoundStreamer.play()
