extends RigidBody2D

export (int) var velocidad_minima
export (int) var velocidad_max
var c
var limite2
var vel
var Movimiento2 = Vector2()
var Velocidad2
var velazar
var az
var sw

func _ready():
	randomize()
	sw=false
	az=0
	c = 0
	Velocidad2=velocidad_minima
	velazar=velocidad_minima
	velocidad_minima =55
	velocidad_max =595
	vel = Vector2(velocidad_minima, velocidad_max)
	limite2 = get_viewport_rect().size
	hide()
	position= 11*(limite2)/16

func _process(delta):
	Movimiento2 = Vector2()
	if c==0:
		Velocidad2=velocidad_minima
		if position.x==0:
			sw=true
		elif position.x==limite2.x:
			sw=false
		if sw==false:
			Movimiento2.x -=1
		elif sw==true:
			Movimiento2.x +=1
	elif c==1:
		Velocidad2=velazar
		if Variables.posicionp.x>position.x && Variables.posicionp.y<position.y:
			Movimiento2.x+=1
			Movimiento2.y-=1
		if Variables.posicionp.x<position.x && Variables.posicionp.y<position.y:
			Movimiento2.x-=1
			Movimiento2.y-=1
		if Variables.posicionp.x<position.x && Variables.posicionp.y>position.y:
			Movimiento2.x-=1
			Movimiento2.y+=1
		if Variables.posicionp.x>position.x && Variables.posicionp.y>position.y:
			Movimiento2.x+=1
			Movimiento2.y+=1
		if Variables.posicionp.x==position.x && Variables.posicionp.y>position.y:
			Movimiento2.y+=1
		if Variables.posicionp.x==position.x && Variables.posicionp.y>position.y:
			Movimiento2.y-=1
		if Variables.posicionp.x<position.x && Variables.posicionp.y==position.y:
			Movimiento2.x-=1
		if Variables.posicionp.x>position.x && Variables.posicionp.y==position.y:
			Movimiento2.x+=1
	if Movimiento2.length() >0:
		Movimiento2= Movimiento2.normalized() * Velocidad2
	position +=Movimiento2*delta
	if c==0:
		position.x = clamp(position.x, 0, limite2.x)
		position.y = clamp(position.y, 0, limite2.y)

func _on_textos1_jugar():
	show()
	c=0
	position= 11*(limite2)/16

func _on_ponys_ganar():
	hide()


func _on_ponys_pintar():
	if c==0:
		c+=1
		position=3*(limite2)/16
	elif c==1:
		c-=1
		position=11*(limite2)/16




func _on_ponys_perder():
	position= 11*(limite2)/16
	c=0


func _on_azar_timeout():
	if c==1:
		velazar=rand_range(velocidad_minima, velocidad_max)

