extends AnimatedSprite

var mover = false
signal ponerfiltro2
signal sacarfiltro2
var f2=false
signal tim
var f4 = false
signal ponerfiltro4
signal listoco
signal ptension
signal stension
var trucoactivado
signal pallende
signal sallende
var minute 
var seconds 
var oportunidad
signal pa3
signal sa3
signal pr28
signal sr28
signal pr11
signal sr11
signal pr11nightcore
signal sr11nightcore
signal pp2
signal sp2
signal pbirds
signal sbirds
signal pr10
signal st10
var cancion
signal pcraf
signal scraf
signal prock
signal srock
var timeDict
var hour 
var ano 
var elano 



# Called when the node enters the scene tree for the first time.
func _ready():
	cancion = 1
	oportunidad=false
	trucoactivado=false
	animation = "CAM1"
	hide()
	set_process_input(false)
	speed_scale=0
	playing=false
	mover = false



func _on_textos1_ponercam1():
	animation = "CAM1"
	show()
	set_process_input(true)
	speed_scale=0
	playing=false
	frame = 63

func _input(event):
	timeDict = OS.get_time();
	hour = timeDict.hour;
	ano = OS.get_date()
	elano = ano.year
	if trucoactivado==true && (Input.is_action_just_pressed("derecha") or Input.is_action_just_pressed("izquierda") ):
		if hour==6:
			cancion+=1
			if cancion==2:
				emit_signal("sa3")
				emit_signal("pr28")
			if cancion==3:
				emit_signal("sr28")
				emit_signal("pr11")
			if cancion==4:
				emit_signal("sr11")
				emit_signal("pr11nightcore")
			if cancion==5:
				emit_signal("sr11nightcore")
				emit_signal("ptension")
			if cancion==6:
				emit_signal("stension")
				emit_signal("pp2")
			if cancion==7:
				emit_signal("sp2")
				emit_signal("pbirds")
			if cancion==8:
				emit_signal("sbirds")
				emit_signal("pr10")
			if cancion==9 or elano==2019:
				emit_signal("st10")
				trucoactivado=false
				animation ="CAM1"
				speed_scale=0
				playing=false
				frame =63
				emit_signal("pcraf")
				emit_signal("sa3")
				emit_signal("sbirds")
				emit_signal("sp2")
				emit_signal("sr11")
				emit_signal("sr11nightcore")
				emit_signal("sr28")
				emit_signal("stension")
				emit_signal("srock")
		else:
			trucoactivado=false
			speed_scale=0
			playing=false
			animation ="CAM1"
			frame =63
			emit_signal("sallende")
			emit_signal("pcraf")
			emit_signal("srock")
	if hour==3 && trucoactivado==false && oportunidad==false:
		emit_signal("pallende")
		trucoactivado=true
		animation = "trucazos"
		oportunidad=true
		frame = 3
		emit_signal("scraf")
	if hour==0 && trucoactivado==false && oportunidad == false:
		emit_signal("pallende")
		trucoactivado=true
		animation = "trucazos"
		oportunidad=true
		frame=0
		emit_signal("scraf")
	if hour==1 && trucoactivado==false && oportunidad == false:
		emit_signal("pallende")
		trucoactivado=true
		animation = "trucazos"
		oportunidad=true
		frame=1
		emit_signal("scraf")
	if hour==2 && trucoactivado==false && oportunidad == false:
		emit_signal("pallende")
		trucoactivado=true
		animation = "trucazos"
		oportunidad=true
		frame=2
		emit_signal("scraf")
	if hour==6 && trucoactivado==false && oportunidad == false:
		emit_signal("pa3")
		trucoactivado=true
		animation = "trucazos"
		oportunidad=true
		frame=4
		emit_signal("scraf")
	if elano==2019 && trucoactivado==false && oportunidad == false:
		emit_signal("prock")
		speed_scale=2
		playing=true
		trucoactivado=true
		animation="rock"
		emit_signal("scraf")
		oportunidad=true


	if frame ==9 && f2==false:
		emit_signal("tim")
		emit_signal("ponerfiltro2")
		emit_signal("ptension")
		f2=true
	if frame ==72 && f4==false:
		emit_signal("tim")
		emit_signal("ponerfiltro4")
		emit_signal("ptension")
		f4=true
	if trucoactivado ==false:
		if Input.is_action_pressed("derecha"):
			if frame ==0:
				frame=80
			frame = frame-1
		if Input.is_action_pressed("izquierda"):
			if frame ==80:
				frame = 0
			frame = frame+1



func _on_tcam1_timeout():
	emit_signal("sacarfiltro2")
	emit_signal("stension")
	if f4 == true:
		emit_signal("stension")
		set_process_input(false)
		hide()
		emit_signal("listoco")


func _on_textos1_palgulag():
	cancion=1
	oportunidad=false
	speed_scale=0
	playing=false
	trucoactivado=false
	animation ="CAM1"
	mover = false
	f2=false
	f4 = false
