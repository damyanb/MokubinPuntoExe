extends AudioStreamPlayer


func _ready():
	_set_playing(false)


func _on_textos1_prtrasiz():
	play()


func _on_textos1_srtrasiz():
	_set_playing(false)
