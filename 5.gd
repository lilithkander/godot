extends Node
var rng = RandomNumberGenerator.new()
var minuvalik 
var valikud = ["kivi", "paber", "kaarid"]
func _ready():
	rng.randomize()
	var arvutivalik = rng.randi_range(0,2)
	print(arvutivalik)

func _on_kivi_pressed():
	minuvalik = "kivi"

func _on_paber_pressed():
	minuvalik = "paber" 

func _on_kaarid_pressed():
	minuvalik = "kaarid"

func _on_reset_pressed():
	get_tree().reload_current_scene()
	
#func _process(_delta):
#	print(minuvalik)
