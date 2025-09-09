extends AudioStreamPlayer

func _ready():
	_set_playing(false)


func _on_textos1_ph4():
	play()


func _on_textos1_sh4():
	_set_playing(false)


func _on_CAMARA1_pp2():
	play()


func _on_CAMARA1_sp2():
	_set_playing(false)
