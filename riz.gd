extends AudioStreamPlayer


func _ready():
	_set_playing(false)


func _on_textos1_priz():
	play()


func _on_textos1_sriz():
	_set_playing(false)
