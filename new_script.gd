extends Node
var rng = RandomNumberGenerator.new()

func _ready():
	var P1health = 100
	var P2health = 100
	while P1health >= 0 and P2health >= 0:
		rng.randomize()
		var P1dealdmg = rng.randi_range(8,15)
		var P2dealdmg = rng.randi_range(8,15)
		P1health-=P2dealdmg
		P2health-=P1dealdmg
		print("P1 Damage to P2: %s, P2 Health: %s" % [P1dealdmg, P2health])
		print("P2 Damage to P1: %s, P1 Health: %s" % [P2dealdmg, P1health])
	if P1health <= 0:
		print("P2 wins")
	elif P2health <= 0:
		print("P1 wins")
	else: 
		print("viik")
	print("game over")
