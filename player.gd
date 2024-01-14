extends CharacterBody2D

var grav = 6
var speed = 1050
#var pontoDeReferenciaInicial = Vector2(1, 383)
#var pontoDeReferenciaFinal = Vector2(1153, 383)
var direcao = 50

func _process(delta):
	var direcao = Vector2()

	if !is_on_floor():
		velocity.y += grav
	
	if Input.is_action_just_pressed("ui_right"):
		direcao.x += speed
		print(direcao)
		velocity.x += speed
		$"Duck(16x16)".flip_h = false
	
	elif Input.is_action_just_pressed("ui_left"):
		direcao.x -= speed
		velocity.x -= speed
		$"Duck(16x16)".flip_h = true
	else:
		velocity.x = 0
	
	if is_on_floor() and Input.is_action_just_pressed("ui_up"):
		velocity.y -= 320
	
	move_and_slide()
	
