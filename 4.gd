extends Node
var rng = RandomNumberGenerator.new()
var enemyhealth = 100
var mag = 5
var score = 0
	
func _ready():
	$taust/gameover.text = ""
func _process(delta):
	$taust/ammo.text = "Ammo: %s" % mag
	if enemyhealth < 0:
		enemyhealth = 0
	$taust/health.text = "Health: %s" % enemyhealth
	if Input.is_action_just_pressed("shooting"):
		if enemyhealth > 0:
			shooting()
		else:
			$taust/gameover.text = "Game over"
			get_tree().paused = true
	if Input.is_action_just_pressed("reloading"):
		reloading()
func shooting():
	$taust/tegevus.text = "piupiu"
	rng.randomize()
	var damage = rng.randi_range(8,15)
	if mag > 0:
		if bool(randi() %2):
			enemyhealth -= damage
		else:
			print("Möödas")
		mag -= 1
		print("Padruneid salves: %s" % [mag])
	else:
		print("click click click")
	print(enemyhealth)

func reloading():
	$taust/tegevus.text = "laen"
	print("laen")
	mag = 5
	print("Padruneid salves: %s" % [mag])
