extends AudioStreamPlayer


func _ready():
	_set_playing(false)


func _on_textos1_psorpresa():
	if Variables.screamer==true:
		play()


func _on_textos1_ssorpresa():
	_set_playing(false)


func _on_CAMARA1_ptension():
	if Variables.screamer==true:
		play()

func _on_CAMARA1_stension():
	_set_playing(false)


func _on_CAMARA2_ponertension():
	if Variables.screamer==true:
		play()


func _on_CAMARA2_sacartension():
	_set_playing(false)
