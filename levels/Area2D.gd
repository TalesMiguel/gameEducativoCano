extends Area2D

onready var path_follow = get_parent()
export var _speed = 5
export var set_bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in get_children():
		i.set_physics_process(false)


func _process(delta):
	set_process(set_bool)
	if set_bool:
		for i in get_children():
			i.set_physics_process(true)


func andar():
	set_bool = true


func _physics_process(delta):
	path_follow.set_offset(path_follow.get_offset() + _speed + delta)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
