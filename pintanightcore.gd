extends AudioStreamPlayer


func _ready():
	_set_playing(false)


func _on_ponys_pnightcore():
	play()


func _on_ponys_snightcore():
	_set_playing(false)


func _on_CAMARA1_pr11nightcore():
	play()


func _on_CAMARA1_sr11nightcore():
	_set_playing(false)
