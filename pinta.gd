extends AudioStreamPlayer

func _ready():
	_set_playing(false)


func _on_textos1_ppinta():
	play()


func _on_textos1_spinta():
	_set_playing(false)


func _on_ponys_sdaycore():
	_set_playing(false)


func _on_CAMARA1_pr11():
	play()


func _on_CAMARA1_sr11():
	_set_playing(false)
