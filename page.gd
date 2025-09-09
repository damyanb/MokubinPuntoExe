# DialogBox.gd
extends RichTextLabel

var arreglo = [""]


# Functions
func _ready():
	set_process_input(true)
	set_bbcode(Variables.page[0])
	set_visible_characters(get_total_character_count())


