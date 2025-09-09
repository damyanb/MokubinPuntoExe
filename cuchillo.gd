extends AudioStreamPlayer

func _ready():
	_set_playing(false)


func _on_textos1_pcuchillo():
	play()


func _on_textos1_scuchillo():
	_set_playing(false)
