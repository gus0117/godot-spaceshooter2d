extends Node2D
# TUTORIAL https://www.youtube.com/watch?v=sAAVcPFO3qc&list=LL&index=2&t=2s
var bullet_scene = preload("res://Bullet/bullet.tscn")
export var fire_type : int = 2
# 1 Normal
# 2 Shotgun


func fire():
	if fire_type == 1:
		var bullet = bullet_scene.instance()
		bullet.direction = $Position2D.global_position - global_position
		bullet.position = $Position2D.global_position
		bullet.rotation = $Position2D.global_rotation
		get_tree().get_root().add_child(bullet)
	elif fire_type == 2:
		var bullet = bullet_scene.instance()
		bullet.direction = $Position2D.global_position - global_position
		bullet.position = $Position2D.global_position
		bullet.rotation = $Position2D.global_rotation
		get_tree().get_root().add_child(bullet)
		
		var bullet2 = bullet_scene.instance()
		bullet2.direction = $Position2D2.global_position - global_position
		bullet2.position = $Position2D2.global_position
		bullet2.rotation = $Position2D2.global_rotation
		get_tree().get_root().add_child(bullet2)
		
		var bullet3 = bullet_scene.instance()
		bullet3.direction = $Position2D3.global_position - global_position
		bullet3.position = $Position2D3.global_position
		bullet3.rotation = $Position2D3.global_rotation
		get_tree().get_root().add_child(bullet3)
	
func _physics_process(delta):
	look_at(get_global_mouse_position())
	
	if Input.is_action_just_pressed("ui_fire"):
		fire()
