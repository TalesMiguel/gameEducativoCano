extends Sprite
export var states = [0, 1, 2, 3]

func _input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == BUTTON_LEFT:
		if get_rect().has_point(to_local(event.position)):
			rotation_degrees += 90
			if event.states == 3:
				event.states = 0
			else:
				event.states += 1
			# tem que colocar aqui que o cano mudou o estado


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
