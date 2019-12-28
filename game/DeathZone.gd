extends Area2D
var Player = preload("res://game/Player.gd")
onready var PlayerStartPosition = get_node("../PlayerStartPosition") as Node2D



func _on_DeathZone_body_entered(body):
	if body is Player:
		var player = get_node("../Player") as Node2D
		player.position = PlayerStartPosition.position
		print("Hello")
		

