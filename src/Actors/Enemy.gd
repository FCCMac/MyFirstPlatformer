extends Actor

export var score: = 100

func _ready():
	_velocity.x = -speed.x
	set_physics_process(false)
	
func _on_StompDetector_body_entered(body):
	if body.global_position.y > get_node("StompDetector").global_position.y:
		return
		
	get_node("CollisionShape2D").disabled = true
	die()


func _physics_process(delta):
	if is_on_wall():
		_velocity.x *= -1.0
		
	_velocity.y += gravity * delta
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y


func die() -> void:
	PlayerData.score += score
	queue_free()

