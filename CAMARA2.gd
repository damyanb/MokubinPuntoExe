extends AnimatedSprite

var mover = false
signal ponerfiltro6
signal sacarfiltro6
var f6=false
signal tim2
signal listoco2
signal ponertension
signal sacartension


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()
	set_process_input(false)
	speed_scale=0
	mover = false


func _input(event):
	if frame ==41 && f6==false:
		emit_signal("ponertension")
		emit_signal("tim2")
		emit_signal("ponerfiltro6")
		f6=true
	if Input.is_action_pressed("derecha"):
		if frame ==0:
			frame=63
		frame = frame-1
	if Input.is_action_pressed("izquierda"):
		if frame ==63:
			frame = 0
		frame = frame+1

func _on_textos1_ponercam2():
	show()
	set_process_input(true)
	speed_scale=0
	frame = 57


func _on_tcam2_timeout():
	emit_signal("sacarfiltro6")
	if f6 == true:
		set_process_input(false)
		hide()
		emit_signal("listoco2")


func _on_textos1_palgulag():
	mover = false
	f6=false

