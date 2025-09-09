extends Area2D

export(int) var Velocidad
var Movimiento = Vector2()
var limite
signal ganar
var cont
signal pintar
var puntos
signal perder
var loser
signal pzarpado
signal szarpado
signal pnightcore
signal sdaycore
signal snightcore

var instante

func _ready():
	instante=false
	loser = 0
	cont = 0
	hide()
	limite = get_viewport_rect().size
	puntos = 0
	position= 5*(limite)/16

func _process(delta):
	if loser>=15:
		if loser==15 && instante == false:
			emit_signal("sdaycore")
			emit_signal("pzarpado")
			emit_signal("pnightcore")
			instante=true
		Velocidad=1515
	elif loser<15:
		Velocidad=500
	Movimiento = Vector2()
	if Input.is_action_pressed("ui_right"):
		Movimiento.x +=1
	if Input.is_action_pressed("ui_left"):
		Movimiento.x -=1
	if Input.is_action_pressed("ui_up"):
		Movimiento.y -=1
	if Input.is_action_pressed("ui_down"):
		Movimiento.y +=1
	if Movimiento.length() >0:
		Movimiento= Movimiento.normalized() * Velocidad
	position +=Movimiento*delta
	Variables.posicionp=position
	position.x = clamp(position.x, 0, limite.x)
	position.y = clamp(position.y, 0, limite.y)


func _on_ponys_body_entered(body):
	if cont ==0:
		emit_signal("pintar")
		puntos=0
		cont+=1
		position= 11*(limite)/16
	elif (cont==1 && puntos<30):
		emit_signal("perder")
		loser+=1
		cont-=1
		puntos=0
		position= 5*(limite)/16




func _on_textos1_jugar():
	instante=false
	loser=0
	cont=0
	puntos=0
	show()
	position= 5*(limite)/16


func _on_tiempo_timeout():
	puntos +=1
	if puntos == 30 && cont==1:
		emit_signal("szarpado")
		emit_signal("sdaycore")
		emit_signal("snightcore")
		emit_signal("ganar")
		hide()
