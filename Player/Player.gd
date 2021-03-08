extends Node2D

var speed = 160

func _physics_process(delta):
	
	if Input.is_action_just_pressed("mouse_left"):
		
		if get_global_mouse_position().x > $Head.global_position.x:
			$LeftUnderLeg.apply_central_impulse(Vector2(speed, 0))
			$LeftUnderArm.apply_central_impulse(Vector2(speed*1.5, 0))
			
		if get_global_mouse_position().x < $Head.global_position.x:
			$RightUnderLeg.apply_central_impulse(Vector2(-speed, 0))
			$RightUnderArm.apply_central_impulse(Vector2(-speed*1.5, 0))
			
		if $LeftUnderLeg.global_position.y > 672:
				$Head.apply_central_impulse(Vector2(0, -300))
				$Torso.apply_central_impulse(Vector2(0, -300))
				$RightLeg.apply_central_impulse(Vector2(0, -300))
				$LeftLeg.apply_central_impulse(Vector2(0, -300))
