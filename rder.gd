extends AudioStreamPlayer

func _ready():
	_set_playing(false)


func _on_textos1_prder():
	play()


func _on_textos1_srder():
	_set_playing(false)
