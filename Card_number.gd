extends Node

var numbers = []
var total = 60
var cardnum
var card 
var bingo = false
var completeBingo = 0
var contador = 0
var timer

func _ready():
	
	start_game()
	
	
func start_game():	
	timer = Timer.new()
	add_child(timer)
	timer.autostart = true
	timer.wait_time = 3
	timer.connect("timeout", self, "_timeout")

	#criar o array com os números	
	for i in range(total):
		numbers.append(i + 1)

	randomize()
	#embaralhar os números dentro do array
	for i in range(total):
			
		var new_val = numbers[i]
		var new_idx = int(rand_range(i, total))
			
		numbers[i] = numbers[new_idx]
		numbers[new_idx] = new_val


func _timeout():
	
	#pegar os números do array
	contador +=1

	if contador == 1:
		card = numbers[0]
	if contador == 2:
		card = numbers[1]
	if contador == 3:
		card = numbers[2]
	if contador == 4:
		card = numbers[3]
	if contador == 5:
		card = numbers[4]
	if contador == 6:
		card = numbers[5]
	if contador == 7:
		card = numbers[6]
	if contador == 8:
		card = numbers[7]
	if contador == 9:
		card = numbers[8]
	if contador == 10:
		card = numbers[9]
	if contador == 11:
		card = numbers[10]
	if contador == 12:
		card = numbers[11]
	if contador == 13:
		card = numbers[12]
	if contador == 14:
		card = numbers[13]
	if contador == 15:
		card = numbers[14]
	if contador == 16:
		card = numbers[15]
	if contador == 17:
		card = numbers[16]
	if contador == 18:
		card = numbers[17]
	if contador == 19:
		card = numbers[18]
	if contador == 20:
		card = numbers[19]
	if contador == 21:
		card = numbers[20]
	if contador == 22:
		card = numbers[21]
	if contador == 23:
		card = numbers[22]
	if contador == 24:
		card = numbers[23]
	if contador == 25:
		card = numbers[24]
	if contador == 26:
		card = numbers[25]
	if contador == 27:
		card = numbers[26]
	if contador == 28:
		card = numbers[27]
	if contador == 29:
		card = numbers[28]
	if contador == 30:
		card = numbers[29]
		
	if contador >= 31:

		for i in range(total):
			numbers.append(i + 1)

		randomize()
		#embaralhar os números dentro do array
		for i in range(total):
			
			var new_val = numbers[i]
			var new_idx = int(rand_range(i, total))
			
			numbers[i] = numbers[new_idx]
			numbers[new_idx] = new_val

		
