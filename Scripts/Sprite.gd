extends Sprite

onready var tween = get_node("Tween")
var path = []
var curr_pos
var next_pos


func start_tween_with_path(passed_path):
	path = passed_path
	path.remove(0)
	print(path)
	curr_pos = self.global_position
	next_pos = path[0]
	var speed_scaler = 50*(1-(next_pos-curr_pos).length())
	tween.interpolate_property(self, "global_position", self.global_position, path[0], 50*speed_scaler, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()

func _on_Tween_tween_completed(object, key):
	print(path)
	if path.size() > 0:
		curr_pos = self.global_position
		next_pos = path[0]
		var speed_scaler = 50*(1-(next_pos-curr_pos).length())
		tween.interpolate_property(self, "global_position", self.global_position, path[0], 50*speed_scaler, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		tween.start()
		path.remove(0)
