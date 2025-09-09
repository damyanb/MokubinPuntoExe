extends AudioStreamPlayer

func _ready():
	_set_playing(false)


func _on_textos1_pfinal():
	play()


func _on_textos1_sfinal():
	_set_playing(false)


func _on_CAMARA1_pr10():
	play()


func _on_CAMARA1_st10():
	_set_playing(false)
