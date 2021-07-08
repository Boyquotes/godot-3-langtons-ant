extends Node2D
#Langton's ant is a two-dimensional universal Turing machine with a very simple set of rules
#It was invented by Chris Langton in 1986 and runs on a square lattice of black and white cells.

#RULES:
#Squares on a plane are colored variously either black or white.
#We arbitrarily identify one square as the "ant".
#The ant can travel in any of the four cardinal directions at each step it takes

#The ant moves according to the rules:
#At a white square, turn 90° clockwise, flip the color of the square, move forward one unit
#At a black square, turn 90° counter-clockwise, flip the color of the square, move forward one unit

#Here's some code, but nothing related too much about the ant.

var cells = 0
signal time()
signal color

func _ready():
	$Debug/Control/VBoxContainer/HBoxContainer2/Label.set_text("Speed: "+str($Ant/Timer.wait_time))
	if OS.is_debug_build():
		OS.alert("The game can take a long time to load depending in how much tiles you decided to generate, you can always change the amount in the Tiles Node.")
	else:
		OS.alert("The game may will take a time to load depending on the amount of tiles generated. Pls be patient. :)")


func _input(_event):
	
	if Input.is_action_just_pressed("r"):
		emit_signal("color")
	
	if Input.is_action_just_pressed("left"):
		if $Ant/Timer.wait_time == 0:
			print("The time can't be decreased less than 0")
			return
		emit_signal("time", 0)
		$Debug/Control/VBoxContainer/HBoxContainer2/Label.set_text("Speed: "+str($Ant/Timer.wait_time))
	elif Input.is_action_just_pressed("right"):
		if $Ant/Timer.wait_time == 0.5:
			print("The time can't be increased more than .5")
			return
		emit_signal("time", 1)
		$Debug/Control/VBoxContainer/HBoxContainer2/Label.set_text("Speed: "+str($Ant/Timer.wait_time))
