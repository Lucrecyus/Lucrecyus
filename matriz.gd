extends GridContainer

var total = 60
var number=[]
var cardnum

func _ready():
	
	for i in range(total):
		number.append(i + 1)

	randomize()

	for i in range(total):
		
		var new_val = number[i]
		var new_idx = int(rand_range(i, total))
		
		number[i] = number[new_idx]
		number[new_idx] = new_val
	
	$TextureRect/Label.set_text(String(number[1]))
	$TextureRect2/Label.set_text(String(number[2]))
	$TextureRect3/Label.set_text(String(number[3]))
	$TextureRect4/Label.set_text(String(number[4]))
	$TextureRect5/Label.set_text(String(number[5]))
	$TextureRect6/Label.set_text(String(number[6]))
	$TextureRect7/Label.set_text(String(number[7]))
	$TextureRect8/Label.set_text(String(number[8]))
	$TextureRect9/Label.set_text(String(number[9]))

func _process(_delta):
	if number[1] == CardNumber.card:
		CardNumber.bingo = true
		$TextureRect.modulate = Color(10,8,8)
	if number[2] == CardNumber.card:
		CardNumber.bingo = true
		$TextureRect2.modulate = Color(10,8,8)
	if number[3] == CardNumber.card:
		CardNumber.bingo = true
		$TextureRect3.modulate = Color(10,8,8)
	if number[4] == CardNumber.card:
		CardNumber.bingo = true
		$TextureRect4.modulate = Color(10,8,8)
	if number[5] == CardNumber.card:
		CardNumber.bingo = true
		$TextureRect5.modulate = Color(10,8,8)
	if number[6] == CardNumber.card:
		CardNumber.bingo = true
		$TextureRect6.modulate = Color(10,8,8)
	if number[7] == CardNumber.card:
		CardNumber.bingo = true
		$TextureRect7.modulate = Color(10,8,8)
	if number[8] == CardNumber.card:
		CardNumber.bingo = true
		$TextureRect8.modulate = Color(10,8,8)
	if number[9] == CardNumber.card:
		CardNumber.bingo = true
		$TextureRect9.modulate = Color(10,8,8)
