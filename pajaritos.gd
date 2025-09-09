extends AudioStreamPlayer


func _ready():
	_set_playing(false)


func _on_textos1_ppajaritos():
	play()


func _on_textos1_spajaritos():
	_set_playing(false)


func _on_CAMARA1_sbirds():
	_set_playing(false)


func _on_CAMARA1_pbirds():
	play()
