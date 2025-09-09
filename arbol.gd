extends AnimatedSprite

signal colorverde
signal colornegro



# Called when the node enters the scene tree for the first time.
func _ready():
	if Variables.suave ==true:
		animation = "suave"
	elif Variables.suave==false:
		animation = "ramas"
	show()
	speed_scale = 0
	frame = Variables.frgeneral

func _process(delta):
	if Variables.frgeneral==72:
		if Variables.seleccion[0] == "coca":
			emit_signal("colornegro")
		elif Variables.seleccion[0]== "jugo":
			emit_signal("colorverde")

func _on_textos1_pasarpag():
	Variables.frgeneral +=1
	show()
	speed_scale = 0
	frame = Variables.frgeneral


func _on_textos1_ponerfondo():
	frame = 0


func _on_textos1_sacarfondo():
	frame = Variables.frgeneral


func _on_textos1_palgulag():
	Variables.frgeneral = 0
	frame = Variables.frgeneral


func _on_textos1_sacararbol():
	hide()


func _on_CAMARA1_listoco():
	set_process_input(true)
	show()


func _on_CAMARA2_listoco2():
	set_process_input(true)
	show()


func _on_ponys_ganar():
	set_process_input(true)
	show()
