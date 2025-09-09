# DialogBox.gd
extends RichTextLabel


signal pfiltro1
signal sfiltro1
signal pasarpag
signal ponerfondo
signal sacarfondo
signal palgulag
signal ponercam1
signal ponercam2
signal sacararbol
signal ponerfar
signal jugar
signal ponercontroles
signal ph1
signal sh1
signal pcamion
signal scamion
signal pcuchillo
signal scuchillo
signal ppajaritos
signal spajaritos
signal ph4
signal sh4
signal pfinal
signal sfinal
signal ppinta
signal ph2
signal sh2
signal prtrasiz
signal srtrasiz
signal prder2
signal srder2
signal prder
signal srder
signal priz
signal sriz
signal pscreamo
signal psorpresa
signal ssorpresa
signal pcaballo
var r

# Variables
var coca = ["Coca-La"]
var jugo = ["jugo"]
var dialog

var trucos 
# Functions
func _ready():
	r=1
	randomize()
	dialog=Variables.dialogos
	trucos=Variables.lostrucos
	set_process_input(true)
	set_bbcode(dialog[Variables.page])
	set_visible_characters(0)
# warning-ignore:unused_argument
func _input(event):
	if Input.is_action_just_pressed("izquierda") or Input.is_action_just_pressed("derecha"):
		if Input.is_action_pressed("izquierda") && get_visible_characters() == get_total_character_count()+1:
			if Variables.page==17:
				Variables.page=25
				Variables.frgeneral=19
			if Variables.page==20:
				Variables.page=25
				Variables.frgeneral=19
			if Variables.page==69:
				dialog[70]="            .                     .                              .                     .                   .                  .                   .                            .                                            .                                             .                                                        .                                                                        .                                                 .         .                                                 .                     .                         .                      .                      .                       .    Quiero jugo"
				Variables.seleccion=["jugo"]
			if Variables.page==88:
				Variables.page=91
				Variables.frgeneral=75
		elif Input.is_action_pressed("derecha")  && get_visible_characters() == get_total_character_count()+1:
			if Variables.page==10:
				Variables.page=29
				Variables.frgeneral=23
			if Variables.page==32:
				Variables.page=34
				Variables.frgeneral=28
			if Variables.page==62:
				Variables.page = 94
				Variables.frgeneral=78
			if Variables.page==69:
				dialog[70]="            .                     .                              .                     .                   .                  .                   .                            .                                            .                                             .                                                        .                                                                        .                                                 .         .                                                 .                     .                         .                      .                      .                       .    Quiero Coca-La"
				Variables.seleccion=["coca"]
			if Variables.page==109:
				Variables.page = 111
				Variables.frgeneral=93
			if Variables.page==151:
				Variables.page = 154
				Variables.frgeneral=134
		if Variables.page == 1 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("sfinal")
			emit_signal("pfiltro1")
			emit_signal("ssorpresa")
			r=1
			dialog[166] = "Felicidades por sobrevivir, desbloqueaste el truco:                                                            "
		if (Variables.page == 24 or Variables.page == 90 or Variables.page == 167 )&& get_visible_characters() == get_total_character_count()+1:
			Variables.page = 0
			emit_signal("sriz")
			emit_signal("palgulag")
			emit_signal("sacarfondo")
			set("custom_colors/default_color", Color(1,1,1,1))
			dialog=Variables.dialogos
		if Variables.page == 28 && get_visible_characters() == get_total_character_count()+1:
			Variables.page = 56
			Variables.frgeneral = 46
		if Variables.page == 33 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("scamion")
			Variables.page = 31
			Variables.frgeneral = 25
		if Variables.page ==93 && get_visible_characters() == get_total_character_count()+1:
			Variables.page = 125
			Variables.frgeneral = 106
		if Variables.page == 32 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("pcamion")
		if Variables.page == 4 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("sfiltro1")
			emit_signal("ph1")
		if Variables.page == 19 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("prder")
		if Variables.page == 20 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("prder2")
			emit_signal("srder")
		if Variables.page == 21 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("prtrasiz")
			emit_signal("srder2")
		if Variables.page == 22 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("priz")
			emit_signal("srtrasiz")
		if (Variables.page == 23 or Variables.page == 89) && get_visible_characters() == get_total_character_count()+1:
			emit_signal("pscreamo")
			emit_signal("scuchillo")
		if Variables.page == 57 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("ph2")
		if (Variables.page == 74 or Variables.page == 99) && get_visible_characters() == get_total_character_count()+1:
			emit_signal("sh2")
		if Variables.page == 77 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("psorpresa")
		if Variables.page == 26 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("srder")
			emit_signal("priz")
		if Variables.page == 57 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("sriz")
		if Variables.page == 82 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("ssorpresa")
		if Variables.page == 101 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("ppajaritos")
		if Variables.page == 113 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("ssorpresa")
		if Variables.page == 126 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("ph4")
		if Variables.page == 142 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("sh4")
			emit_signal("psorpresa")
		if Variables.page == 147 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("ssorpresa")
		if Variables.page == 151 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("pcuchillo")
		if Variables.page == 154 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("pfinal")
		if Variables.page == 88 or Variables.page == 91:
			emit_signal("sfiltro1")
		if (Variables.page >= 6 && Variables.page<=41 or Variables.page >= 46 && Variables.page<= 55 or Variables.page>=58 && Variables.page<=61 or Variables.page>=64 && Variables.page<=81 or Variables.page>=84 && Variables.page <=97 or Variables.page>=100 &&Variables.page <=123 or Variables.page>=126 && Variables.page <= 164) && get_visible_characters() == get_total_character_count()+1:
			emit_signal("pasarpag")
			emit_signal("sacarfondo")
		if Variables.page >= 6 && Variables.page <=55 or Variables.page>=58 && Variables.page<=62 or Variables.page>=65 && Variables.page<=80 or Variables.page >=83 && Variables.page<=97 or Variables.page >=99 && Variables.page<=123 or Variables.page>=125 && Variables.page<=164:
			set("custom_colors/default_color", Color(0,0,0,1))
		if Variables.page>=55 && Variables.page<=57 or Variables.page>=63 && Variables.page<=64 or Variables.page>=82 && Variables.page <=83 or Variables.page>=99 && Variables.page<=100 or Variables.page>=124 && Variables.page<=125 or Variables.page >=165:
			set("custom_colors/default_color", Color(1,1,1,1))
			emit_signal("ponerfondo")
		if (Variables.page ==14 or Variables.page==41)&& get_visible_characters() == get_total_character_count()+1:
			emit_signal("sh1")
		if Variables.page ==15 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("sacararbol")
			emit_signal("ponercam1")
			set_process_input(false)
		if Variables.page ==104 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("sacararbol")
			emit_signal("ponercam2")
			set_process_input(false)
		if Variables.page==164 && r==1:
			dialog[166]+=trucos[randi() % trucos.size()]
			r+=1
		if Variables.page ==43 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("pcaballo")
		if Variables.page == 103 && get_visible_characters() == get_total_character_count()+1:
			emit_signal("spajaritos")
			emit_signal("ppinta")
			emit_signal("sacararbol")
			emit_signal("jugar")
			emit_signal("ponercontroles")
			set_process_input(false)
		if (Variables.page == 14 or Variables.page == 104)&& get_visible_characters() == get_total_character_count()+1:
			emit_signal("ponerfar")
		if (Variables.page == 16 or Variables.page ==105)&& get_visible_characters() == get_total_character_count()+1:
			emit_signal("sacarfar")
		if (Variables.page==153 or Variables.page==110)&& get_visible_characters() == get_total_character_count()+1:
			Variables.page=89
			Variables.frgeneral=73
			emit_signal("pscreamo")
		if get_visible_characters() > get_total_character_count():
			if Variables.page < dialog.size()-1:
				Variables.page += 1
				set_bbcode(dialog[Variables.page])
				set_visible_characters(0)
		else:
			set_visible_characters(get_total_character_count())



func _on_tiempo1_timeout():
	if get_visible_characters() <= get_total_character_count():
		set_visible_characters(get_visible_characters()+1)



func _on_CAMARA1_listoco():
	set_process_input(true)
	show()


func _on_CAMARA2_listoco2():
	set_process_input(true)
	show()



func _on_ponys_ganar():
	set_process_input(true)
	show()
