extends AudioStreamPlayer

func _ready():
	_set_playing(false)


func _on_CAMARA1_pallende():
	play()


func _on_CAMARA1_sallende():
	_set_playing(false)


func _on_textos1_palgulag():
	_set_playing(false)
