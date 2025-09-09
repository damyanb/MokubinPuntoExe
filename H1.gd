extends AudioStreamPlayer

func _ready():
	_set_playing(false)


func _on_textos1_ph1():
	play()


func _on_textos1_sh1():
	_set_playing(false)


func _on_CAMARA1_pa3():
	play()


func _on_CAMARA1_sa3():
	_set_playing(false)
