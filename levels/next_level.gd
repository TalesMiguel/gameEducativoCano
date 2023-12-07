extends Node2D

signal life_changed(player_hears)

var max_hearts: int = 3
var hearts: float = max_hearts

var canos: Array

func _ready():
	pass # Replace with function body.

func tentar_solucao(cano):
	if check_error(cano):
		hearts -= 0.5
		emit_signal("life_changed", hearts)
		if hearts <= 0:
			return game_over()
	else:
		return vitoria()
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func check_error(cano):
	
