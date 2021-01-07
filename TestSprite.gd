extends Sprite

var color_array = ["#172038","#253a5e","#3c5e8b","#4f8fba","#73bed3","#a4dddb","#19332d","#25562e","#468232","#75a743","a8ca58","d0da91","4d2b32","7a4841","ad7757","c09473","d7b594","e7d5b3","341c27","602c2c","884b2b","be772b","de9e41","e8c170","241527","411d31","752438","a53030","cf573c","da863e","1e1d39","402751","7a367b","a23e8c","c65197","df84a5","090a14","10141f","151d28","202e37","394a50","577277","819796","a8b5b2","c7cfcc","ebede9"]
var color_iterator = 0

func _ready():
	self.set_modulate(Color(color_array[0]))

func _process(delta):
	if Input.is_action_just_pressed("menu_up"):
		color_iterator += 1
	if Input.is_action_just_pressed("menu_down"):
		color_iterator -= 1
	
	self.set_modulate(Color(color_array[color_iterator % color_array.size()]))
