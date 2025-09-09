extends AudioStreamPlayer


func _ready():
	_set_playing(false)


func _on_textos1_pcamion():
	play()


func _on_textos1_scamion():
	_set_playing(false)
