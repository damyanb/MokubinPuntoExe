extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_textos1_ponerfar():
	show()


func _on_textos1_sacarfar():
	hide()


func _on_CAMARA1_listoco():
	hide()


func _on_CAMARA2_listoco2():
	hide()


func _on_CAMARA1_pcraf():
	show()


func _on_CAMARA1_scraf():
	hide()
