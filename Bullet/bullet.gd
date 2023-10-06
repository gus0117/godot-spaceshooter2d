extends Area2D

var direction : Vector2 = Vector2.RIGHT
var speed : float = 400

func _process(delta):
	#Se normaliza para obtener solo la direction y no la magnitud
	translate(direction.normalized() * speed * delta)



func _on_bullet_body_entered(body):
	#Do damage here
	#Example body.take_damage(50)
	queue_free()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
