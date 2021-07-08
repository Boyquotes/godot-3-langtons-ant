extends CanvasLayer
var ants = 0

func _ready():
	$Control/VBoxContainer/HBoxContainer3/Label.set_text("Ants: "+str(ants))

func updateAnt():
	$Control/VBoxContainer/HBoxContainer3/Label.set_text("Ants: "+str(ants))
