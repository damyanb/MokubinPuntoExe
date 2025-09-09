extends AudioStreamPlayer
func _ready():
	_set_playing(false)


func _on_textos1_sh2():
	_set_playing(false)


func _on_textos1_ph2():
	play()


func _on_CAMARA1_pr28():
	play()


func _on_CAMARA1_sr28():
	_set_playing(false)
