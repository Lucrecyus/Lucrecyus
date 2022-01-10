extends Node2D


const BALL = preload("res://scenes/Ball.tscn")
var max_balls = 0
var pause = true
var finish = false
var reset

func _ready():
	get_tree().set_pause(true)
	$Control/Start.text = ("START")
	
func _process(_delta):
	
	if CardNumber.completeBingo == 9:
		$Anim.play("modulate")
		$Timer.stop()
		finish = true
		pause = true
		$Control/Start.text = ("RESET")
	
	if max_balls == 30:
		
		$Timer.stop()
		finish = true
		pause = true
		$Control/Start.text = ("RESET")
		

func _on_Timer_timeout():
		CardNumber.bingo = false
		$ball.play()
		var ball = BALL.instance()
		get_parent().add_child(ball)
		ball.position = $Position2D.global_position
		max_balls +=1
		$balls.set_text(String(max_balls))
	

func _on_Start_pressed():
	if pause and !finish:
		$Timer.start()
		CardNumber.timer.start()
		pause = false
		get_tree().set_pause(false)
	elif !pause and !finish:
		$Timer.stop()
		CardNumber.timer.stop()
		pause = true
		get_tree().set_pause(true)
	if finish:
		$Timer.stop()
		CardNumber.timer.stop()
		CardNumber.contador = 0
		CardNumber.completeBingo = 0
		reset = get_tree().reload_current_scene()
		
		
func _on_Clear_body_entered(body):
	
	body.clear()


func _on_playsound_body_entered(body):
	body.playsound()
