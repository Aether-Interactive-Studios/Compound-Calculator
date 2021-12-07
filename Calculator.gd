extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var principal = float($Calculator/Principal.text)
	var units = float($Calculator/Months.text)
	var contribution = float($Calculator/Contribution.text)
	var years = float($Calculator/Years.text)
	
	#user input not need
	var year = 1
	var age = 18
	var gross = 0
	for x in range(years):
		var lastyeargross = gross
		
		print("year ",year)
		gross =((principal+(contribution*units))*pow(1.004,units))-(principal+(contribution*units))
		var contributed = (principal+(contribution*units))
		print("you got this much from investing ",gross,"\n","you contributed this much ",contributed)
		
		var yearly = gross - lastyeargross
		print("you make this much yearly ", yearly)
		print("age is ",age+year)
		$Calculator/Console.text = "age is " + str(age+year)
		
		$Calculator/Console.text += str("\nyou got this much from investing ",gross,"\n","you contributed this much ",contributed)
		units+=12
		year+=1
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Calculate_pressed():
	_ready()
	pass # Replace with function body.
