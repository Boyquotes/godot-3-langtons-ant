extends CanvasLayer
var ants = 0

func _ready():
	$Control/VBoxContainer/HBoxContainer3/Label.set_text("Ants: "+str(ants))

func updateAnt():
	if ants == 0:
		print("All ants said goodbye! Hiring new ants...")
		get_tree().reload_current_scene()
		return
	$Control/VBoxContainer/HBoxContainer3/Label.set_text("Ants: "+str(ants))
