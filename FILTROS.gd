extends AnimatedSprite




# Called when the node enters the scene tree for the first time.
func _ready():
	hide()




func _on_textos1_pfiltro1():
	animation = "filtro1"
	play()
	show()


func _on_textos1_sfiltro1():
	stop()
	hide()


func _on_arbol_colornegro():
	if Variables.page ==88:
		show()
		animation= "filtro7"
		speed_scale=0
		frame=0


func _on_arbol_colorverde():
	if Variables.page ==88:
		show()
		animation= "filtro7"
		speed_scale=0
		frame=1



func _on_CAMARA1_ponerfiltro2():
	animation = "filtro2"
	show()


func _on_CAMARA1_sacarfiltro2():
	hide()


func _on_CAMARA1_ponerfiltro4():
	animation = "filtro4"
	show()


func _on_CAMARA2_ponerfiltro6():
	animation = "filtro6"
	show()


func _on_CAMARA2_sacarfiltro6():
	hide()


func _on_textos1_ponercontroles():
	animation = "controles"
	show()


func _on_ponys_ganar():
	hide()
