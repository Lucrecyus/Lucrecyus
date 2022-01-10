extends RigidBody2D


var numbers 

func _ready():
	
	numbers = CardNumber.card
	
func _process(_delta):
	if numbers <= 10:
		$Anim.play("blue")
	if numbers >= 11:
		$Anim.play("yellow")
	if numbers >=21:
		$Anim.play("red")
	if numbers >=31:
		$Anim.play("green")
	if numbers >=41:
		$Anim.play("purple")
	if numbers >=51:
		$Anim.play("orange")
			
		
	$Label.set_text(String(numbers))
	$CanvasLayer/Label.set_text(String(numbers))

func clear():
	
	queue_free()


func playsound():
	if CardNumber.bingo == true:
		$ok.play()
		CardNumber.completeBingo += 1
	else:
		$error.play()
