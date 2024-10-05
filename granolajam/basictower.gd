extends CharacterBody2D

var enemyInRange = false
var enemy 

func _physics_process(delta: float) -> void:
	#look_at(get_global_mouse_position())
	if(enemy):
		look_at(enemy.position)
		pass

func _on_range_body_entered(body: Node2D) -> void:
	enemy = body


func _on_range_body_exited(body: Node2D) -> void:
	enemy = null
