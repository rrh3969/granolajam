extends Node2D

var enemyInRange = false
var enemy 

func _physics_process(delta: float) -> void:
	if(enemyInRange):
		rotation = enemy.position.angle_to_point(position)
	else:
		pass

func _on_range_body_entered(body: Node2D) -> void:
	enemyInRange = true
	enemy = body


func _on_range_body_exited(body: Node2D) -> void:
	enemyInRange = false
