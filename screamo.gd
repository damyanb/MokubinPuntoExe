extends AudioStreamPlayer


func _ready():
	_set_playing(false)


func _on_textos1_pscreamo():
	if Variables.screamer==true:
		play()
