extends Area2D

signal life_changed(player_hears)

var max_hearts: int = 3
var hearts: float = max_hearts

var canos: Array


#var respostas = load("res://respostas.gd").new()


func _ready():
	pass # Replace with function body.


func tentar_solucao():
#	var respostas = get_node("Level1").respostas_level1
#	print(respostas)


	# compara o dict de canos + valores esperados com o nó da chave (cano) e o valor atual
#	$respostas.respos
	if valid_solution():
		hearts -= 0.5
		emit_signal("life_changed", hearts)
		if hearts <= 0:
			return game_over()
	else:
		return vitoria()


func vitoria():
	var current_scene_file = get_tree().current_scene.filename
	var next_level_number = current_scene_file.to_int() + 1
	if next_level_number != 4:
		var next_level_path = "res://levels/level" + str(next_level_number) + ".tscn"
		return get_tree().change_scene(next_level_path)
	
	return get_tree().change_scene_to_file("res://levels/level/vitoria.tscn")
		

#func _process(delta):
#	pass

func game_over():
	pass

func valid_solution():
	false


func _on_trigger_button_pressed():
	tentar_solucao()
