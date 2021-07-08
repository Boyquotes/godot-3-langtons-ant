extends Camera2D

func _input(_event):
	
	if Input.is_action_just_pressed("up"):
		zoom.x -= 0.5
		zoom.y -= 0.5
		
	elif Input.is_action_just_pressed("down"):
		zoom.x += 0.5
		zoom.y += 0.5
