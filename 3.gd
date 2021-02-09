extends Node
var punktid = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]

func _ready():
	pass
	print("tasu: ",tasu(42,4))
	print("keskmine: ",keskmine(punktid))
	print(all(punktid))
	print(hinded(punktid))
	
func tasu(tunnid, tunnitasu):
	var tasu 
	if tunnid <= 40:
		tasu = tunnitasu*tunnid
	else:
		tasu = 40*tunnitasu+(tunnid-40)*1.5*tunnitasu
	return tasu

func keskmine(n):
	var kokku = n.size()
	var zero = 0
	for x in n:
		zero = zero + x
	var keskmine = zero/kokku
	return keskmine

func all(n):
	for x in n:
		print(x)

func hinded(n):
	for x in n:
		if x >= 90:
			print("5 - ",x,"p")
		elif x >= 75:
			print("4 - ",x,"p")
		elif x >= 50:
			print("3 - ",x,"p")
		else: 
			print("2 - ",x,"p")
