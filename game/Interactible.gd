extends Node2D

var Player = preload("res://game/Player.gd")

func _on_body_entered(body: PhysicsBody2D):
	if body is Player:
		queue_free()