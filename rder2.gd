extends AudioStreamPlayer


func _ready():
	_set_playing(false)


func _on_textos1_prder2():
	play()


func _on_textos1_srder2():
	_set_playing(false)
