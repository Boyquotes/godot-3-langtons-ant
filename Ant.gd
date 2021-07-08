extends Area2D

export(float) var inbetweenTime = 0.1
export(int) var tile_size = 32
var cells = 0

#Colors
export var AntColor = Color8(0,0,0)
var tile = null

var input = {
	"right": Vector2.RIGHT, 
	"left": Vector2.LEFT,
	"up": Vector2.UP,
	"down": Vector2.DOWN}



func _ready():
	$cube.modulate = AntColor
	get_parent().connect("time", self, "time")
	get_parent().connect("color", self, "color")
	$Timer.set_wait_time(inbetweenTime)
	get_node("../Debug").ants += 1

func color():
	randomize()
	modulate = Color8(randi()%255+1, randi()%255+1, randi()%255+1)

func time(set):
	if set == 0:
		$Timer.wait_time -= 0.01
	elif set == 1:
		$Timer.wait_time += 0.01

func _move():
	var oo = tile.world_to_map(global_position)
	var tls = tile.get_cellv(oo)
	if tls == 0:
		rotation_degrees += 90
		tile.set_cellv(oo,1)
	elif tls == 1:
		rotation_degrees -= 90
		tile.set_cellv(oo,0)
	else:
		get_node("../Debug").ants -= 1
		get_node("../Debug").updateAnt()
		print(str(name)+" says goodbye!")
		queue_free()
		
	get_parent().cells += 1
	get_node("../Debug").get_node("Control/VBoxContainer/HBoxContainer/Label").set_text("Cells: "+str(get_parent().cells))
	global_position = $Area2D.global_position

func _moving():#Each half-second moves. Can be changed.
	_move()
	pass # Replace with function body.


func tileCheck(body):
	if body.name == "Tiles":
		tile = body
	pass # Replace with function body.
