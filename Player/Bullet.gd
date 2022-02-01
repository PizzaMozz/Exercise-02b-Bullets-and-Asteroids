extends KinematicBody2D

var velocity = 0
var speed = 500
var damage = 1

func _ready():
	velocity = Vector2(0, -speed).rotated(rotation)

func _physics_process(delta):
	velocity - move_and_slide(velocity, Vector2.UP)

func _on_Timer_timeout():
	queue_free()
	
func _on_Area2D_body_entered(body):
	queue_free()
