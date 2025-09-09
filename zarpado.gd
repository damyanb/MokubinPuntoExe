extends AudioStreamPlayer

func _ready():
	_set_playing(false)


func _on_ponys_pzarpado():
	play()


func _on_ponys_szarpado():
	_set_playing(false)
